
import 'package:get/get.dart';
import 'dart:async';

import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_performance_controller/user_performance_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashServices {


  UserPerformance userPerformance = UserPerformance();

  void isLogin(){

    userPerformance.getUser().then((value) {
      if(value.isLogin == false || value.isLogin.toString() == null){
        Timer(const Duration(seconds: 3),
                ()=> Get.toNamed(RoutesName.loginView)

        );
      }else{
        Timer(const Duration(seconds: 3),
                ()=> Get.toNamed(RoutesName.homeView)

        );
      }
    });

  }

}