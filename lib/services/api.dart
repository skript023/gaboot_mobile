import 'package:gaboot_mobile/services/config.dart';
import 'package:gaboot_mobile/services/response.dart';
import 'package:dio/dio.dart';

class API<T> {
  Future<ResponseAPI<T>> getAPI(String url, T Function( Object? ) fromJson) async {
    print(Config().baseUrl + url);
    final response = await Dio().get(Config().baseUrl + url);
    print("RESPONSE: " + response.toString());
    final data = ResponseAPI<T>.fromJson(response.data, fromJson);
    return data;
  }

  Future<ResponseAPI<T>> postAPI(
      String url, Map<String, dynamic> params) async {
    final response = await Dio().post(Config().baseUrl + url, data: params);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI<T>> patchAPI(
      String url, Map<String, dynamic> params) async {
    final response = await Dio().patch(Config().baseUrl + url, data: params);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  Future<ResponseAPI<T>> deleteAPI(String url) async {
    final response = await Dio().delete(Config().baseUrl + url);
    final data = ResponseAPI<T>.fromJson(response.data, (json) => json as T);
    return data;
  }

  onErrorz(error) {
    print(error);
  }

  /* CONVERT OBJECT TO GET PARAMS */
  searchParam(Map<String, dynamic> dataSearch) {
    String stringParams = "?";

    dataSearch.forEach((key, value) {
      stringParams += '$key=$value&';
    });

    stringParams = stringParams.substring(0, stringParams.length - 1);
    return stringParams;
  }
}
