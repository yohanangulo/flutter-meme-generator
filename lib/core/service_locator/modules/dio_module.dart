import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  Dio get dio {
    final dio = Dio();

    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.contentType = 'application/json';

    return dio;
  }
}
