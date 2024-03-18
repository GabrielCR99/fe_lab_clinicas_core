import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

import 'interceptors/auth_interceptor.dart';

final class RestClient extends DioForNative {
  RestClient({required String baseUrl})
      : super(
          BaseOptions(
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 60),
            baseUrl: baseUrl,
          ),
        ) {
    interceptors.addAll([
      AuthInterceptor(),
      if (kDebugMode) LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  RestClient get auth => this..options.extra['DIO_AUTH_KEY'] = true;

  RestClient get unAuth => this..options.extra['DIO_AUTH_KEY'] = false;
}
