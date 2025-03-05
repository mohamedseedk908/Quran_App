import 'package:dio/dio.dart';
import 'api_consumer.dart';
import 'package:untitled/core/errors/exception.dart';

class DioConsumer extends ApiConConsumer {
  final Dio dio;

  DioConsumer({
    required this.dio,
  });

  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      hndleDioException(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      hndleDioException(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      hndleDioException(e);
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      hndleDioException(e);
    }
  }
}
