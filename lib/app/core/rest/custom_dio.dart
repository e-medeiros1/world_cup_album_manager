import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:world_cup_album_manager/app/core/config/env/env.dart';
import 'package:world_cup_album_manager/app/core/rest/interceptors/auth_interceptor.dart';

class CustomDio extends DioForNative {
  final _authInterceptor = AuthInterceptor();

  CustomDio()
      : super(BaseOptions(
          baseUrl: Env.instance['backend_base_url'] ?? '',
          connectTimeout: 5000,
          receiveTimeout: 60000,
        ));

  CustomDio auth() {
    interceptors.add(_authInterceptor);
    interceptors.add(LogInterceptor(
        requestBody: true, responseBody: true, requestHeader: true));
    return this;
  }

  CustomDio unAuth() {
    interceptors.remove(_authInterceptor);
    return this;
  }
}
