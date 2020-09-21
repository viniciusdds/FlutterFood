import 'package:dio/dio.dart';

import './interceptors/dio_interceptors.dart';

class DioClient {

  Dio _dio;

  DioClient(){
    _dio =  dioInterceptor();
  }

  Future<dynamic> get(String url, Map<String, dynamic> queryParameters) async{
    try{
      final Response response = await _dio.get(url, queryParameters: queryParameters);
      print(response);

    }catch(e){
      print(e.toString());
      throw e;
    }
  }

  Future<dynamic> post(String url, formData, Map<String, dynamic> queryParameters) async{
    try{
      final Response response = await _dio.post(url, data: formData, queryParameters: queryParameters);
      print(response);

    }catch(e){
      print(e.toString());
      throw e;
    }
  }
}