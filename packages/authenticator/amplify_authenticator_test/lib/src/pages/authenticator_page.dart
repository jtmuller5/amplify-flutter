// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator_test/src/finders/authenticated_app_finder.dart';
import 'package:amplify_authenticator_test/src/test_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class AuthenticatorPage {
  AuthenticatorPage({required this.tester});

  final WidgetTester tester;

  Finder get usernameField;
  Finder get bannerFinder => find.byKey(keyAuthenticatorBanner);
  Finder get countrySelectField => find.byKey(keySelectCountryCode);
  Finder get countrySelectDialog => find.byKey(keyCountryDialog);
  Finder get countrySearchField => find.byKey(keyCountrySearchField);
  Finder get signOutButton => find.byKey(keySignOutButton);

  /// Then I see "Username" as an input field
  void expectUsername({
    String label = 'Username',
    bool isPresent = true,
  }) {
    // username field is present
    expect(usernameField, findsOneWidget);
    // login type is "username"
    final usernameFieldHint = find.descendant(
      of: usernameField,
      matching: find.text(label),
    );
    expect(usernameFieldHint, isPresent ? findsOneWidget : findsNothing);
  }

  /// Expects the current step to be [step].
  void expectStep(AuthenticatorStep step) {
    final currentScreen = tester.widget<AuthenticatorScreen>(
      find.byType(AuthenticatorScreen),
    );
    expect(currentScreen.step, equals(step));
  }

  /// Expects the input field [inputField] to show an error text containing
  /// [errorText].
  void expectInputError(Key inputField, String errorText) {
    final finder = find.byKey(inputField);
    expect(finder, findsOneWidget);
    expect(
      find.descendant(
        of: finder,
        matching: find.textContaining(errorText),
      ),
      findsOneWidget,
    );
  }

  /// Expects an error banner containing [errorText].
  Future<void> expectError(String errorText) async {
    await tester.pumpAndSettle();
    expect(bannerFinder, findsOneWidget);
    expect(
      find.descendant(
        of: bannerFinder,
        matching: find.textContaining(errorText),
      ),
      findsOneWidget,
    );
  }

  // Then I am signed in
  Future<void> expectAuthenticated() async {
    await tester.pumpAndSettle();
    expect(authenticatedApp, findsOneWidget);
  }

  Future<void> expectState(AuthState state) async {
    final inheritedBloc =
        tester.widget<InheritedAuthBloc>(find.byKey(keyInheritedAuthBloc));
    if (inheritedBloc.authBloc.currentState != state) {
      await nextBlocEvent(tester);
    }
    expect(inheritedBloc.authBloc.currentState, state);
  }

  /// Then I see User not found banner
  Future<void> expectUserNotFound() async => expectError('User does not exist');

  /// Then I see Invalid code
  Future<void> expectInvalidCode() async =>
      expectError('Invalid code or auth state for the user');

  /// Then I see Username/client id combination not found banner.
  void expectCombinationNotFound() {
    expect(bannerFinder, findsOneWidget);
    final expectCombinationNotFound = find.descendant(
      of: find.byKey(keyAuthenticatorBanner),
      matching: find.textContaining('not found'),
    );
    expect(expectCombinationNotFound, findsOneWidget);
  }

  /// Then I see Invalid verification code
  Future<void> expectInvalidVerificationCode() async {
    await expectError('Invalid verification code provided, please try again.');
  }

  Future<void> selectCountryCode({
    String countryName = 'United States',
    String countryCode = '+1',
  }) async {
    expect(countrySelectField, findsOneWidget);
    await tester.tap(countrySelectField);
    await tester.pumpAndSettle();
    expect(countrySelectDialog, findsOneWidget);
    expect(countrySearchField, findsOneWidget);
    await tester.enterText(countrySearchField, countryName);
    await tester.pumpAndSettle();
    final dialCode = find.descendant(
      of: find.byKey(keyCountryDialog),
      matching: find.textContaining('($countryCode)'),
    );
    expect(dialCode, findsOneWidget);
    await tester.tap(dialCode);
  }

  /// When I click "Sign out"
  Future<void> submitSignOut() async {
    await tester.tap(signOutButton);
    await tester.pumpAndSettle();
  }
}