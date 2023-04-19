import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/login/login_view.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

class AppRoutes{

  static appRoutes()=> [
    GetPage(name: RoutesName.splashScreen,
        page: ()=> SplashScreen(),
        transitionDuration :Duration(milliseconds: 250),
        transition: Transition.downToUp,
    ),
    GetPage(name: RoutesName.loginView,
      page: ()=> LoginView(),
      transitionDuration :Duration(milliseconds: 250),
      transition: Transition.downToUp,
    )
  ];

}