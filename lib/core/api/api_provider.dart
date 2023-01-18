import 'package:get/get.dart';
import 'package:today_quiz/core/api/base_provider.dart';

class ApiProvider extends BaseProvider{

  // Future<Response> login(String path, LoginModel data){
  //   return post(path, data.toJson());
  // }

  Future<Response> getRecords(String path) {
    return get(path);
  }
}