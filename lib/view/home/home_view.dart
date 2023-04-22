import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_models/controller/user_performance_controller/user_performance_view_model.dart';
import 'package:get/get.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

UserPerformance userPerformance = UserPerformance();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen"),
      actions: [
        IconButton(onPressed: (){
          userPerformance.removeUser().then((value) {
            Get.toNamed(RoutesName.loginView);
          });
        }, icon: Icon(Icons.logout_outlined)
        )
      ],
      ),
    );
  }
}
