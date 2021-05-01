import 'package:bytebank/api/interceptors/logging_interceptor.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

final Client client =
    HttpClientWithInterceptor.build(
        interceptors: [LoggingInterceptor()],
        requestTimeout: Duration(seconds: 5)
    );

const String baseUrl = '192.168.93.226:8080';