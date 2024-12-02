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

class GoogleSheetsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GoogleSheets',
      apiUrl:
          'https://sheets.googleapis.com/v4/spreadsheets/1tdVjk2UsHCBfkJscN1XZHzbcJ8iy5JPWOl3W5QI1wQE/values/A2:G',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyDhQTTXsz84IasBXr8kWp3LmuTKLaOGfI4",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? valores(dynamic response) => getJsonField(
        response,
        r'''$.values''',
        true,
      ) as List?;
  static List<String>? numeros(dynamic response) => (getJsonField(
        response,
        r'''$.values[:][1]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? nomes(dynamic response) => (getJsonField(
        response,
        r'''$.values[:][0]''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetConfigCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetConfig',
      apiUrl:
          'https://webhook.kodala.com.br/webhook/20637952-fb7b-4733-a996-25e0c641a393',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? mensagem(dynamic response) => (getJsonField(
        response,
        r'''$[:].MENSAGEM''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].STATUS''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].row_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class BaseRowCall {
  static Future<ApiCallResponse> call({
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BaseRow',
      apiUrl:
          'https://api.baserow.io/api/database/rows/table/372796/?user_field_names=true',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token vgQIWFwsgnJ2YRpsR3GQCUyIZXAmtm6f',
      },
      params: {
        'filter__Name__equal': name,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      ) as List?;
}

class AgendarMensagemCall {
  static Future<ApiCallResponse> call({
    String? date = '',
    String? message = '',
    dynamic contactJson,
    String? type = '',
    String? base64 = '',
  }) async {
    final contact = _serializeJson(contactJson);
    final ffApiRequestBody = '''
{
  "date": "$date",
  "name": "Odesclean",
  "message": "$message",
  "numbers": $contact,
  "type": "$type",
  "base64": "$base64"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AgendarMensagem',
      apiUrl:
          'https://webhook.kodala.com.br/webhook/0d1728c9-cc6a-48c6-ad54-7fe7dd25e41a',
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

class ConfigeditCall {
  static Future<ApiCallResponse> call({
    bool? n1,
    bool? n2,
    bool? n3,
    String? m1 = '',
    String? m2 = '',
    String? m3 = '',
    bool? n4,
    bool? n5,
    bool? n6,
    String? m4 = '',
    String? m5 = '',
    String? m6 = '',
    bool? n7,
    String? m7 = '',
  }) async {
    final ffApiRequestBody = '''
[
  {
    "id": "2",
    "active": $n1,
    "value": "$m1"
  },
  {
    "id": "3",
    "active": $n2,
    "value": "$m2"
  },
  {
    "id": "4",
    "active": $n3,
    "value": "$m3"
  },
  {
    "id": "5",
    "active": $n4,
    "value": "$m4"
  },
  {
    "id": "6",
    "active": $n5,
    "value": "$m5"
  },
  {
    "id": "7",
    "active": $n6,
    "value": "$m6"
  },
  {
    "id": "8",
    "active": $n7,
    "value": "$m7"
  }
]''';
    return ApiManager.instance.makeApiCall(
      callName: 'configedit',
      apiUrl:
          'https://webhook.kodala.com.br/webhook/20637952-fb7b-4733-a996-25e0c641a393',
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

class DeletarAgendamentoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final ffApiRequestBody = '''
{
  "id": "$id"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DeletarAgendamento',
      apiUrl:
          'https://webhook.kodala.com.br/webhook/8919ff27-e8f9-4a44-bdfe-0bd5e78a6610',
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
