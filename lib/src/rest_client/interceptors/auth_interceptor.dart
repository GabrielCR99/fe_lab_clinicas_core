import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/constants.dart';

final class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    super.onRequest(options, handler);

    final RequestOptions(:headers, :extra) = options;
    headers.remove(HttpHeaders.authorizationHeader);

    if (extra case {'DIO_AUTH_KEY': true}) {
      final sp = await SharedPreferences.getInstance();
      headers[HttpHeaders.authorizationHeader] =
          'Bearer ${sp.getString(accessToken)}';
    }

    return handler.next(options);
  }
}
