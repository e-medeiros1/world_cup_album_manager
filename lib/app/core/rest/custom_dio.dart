import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:world_cup_album_manager/app/core/config/env/env.dart';

class CustomDio extends DioForNative {
  CustomDio()
      : super(BaseOptions(
          baseUrl: Env.instance['backend_base_url'] ?? '',
          connectTimeout: 5000,
          receiveTimeout: 60000,
        )) {
    interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }

  CustomDio auth() {
    return this;
  }

  CustomDio unAuth() {
    return this;
  }
}
