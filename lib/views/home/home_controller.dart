import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:today_quiz/core/api/api.dart';

class HomeController extends GetxController{

  final ApiRepository apiRepository;
  HomeController({required this.apiRepository});
  final _title = "".obs;
  String get title => _title.value;

  final _isLoading = false.obs;
  bool get isLoading => _isLoading.value;

  var isCalled = true;

  @override
  InternalFinalCallback<void> get onStart {
    if (isCalled) {
      getRecords();
    }
    isCalled = false;
    return super.onStart;
  }


  getRecords() async{
    print("fetching records");
    _isLoading.value = true;
    var response = await apiRepository.getRecords();
    if(response != null){
      _title.value = response.title.toString();
    }
    _isLoading.value = false;
    print("response is ${response?.title.toString()}");
  }
}