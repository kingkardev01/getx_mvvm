

import 'package:getx_mvvm/res/app_url/app_url.dart';

import '../../data/network/network_api_services.dart';

class LoginRepository{

  final _apiService = NetworkApiServices();

  Future<dynamic> loginApi(var data)async{
    dynamic response= _apiService.postApi(data, Appurl.loginApi);
    return response;
  }
}