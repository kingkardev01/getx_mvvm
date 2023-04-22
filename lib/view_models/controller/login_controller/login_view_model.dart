import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utils/utils.dart';
import 'package:getx_mvvm/view_models/controller/user_performance_controller/user_performance_view_model.dart';

import '../../../models/login_model/user_model.dart';
import '../../../repository/login_repository/login_repository.dart';
import '../../../res/routes/routes_name.dart';

class LoginViewModel extends GetxController{

  final _api =LoginRepository();

  final UserPerformance userPerformance = UserPerformance();

  final emailController = TextEditingController().obs;
  final passwordController =TextEditingController().obs;

  void loginApi(){
    Map data ={
      'email': emailController.value.text,
      'password': passwordController.value.text
    };
    _api.loginApi(data).then((value){
       if(value['error'] == 'user not found'){
         Utils.snackBar('login', value['error']);
       }else{
         UserModel userModel =UserModel(
           token: value['token'],
           isLogin: true
         );
         userPerformance.saveUser(userModel).then((value) {
           Get.toNamed(RoutesName.homeView);
           print(value);

         }).onError((error, stackTrace) {

         });

         Utils.snackBar("Login", "SucessFully");
       }


    }).onError((error, stackTrace) {
      Utils.snackBar("Error ",error.toString());
    });

  }




}