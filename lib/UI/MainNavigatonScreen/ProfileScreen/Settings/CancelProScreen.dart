import 'package:cookr/GlobalWidgets/MyButton.dart';
import 'package:cookr/UTILS/Textstyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CancelProScreen extends StatelessWidget {
  const CancelProScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20,),
          Text('Are you sure you wanna cancel?',
              style: CustomTextStyles.size16w500W),
          SizedBox(height: 20,),
          Text('f you cancel, you will lose all your perks and get cooked.',
              style: CustomTextStyles.size12w400W,textAlign: TextAlign.center,),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: MyButton(
                  isAnimated: false,
                  onPress: () {
                    Get.back();
                  },
                  width: Get.width * 0.33,
                  height: 45,
                  borderRadios: 10,
                  color: Colors.white,
                  titleColor: Colors.black,
                  title: 'Keep cooking',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0,
                ),
                child: MyButton(
                  isAnimated: false,
                  onPress: () {Get.back();},
                  width: Get.width * 0.33,
                  borderRadios: 10,
                  height: 45,
                  color: Colors.red,
                  titleColor: Colors.white,
                  title: 'Get cooked',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
