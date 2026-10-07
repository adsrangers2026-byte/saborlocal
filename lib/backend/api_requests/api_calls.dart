import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start cadastro usuario Group Code

class CadastroUsuarioGroup {
  static String getBaseUrl({
    String? cep = '',
    String? rua = '',
    String? numero = '',
    String? name = '',
    String? password = '',
    String? cpf = '',
    String? celular = '',
  }) =>
      'https://x8ki-letl-twmt.n7.xano.io/api:FIPOGBgs';
  static Map<String, String> headers = {};
}

/// End cadastro usuario Group Code

class BuscaCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'buscaCEP',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json',
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

  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class CadastrarCall {
  static Future<ApiCallResponse> call({
    String? celular = '',
    String? cpf = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'cadastrar',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:-mjS3fIU/cliente',
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
}

class GoogleInitCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GoogleInit',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:AbuXvXnq/oauth/google/init',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'redirect_uri':
            "https://x8ki-letl-twmt.n7.xano.io/api:AbuXvXnq/oauth/google/continue",
        'custom_redirect': "saborlocalcopy://://saborlocalcopy.com",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginTesteCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{"email":${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
"password":${senha == null ? 'null' : '"${escapeStringForJson(senha)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login Teste',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:XUXifSXu/auth/login',
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

  static bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.pass_result''',
      ));
  static bool? resultFalse(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.payload''',
      ));
}

class SendgridAPICall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Sendgrid API',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:XUXifSXu/user',
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

class VerifyCodeCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? otp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": ${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
  "otp": ${otp == null ? 'null' : '"${escapeStringForJson(otp)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyCode',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:XUXifSXu/verify',
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

class CadastroCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
    String? nome = '',
    String? telefone = '',
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
"cpf":${cpf == null ? 'null' : '"${escapeStringForJson(cpf)}"'},
"tel":${telefone == null ? 'null' : '"${escapeStringForJson(telefone)}"'},
"name":${nome == null ? 'null' : '"${escapeStringForJson(nome)}"'},
"email":${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
"password":${senha == null ? 'null' : '"${escapeStringForJson(senha)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadastro',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:XUXifSXu/auth/signup',
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

class EnderecoCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
    String? uf = '',
    String? cidade = '',
    String? logradouro = '',
    String? numero = '',
    String? complemento = '',
    String? bairro = '',
    String? clienteId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cep": ${cep == null ? 'null' : '"${escapeStringForJson(cep)}"'},
  "uf": ${uf == null ? 'null' : '"${escapeStringForJson(uf)}"'},
  "cidade": ${cidade == null ? 'null' : '"${escapeStringForJson(cidade)}"'},
  "logradouro": ${logradouro == null ? 'null' : '"${escapeStringForJson(logradouro)}"'},
  "numero": ${numero == null ? 'null' : '"${escapeStringForJson(numero)}"'},
  "complemento": ${complemento == null ? 'null' : '"${escapeStringForJson(complemento)}"'},
  "bairro": ${bairro == null ? 'null' : '"${escapeStringForJson(bairro)}"'},
  "cliente_id":${clienteId == null ? 'null' : '"${escapeStringForJson(clienteId)}"'}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Endereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:RrF0gO4Q/endereco',
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

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class RedefinirSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senhaAtt = '',
  }) async {
    final ffApiRequestBody = '''
{"email":${email == null ? 'null' : '"${escapeStringForJson(email)}"'},
"senhaAtt":${senhaAtt == null ? 'null' : '"${escapeStringForJson(senhaAtt)}"'}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'redefinirSenha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:RrF0gO4Q/redefinirSenha',
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  final encoded = jsonEncode(input);
  return encoded.substring(1, encoded.length - 1);
}
