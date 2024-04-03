// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/types/storage/storage_path_from_identity_id.dart';
import 'package:meta/meta.dart';

/// {@template amplify_storage_s3_dart.path_resolver}
/// A class which resolves the full path of the S3 Object.
/// {@endtemplate}
@internal
class S3PathResolver {
  /// {@macro amplify_storage_s3_dart.path_resolver}
  const S3PathResolver({
    required TokenIdentityAmplifyAuthProvider identityProvider,
  }) : _identityProvider = identityProvider;

  final TokenIdentityAmplifyAuthProvider _identityProvider;

  /// Resolve the given [path].
  ///
  /// Returns a string which is the S3 Object Key.
  ///
  /// When [path] is a [StoragePathFromIdentityId], the current user's identity
  /// Id will be fetched in order to build the path.
  Future<String> resolvePath({
    required StoragePath path,
    String? identityId,
  }) async {
    final resolvedPath = switch (path) {
      final StoragePathFromIdentityId p => p.resolvePath(
          identityId: identityId ?? await _identityProvider.getIdentityId(),
        ),
      // ignore: invalid_use_of_internal_member
      _ => path.resolvePath()
    };
    if (resolvedPath.isEmpty) {
      throw const StoragePathValidationException(
        'StoragePath cannot be empty',
      );
    }
    if (resolvedPath.startsWith('/')) {
      throw const StoragePathValidationException(
        'StoragePath cannot start with a leading "/"',
        recoverySuggestion: 'Remove the leading "/" from the StoragePath',
      );
    }
    return resolvedPath;
  }

  /// Resolve multiple [StoragePath] objects.
  ///
  /// This method will only fetch the current user's identityId one time.
  Future<List<String>> resolvePaths({
    required List<StoragePath> paths,
  }) async {
    final requiredIdentityId =
        paths.whereType<StoragePathFromIdentityId>().isNotEmpty;
    final identityId =
        requiredIdentityId ? await _identityProvider.getIdentityId() : null;
    return Future.wait(
      paths.map(
        (path) => resolvePath(
          path: path,
          identityId: identityId,
        ),
      ),
    );
  }
}
