import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({RequestData data}) async {
    print('Request');
    print('url ${data.toHttpRequest()}');
    print('header ${data.headers}');
    print('body ${data.body}');

    return data;
  }

  @override
  Future<ResponseData> interceptResponse({ResponseData data}) async {
    print('Response');
    print('statusCode ${data.statusCode}');
    print('header ${data.headers}');
    print('body ${data.body}');

    return data;
  }
}