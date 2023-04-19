import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colour/app_colour.dart';

class InternetExceptionsWidget extends StatefulWidget {
  const InternetExceptionsWidget({Key? key, required this.onPress}) : super(key: key);
  final VoidCallback onPress;

  @override
  State<InternetExceptionsWidget> createState() => _InternetExceptionsWidgetState();
}

class _InternetExceptionsWidgetState extends State<InternetExceptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.15,),
            Icon(Icons.cloud_off,size: 50,color: AppColour.redColor,),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Text("internet_exception".tr,textAlign: TextAlign.center,),
            ),
            SizedBox(height: Get.height * 0.15,),
            InkWell(
              onTap: widget.onPress,
              child: Container(
                height: 44,
                width: 160,
                decoration: BoxDecoration(
                  color: AppColour.primaryColour,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(child: Text("Retry",style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColour.whiteColour)),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
