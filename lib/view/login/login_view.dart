import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utils/utils.dart';

import '../../view_models/controller/login_controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginViewModel loginSingController = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"),centerTitle: true,automaticallyImplyLeading: false,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(

                children: [
                  TextFormField(
                    controller: loginSingController.emailController.value,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Enter Your email",
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return Utils.snackBar("Please Enter Your Email", "");
                      }
                      return null;
                    },

                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: loginSingController.passwordController.value,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Your password",
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    child: Text("Log In"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        loginSingController.loginApi();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
