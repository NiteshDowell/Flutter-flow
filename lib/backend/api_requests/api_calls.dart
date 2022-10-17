import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MenuDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Menu Data',
      apiUrl: 'http://100059.pythonanywhere.com/api/targeted_population',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class FetchCall {
  static Future<ApiCallResponse> call({
    String? mobile = '',
  }) {
    final body = '''
{
    "cluster": "digitalq",
    "database": "digitalq",
    "collection": "current_order",
    "document": "current_order",
    "team_member_ID": "1140",
    "function_ID": "ABCDE",
    "command": "fetch",
    "field": {
        "mobile": "${mobile}"
    },
    "update_field": {
        "order_nos": 21
    },
    "platform": "bangalore"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'fetch',
      apiUrl: 'http://100002.pythonanywhere.com/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? user = '',
    String? os = '',
    String? device = '',
    String? browser = 'app',
    String? location = '',
    String? time = '',
    String? connection = '',
    String? ip = '',
  }) {
    final body = '''
{
  "Username": "${user}",
  "OS": "${os}",
  "Device": "${device}",
  "Browser": "${browser}",
  "Location": "${location}",
  "Time": "${time}",
  "Connection": "${connection}",
  "IP": "${ip}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://100014.pythonanywhere.com/api/linkbased/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
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
