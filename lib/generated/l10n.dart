// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Demo Dec`
  String get appName {
    return Intl.message(
      'Demo Dec',
      name: 'appName',
      desc: 'Weather App',
      args: [],
    );
  }

  /// `The connection has timed out. Please try again`
  String get connectionTimedOut {
    return Intl.message(
      'The connection has timed out. Please try again',
      name: 'connectionTimedOut',
      desc: '',
      args: [],
    );
  }

  /// `azo_sans_regular`
  String get azo_sans_regular {
    return Intl.message(
      'azo_sans_regular',
      name: 'azo_sans_regular',
      desc: '',
      args: [],
    );
  }

  /// `There are some problems with the connection. Please try again`
  String get connectionProblem {
    return Intl.message(
      'There are some problems with the connection. Please try again',
      name: 'connectionProblem',
      desc: '',
      args: [],
    );
  }

  /// `Invalid credentials`
  String get invalidCredentials {
    return Intl.message(
      'Invalid credentials',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `Response is null`
  String get responseNull {
    return Intl.message(
      'Response is null',
      name: 'responseNull',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Connect timeout`
  String get connectTimeout {
    return Intl.message(
      'Connect timeout',
      name: 'connectTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Receive timeout`
  String get receiveTimeout {
    return Intl.message(
      'Receive timeout',
      name: 'receiveTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Send timeout`
  String get sendTimeout {
    return Intl.message(
      'Send timeout',
      name: 'sendTimeout',
      desc: '',
      args: [],
    );
  }

  /// `Please check internet connection`
  String get pleaseCheckInternetConnection {
    return Intl.message(
      'Please check internet connection',
      name: 'pleaseCheckInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Server error.`
  String get serverError {
    return Intl.message(
      'Server error.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get unknownError {
    return Intl.message(
      'Unknown error',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Server unknown error`
  String get serverUnknownError {
    return Intl.message(
      'Server unknown error',
      name: 'serverUnknownError',
      desc: '',
      args: [],
    );
  }

  /// `Server not found`
  String get serverNotFound {
    return Intl.message(
      'Server not found',
      name: 'serverNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Database exception`
  String get databaseException {
    return Intl.message(
      'Database exception',
      name: 'databaseException',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `+ Add Card`
  String get addCardPlus {
    return Intl.message(
      '+ Add Card',
      name: 'addCardPlus',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get addCard {
    return Intl.message(
      'Add Card',
      name: 'addCard',
      desc: '',
      args: [],
    );
  }

  /// `Select method`
  String get selectMethod {
    return Intl.message(
      'Select method',
      name: 'selectMethod',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get withdraw {
    return Intl.message(
      'Withdraw',
      name: 'withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welComeBack {
    return Intl.message(
      'Welcome back!',
      name: 'welComeBack',
      desc: '',
      args: [],
    );
  }

  /// `Login to continue.`
  String get loginToContinue {
    return Intl.message(
      'Login to continue.',
      name: 'loginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get kConfirm {
    return Intl.message(
      'Confirm',
      name: 'kConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure \n\nYou want to logout?`
  String get kLogoutMsg {
    return Intl.message(
      'Are you sure \n\nYou want to logout?',
      name: 'kLogoutMsg',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure \n\nYou want to delete account?`
  String get kDeleteAccount {
    return Intl.message(
      'Are you sure \n\nYou want to delete account?',
      name: 'kDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email address or mobile number`
  String get kEmptyField {
    return Intl.message(
      'Please enter email address or mobile number',
      name: 'kEmptyField',
      desc: '',
      args: [],
    );
  }

  /// `Please enter country code`
  String get kEnterCountryCode {
    return Intl.message(
      'Please enter country code',
      name: 'kEnterCountryCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter mobile number`
  String get kEnterMobileNumber {
    return Intl.message(
      'Please enter mobile number',
      name: 'kEnterMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid mobile number`
  String get kEnterValidMobileNumber {
    return Intl.message(
      'Please enter valid mobile number',
      name: 'kEnterValidMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid email address`
  String get kEnterValidEmailAddress {
    return Intl.message(
      'Please enter valid email address',
      name: 'kEnterValidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter email address`
  String get kEnterEmailAddress {
    return Intl.message(
      'Please enter email address',
      name: 'kEnterEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter name`
  String get kEnterFirstName {
    return Intl.message(
      'Please enter name',
      name: 'kEnterFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password is not matched`
  String get kConfirmPasswordIsNotMatched {
    return Intl.message(
      'Confirm password is not matched',
      name: 'kConfirmPasswordIsNotMatched',
      desc: '',
      args: [],
    );
  }

  /// `Please enter old password`
  String get kEnterOldPassword {
    return Intl.message(
      'Please enter old password',
      name: 'kEnterOldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get kPleaseEnterPassword {
    return Intl.message(
      'Please enter password',
      name: 'kPleaseEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter confirm password`
  String get kPleaseEnterConfirmPassword {
    return Intl.message(
      'Please enter confirm password',
      name: 'kPleaseEnterConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 1 character for  name`
  String get kEnterValidFirstName {
    return Intl.message(
      'Please enter at least 1 character for  name',
      name: 'kEnterValidFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter last name`
  String get kEnterLastName {
    return Intl.message(
      'Please enter last name',
      name: 'kEnterLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 3 characters for last name`
  String get kEnterValidLastName {
    return Intl.message(
      'Please enter at least 3 characters for last name',
      name: 'kEnterValidLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter password`
  String get kEnterPassword {
    return Intl.message(
      'Please enter password',
      name: 'kEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password should be 8 or more characters`
  String get kEnterValidPassword {
    return Intl.message(
      'Password should be 8 or more characters',
      name: 'kEnterValidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter new password`
  String get kEnterNewPassword {
    return Intl.message(
      'Please enter new password',
      name: 'kEnterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please enter OTP`
  String get kPleaseEnterOtp {
    return Intl.message(
      'Please enter OTP',
      name: 'kPleaseEnterOtp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid OTP`
  String get kPleaseEnterValidOtp {
    return Intl.message(
      'Please enter valid OTP',
      name: 'kPleaseEnterValidOtp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter subject`
  String get kPleaseEnterSubject {
    return Intl.message(
      'Please enter subject',
      name: 'kPleaseEnterSubject',
      desc: '',
      args: [],
    );
  }

  /// `Please enter description`
  String get kPleaseEnterDescription {
    return Intl.message(
      'Please enter description',
      name: 'kPleaseEnterDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Data not found`
  String get dataNotFound {
    return Intl.message(
      'Data not found',
      name: 'dataNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Pick Image`
  String get pickImage {
    return Intl.message(
      'Pick Image',
      name: 'pickImage',
      desc: '',
      args: [],
    );
  }

  /// `Pick Video`
  String get pickVideo {
    return Intl.message(
      'Pick Video',
      name: 'pickVideo',
      desc: '',
      args: [],
    );
  }

  /// `Pick Documents`
  String get pickDocuments {
    return Intl.message(
      'Pick Documents',
      name: 'pickDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Pick Audio`
  String get pickAudio {
    return Intl.message(
      'Pick Audio',
      name: 'pickAudio',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get addNewCard {
    return Intl.message(
      'Add New Card',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your card details`
  String get addNewCardDesc {
    return Intl.message(
      'Please enter your card details',
      name: 'addNewCardDesc',
      desc: '',
      args: [],
    );
  }

  /// `Please enter card number`
  String get enterCardNumber {
    return Intl.message(
      'Please enter card number',
      name: 'enterCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter card name`
  String get enterCardName {
    return Intl.message(
      'Please enter card name',
      name: 'enterCardName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter expiry date`
  String get enterExpiryDate {
    return Intl.message(
      'Please enter expiry date',
      name: 'enterExpiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Please enter cvv`
  String get enterCvv {
    return Intl.message(
      'Please enter cvv',
      name: 'enterCvv',
      desc: '',
      args: [],
    );
  }

  /// `Card is invalid`
  String get numberIsInvalid {
    return Intl.message(
      'Card is invalid',
      name: 'numberIsInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Card Name`
  String get cardName {
    return Intl.message(
      'Card Name',
      name: 'cardName',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get expiryDate {
    return Intl.message(
      'Expiry Date',
      name: 'expiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Cvv`
  String get cvv {
    return Intl.message(
      'Cvv',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Sign In With`
  String get signInWith {
    return Intl.message(
      'Sign In With',
      name: 'signInWith',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Hello!`
  String get hello {
    return Intl.message(
      'Hello!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Forgot?`
  String get forgot {
    return Intl.message(
      'Forgot?',
      name: 'forgot',
      desc: '',
      args: [],
    );
  }

  /// `Don"t have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'Don"t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Fill your below detail to create account`
  String get fillDetails {
    return Intl.message(
      'Fill your below detail to create account',
      name: 'fillDetails',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobNumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confPassword',
      desc: '',
      args: [],
    );
  }

  /// `I agree to `
  String get iAgree {
    return Intl.message(
      'I agree to ',
      name: 'iAgree',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get tNc {
    return Intl.message(
      'Terms & Conditions',
      name: 'tNc',
      desc: '',
      args: [],
    );
  }

  /// ` and `
  String get and {
    return Intl.message(
      ' and ',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy.`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy.',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Password and Confirm password not match`
  String get passwordMismatch {
    return Intl.message(
      'Password and Confirm password not match',
      name: 'passwordMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Please accept $tNc $and $privacyPolicy`
  String get acceptTnC {
    return Intl.message(
      'Please accept \$tNc \$and \$privacyPolicy',
      name: 'acceptTnC',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `2G/3G/4G/5G`
  String get network2g3g4g5g {
    return Intl.message(
      '2G/3G/4G/5G',
      name: 'network2g3g4g5g',
      desc: '',
      args: [],
    );
  }

  /// `Supported`
  String get supported {
    return Intl.message(
      'Supported',
      name: 'supported',
      desc: '',
      args: [],
    );
  }

  /// `urbanist`
  String get urbanist {
    return Intl.message(
      'urbanist',
      name: 'urbanist',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up, it’s  Free`
  String get signUpItsFree {
    return Intl.message(
      'Sign Up, it’s  Free',
      name: 'signUpItsFree',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get hintEnterYourMobileNumber {
    return Intl.message(
      'Enter your mobile number',
      name: 'hintEnterYourMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `mobile number`
  String get mobileNumber {
    return Intl.message(
      'mobile number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `inter`
  String get inter {
    return Intl.message(
      'inter',
      name: 'inter',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// ` & Start playing`
  String get startPlaying {
    return Intl.message(
      ' & Start playing',
      name: 'startPlaying',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get otpVerification {
    return Intl.message(
      'OTP Verification',
      name: 'otpVerification',
      desc: '',
      args: [],
    );
  }

  /// `Please enter OTP to Verify`
  String get pleaseEnterOtpToVerify {
    return Intl.message(
      'Please enter OTP to Verify',
      name: 'pleaseEnterOtpToVerify',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get uploadImage {
    return Intl.message(
      'Upload Image',
      name: 'uploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Choose Avatar`
  String get chooseAvatar {
    return Intl.message(
      'Choose Avatar',
      name: 'chooseAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Akshay Kumar`
  String get akshayKumar {
    return Intl.message(
      'Akshay Kumar',
      name: 'akshayKumar',
      desc: '',
      args: [],
    );
  }

  /// `Earned money`
  String get earnedMoney {
    return Intl.message(
      'Earned money',
      name: 'earnedMoney',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Select Avatar`
  String get selectAvatar {
    return Intl.message(
      'Select Avatar',
      name: 'selectAvatar',
      desc: '',
      args: [],
    );
  }

  /// `Tournament`
  String get tournament {
    return Intl.message(
      'Tournament',
      name: 'tournament',
      desc: '',
      args: [],
    );
  }

  /// `1 to 1`
  String get one_to_one {
    return Intl.message(
      '1 to 1',
      name: 'one_to_one',
      desc: '',
      args: [],
    );
  }

  /// `1 to 1 played`
  String get oneToOnePlayed {
    return Intl.message(
      '1 to 1 played',
      name: 'oneToOnePlayed',
      desc: '',
      args: [],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Top 10`
  String get top10 {
    return Intl.message(
      'Top 10',
      name: 'top10',
      desc: '',
      args: [],
    );
  }

  /// `All Tournaments`
  String get allTournaments {
    return Intl.message(
      'All Tournaments',
      name: 'allTournaments',
      desc: '',
      args: [],
    );
  }

  /// `Create room`
  String get createRoom {
    return Intl.message(
      'Create room',
      name: 'createRoom',
      desc: '',
      args: [],
    );
  }

  /// `Join room with key`
  String get joinRoomWithKey {
    return Intl.message(
      'Join room with key',
      name: 'joinRoomWithKey',
      desc: '',
      args: [],
    );
  }

  /// `Entry Fees will be rs. 30.`
  String get entryFeesWillBeRs30 {
    return Intl.message(
      'Entry Fees will be rs. 30.',
      name: 'entryFeesWillBeRs30',
      desc: '',
      args: [],
    );
  }

  /// `Room key`
  String get roomKey {
    return Intl.message(
      'Room key',
      name: 'roomKey',
      desc: '',
      args: [],
    );
  }

  /// `Tap to copy`
  String get tapToCopy {
    return Intl.message(
      'Tap to copy',
      name: 'tapToCopy',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Which game  do you\nwant to play`
  String get whichGameDoYounwantToPlay {
    return Intl.message(
      'Which game  do you\nwant to play',
      name: 'whichGameDoYounwantToPlay',
      desc: '',
      args: [],
    );
  }

  /// `Tap to edit`
  String get tapToEdit {
    return Intl.message(
      'Tap to edit',
      name: 'tapToEdit',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get activity {
    return Intl.message(
      'Activity',
      name: 'activity',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUs {
    return Intl.message(
      'About Us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Condition`
  String get termsCondition {
    return Intl.message(
      'Terms & Condition',
      name: 'termsCondition',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Add Cash`
  String get addCash {
    return Intl.message(
      'Add Cash',
      name: 'addCash',
      desc: '',
      args: [],
    );
  }

  /// `Total Earn Amount`
  String get totalEarnAmount {
    return Intl.message(
      'Total Earn Amount',
      name: 'totalEarnAmount',
      desc: '',
      args: [],
    );
  }

  /// `Share App`
  String get shareApp {
    return Intl.message(
      'Share App',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `Rate Us`
  String get rateUs {
    return Intl.message(
      'Rate Us',
      name: 'rateUs',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Preference`
  String get preference {
    return Intl.message(
      'Preference',
      name: 'preference',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get myAccount {
    return Intl.message(
      'My Account',
      name: 'myAccount',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get oldPassword {
    return Intl.message(
      'Old Password',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Tournaments`
  String get tournaments {
    return Intl.message(
      'Tournaments',
      name: 'tournaments',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message(
      'Subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Enter Password`
  String get enterPassword {
    return Intl.message(
      'Enter Password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your new password must be different from your previous password.`
  String get kPasswordDescription {
    return Intl.message(
      'Your new password must be different from your previous password.',
      name: 'kPasswordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Please enter name`
  String get kenterCardHolderName {
    return Intl.message(
      'Please enter name',
      name: 'kenterCardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Please accept you are 18+ \nand agree to our T&Cs`
  String get kTermsAndCondition {
    return Intl.message(
      'Please accept you are 18+ \nand agree to our T&Cs',
      name: 'kTermsAndCondition',
      desc: '',
      args: [],
    );
  }

  /// `Please enter card number`
  String get kpleaseEnterCardNumber {
    return Intl.message(
      'Please enter card number',
      name: 'kpleaseEnterCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter expiry date`
  String get kpleaseEnterExp {
    return Intl.message(
      'Please enter expiry date',
      name: 'kpleaseEnterExp',
      desc: '',
      args: [],
    );
  }

  /// `Please enter cvv`
  String get kpleaseEnterCvv {
    return Intl.message(
      'Please enter cvv',
      name: 'kpleaseEnterCvv',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid card number`
  String get kpleaseEnterValidCardNumber {
    return Intl.message(
      'Please enter valid card number',
      name: 'kpleaseEnterValidCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid expiry date`
  String get kpleaseEnterValidExpiryDate {
    return Intl.message(
      'Please enter valid expiry date',
      name: 'kpleaseEnterValidExpiryDate',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid cvv`
  String get kpleaseEnterValidCvv {
    return Intl.message(
      'Please enter valid cvv',
      name: 'kpleaseEnterValidCvv',
      desc: '',
      args: [],
    );
  }

  /// `xxxx xxxx xxxx xxxx`
  String get xxxx {
    return Intl.message(
      'xxxx xxxx xxxx xxxx',
      name: 'xxxx',
      desc: '',
      args: [],
    );
  }

  /// `Won Game`
  String get wonGame {
    return Intl.message(
      'Won Game',
      name: 'wonGame',
      desc: '',
      args: [],
    );
  }

  /// `Total Won Game`
  String get totalWonGame {
    return Intl.message(
      'Total Won Game',
      name: 'totalWonGame',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for Player`
  String get waitingForPlayer {
    return Intl.message(
      'Waiting for Player',
      name: 'waitingForPlayer',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete?`
  String get areYouSureYouWantToDelete {
    return Intl.message(
      'Are you sure you want to delete?',
      name: 'areYouSureYouWantToDelete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get areYouSureYouWantToLogout {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'areYouSureYouWantToLogout',
      desc: '',
      args: [],
    );
  }

  /// `Win Price - 12,000`
  String get winPrice12000 {
    return Intl.message(
      'Win Price - 12,000',
      name: 'winPrice12000',
      desc: '',
      args: [],
    );
  }

  /// `Entry free`
  String get entryFree {
    return Intl.message(
      'Entry free',
      name: 'entryFree',
      desc: '',
      args: [],
    );
  }

  /// `₹30`
  String get rs30 {
    return Intl.message(
      '₹30',
      name: 'rs30',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit?`
  String get kAreYouSureYouWantToExit {
    return Intl.message(
      'Are you sure you want to exit?',
      name: 'kAreYouSureYouWantToExit',
      desc: '',
      args: [],
    );
  }

  /// `Login Now`
  String get loginNow {
    return Intl.message(
      'Login Now',
      name: 'loginNow',
      desc: '',
      args: [],
    );
  }

  /// `Top Tournament Leaderboard`
  String get topTournamentLeaderboard {
    return Intl.message(
      'Top Tournament Leaderboard',
      name: 'topTournamentLeaderboard',
      desc: '',
      args: [],
    );
  }

  /// `Day and night Tournament`
  String get dayAndNightTournament {
    return Intl.message(
      'Day and night Tournament',
      name: 'dayAndNightTournament',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong \nPlease try again later.`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong \nPlease try again later.',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum`
  String get dummyLongData {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
      name: 'dummyLongData',
      desc: '',
      args: [],
    );
  }

  /// `santral`
  String get santral {
    return Intl.message(
      'santral',
      name: 'santral',
      desc: '',
      args: [],
    );
  }

  /// `sfpro`
  String get sfpro {
    return Intl.message(
      'sfpro',
      name: 'sfpro',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
