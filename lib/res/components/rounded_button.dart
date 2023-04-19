import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colour/app_colour.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key,
  this.textColor = AppColour.primaryTextColor,
    this.buttonColor =AppColour.primaryTextColor,
    required this.onPress,
    required this.title,
    this.height =60,
    this.width =50,
    this.loading= false,


  }) : super(key: key);

  final bool loading;
  final Color buttonColor,textColor;
  final VoidCallback onPress;
  final double height,width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: loading?  Center(child: CircularProgressIndicator()) : Center(child: Text(title,),),

      ),
    );
  }
}
