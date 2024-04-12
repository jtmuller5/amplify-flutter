// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:amplify_storage_s3_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/configure.dart';
import 'utils/create_file/create_file.dart';
import 'utils/sign_in_new_user.dart';
import 'utils/tear_down.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('uploadFile()', () {
    setUpAll(() async {
      await configure(amplifyEnvironments['main']!);
    });
    group('for file type', () {
      test('from data', () async {
        final path = 'public/upload-file-from-data-${uuid()}';
        final data = 'from data'.codeUnits;
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });

      test('from path', () async {
        final path = 'public/upload-file-from-path-${uuid()}';
        final data = 'from path'.codeUnits;
        final filePath = await createFile(path, data);
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromPath(filePath),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });

      test('from stream', () async {
        final path = 'public/upload-file-from-stream-${uuid()}';
        final stream = Stream<List<int>>.value([1, 2, 3]);
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromStream(stream, size: 3),
          path: StoragePath.fromString(path),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, [1, 2, 3]);
      });
    });

    test('with identity ID', () async {
      final userIdentityId = await signInNewUser();
      final name = 'upload-file-with-identity-id-${uuid()}';
      final data = 'with identity ID'.codeUnits;
      final expectedResolvedPath = 'private/$userIdentityId/$name';
      addTearDownPath(StoragePath.fromString(expectedResolvedPath));
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromData(data),
        path: StoragePath.fromIdentityId(
          (identityId) => 'private/$identityId/$name',
        ),
      ).result;

      expect(result.uploadedItem.path, expectedResolvedPath);

      final downloadResult = await Amplify.Storage.downloadData(
        path: StoragePath.fromString(expectedResolvedPath),
      ).result;
      expect(downloadResult.bytes, data);
    });

    test('unauthorized path', () async {
      expect(
        () => Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData('unauthorized path'.codeUnits),
          path: const StoragePath.fromString('unauthorized/path'),
        ).result,
        throwsA(isA<StorageAccessDeniedException>()),
      );
    });

    group('with options', () {
      test('metadata', () async {
        final path = 'public/upload-file-with-metadata-${uuid()}';
        final data = 'metadata'.codeUnits;
        const metadata = {'foo': 'bar'};
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadFileOptions(metadata: metadata),
        ).result;
        expect(result.uploadedItem.path, path);

        final propertiesResult = await Amplify.Storage.getProperties(
          path: StoragePath.fromString(path),
        ).result;
        expect(propertiesResult.storageItem.metadata, metadata);
      });

      test('getProperties', () async {
        final path = 'public/upload-file-get-properties-${uuid()}';
        final data = 'getProperties'.codeUnits;
        const metadata = {'foo': 'bar'};
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadFileOptions(
            metadata: metadata,
            pluginOptions: S3UploadFilePluginOptions(getProperties: true),
          ),
        ).result;
        expect(result.uploadedItem.path, path);
        expect(result.uploadedItem.metadata, metadata);
      });

      test('useAccelerateEndpoint', () async {
        final path = 'public/upload-file-acceleration-${uuid()}';
        final data = 'useAccelerateEndpoint'.codeUnits;
        addTearDownPath(StoragePath.fromString(path));
        final result = await Amplify.Storage.uploadFile(
          localFile: AWSFile.fromData(data),
          path: StoragePath.fromString(path),
          options: const StorageUploadFileOptions(
            pluginOptions: S3UploadFilePluginOptions(
              useAccelerateEndpoint: true,
            ),
          ),
        ).result;
        expect(result.uploadedItem.path, path);

        final downloadResult = await Amplify.Storage.downloadData(
          path: StoragePath.fromString(path),
        ).result;
        expect(downloadResult.bytes, data);
      });
    });
  });
}