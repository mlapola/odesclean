import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ConectarCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Conectar',
      apiUrl: 'https://evolution.kodala.com.br/instance/connect/Odesclean',
      callType: ApiCallType.GET,
      headers: {
        'apikey': 'lplHLYfFxI9n1zDR8zFFqNq8kVaWqdD2oLpcjVmXBm',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? qr(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class FechInstanceCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'FechInstance',
      apiUrl:
          'https://evolution.kodala.com.br/instance/fetchInstances?instanceName=Odesclean',
      callType: ApiCallType.GET,
      headers: {
        'apikey': 'lplHLYfFxI9n1zDR8zFFqNq8kVaWqdD2oLpcjVmXBm',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].connectionStatus''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profileName''',
      ));
  static String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profilePicUrl''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].token''',
      ));
  static bool? rejectcall(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.rejectCall''',
      ));
  static bool? online(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.alwaysOnline''',
      ));
  static bool? ignore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.groupsIgnore''',
      ));
  static bool? readmessage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.readMessages''',
      ));
  static bool? readstatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.readStatus''',
      ));
  static String? msgCall(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Setting.msgCall''',
      ));
}

class ChangeConfigCall {
  static Future<ApiCallResponse> call({
    bool? rejectCall,
    String? msgCall = '',
    bool? groupsIgnore,
    bool? alwaysOnline,
    bool? readMessages,
    bool? readStatus,
  }) async {
    final ffApiRequestBody = '''
{
  "rejectCall": $rejectCall,
  "msgCall": "$msgCall",
  "groupsIgnore": $groupsIgnore,
  "alwaysOnline": $alwaysOnline,
  "readMessages": $readMessages,
  "syncFullHistory": false,
  "readStatus": $readStatus
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ChangeConfig',
      apiUrl: 'https://evolution.kodala.com.br/settings/set/Odesclean',
      callType: ApiCallType.POST,
      headers: {
        'apikey': 'lplHLYfFxI9n1zDR8zFFqNq8kVaWqdD2oLpcjVmXBm',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].connectionStatus''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profileName''',
      ));
  static String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].profilePicUrl''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].token''',
      ));
  static bool? rejectcall(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.rejectCall''',
      ));
  static bool? online(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.alwaysOnline''',
      ));
  static bool? ignore(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.groupsIgnore''',
      ));
  static bool? readmessage(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.readMessages''',
      ));
  static bool? readstatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].Setting.readStatus''',
      ));
  static String? msgCall(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].Setting.msgCall''',
      ));
}

class DeslogarCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'deslogar',
      apiUrl: 'https://evolution.kodala.com.br/instance/logout/Odesclean',
      callType: ApiCallType.DELETE,
      headers: {
        'apikey': 'lplHLYfFxI9n1zDR8zFFqNq8kVaWqdD2oLpcjVmXBm',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Verify',
      apiUrl:
          'https://evolution.kodala.com.br/instance/connectionState/Odesclean',
      callType: ApiCallType.GET,
      headers: {
        'apikey': 'lplHLYfFxI9n1zDR8zFFqNq8kVaWqdD2oLpcjVmXBm',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.instance.state''',
      ));
}

class DispararCall {
  static Future<ApiCallResponse> call({
    String? list = '',
    String? type = '',
    String? message = '',
    String? base64 = '',
  }) async {
    final ffApiRequestBody = '''
{
  "list": "$list",
  "type": "$type",
  "message": "$message",
  "base64": "$base64"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Disparar',
      apiUrl:
          'https://webhook.kodala.com.br/webhook/89bd9b05-a1cf-45ab-bb4b-38da9dc18ef4',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
