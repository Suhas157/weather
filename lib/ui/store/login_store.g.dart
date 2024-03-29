// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  late final _$weatherResponseAtom =
      Atom(name: '_LoginStoreBase.weatherResponse', context: context);

  @override
  WeatherResponse? get weatherResponse {
    _$weatherResponseAtom.reportRead();
    return super.weatherResponse;
  }

  @override
  set weatherResponse(WeatherResponse? value) {
    _$weatherResponseAtom.reportWrite(value, super.weatherResponse, () {
      super.weatherResponse = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_LoginStoreBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$weatherAsyncAction =
      AsyncAction('_LoginStoreBase.weather', context: context);

  @override
  Future<dynamic> weather(dynamic lat, dynamic long) {
    return _$weatherAsyncAction.run(() => super.weather(lat, long));
  }

  @override
  String toString() {
    return '''
weatherResponse: ${weatherResponse},
errorMessage: ${errorMessage}
    ''';
  }
}
