import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'api_constants.dart';

class BaseProvider extends GetConnect{
  @override
  void onInit(){
    httpClient.baseUrl = ApiConstants.baseUrl;

    //set authenticators,responseModifiers,requestModifiers
  }
}