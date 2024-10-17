import 'package:cookr/GlobalWidgets/MyButton.dart';
import 'package:cookr/GlobalWidgets/MyTextField.dart';
import 'package:cookr/Routs/RoutsNames.dart';
import 'package:cookr/UI/MainNavigatonScreen/ProfileScreen/Settings/CancelProScreen.dart';
import 'package:cookr/UTILS/Colors.dart';
import 'package:cookr/UTILS/Textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Settings',
          style: CustomTextStyles.size22w600W,
        ),
        leading: InkWell(
          onTap: (){
            Get.back();
          },

          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Current User name',style: CustomTextStyles.size14w500W,),
                    Text('Alson3344_1',style: CustomTextStyles.size14w500Grey,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(alignment: Alignment.centerRight,child: InkWell(
                  onTap: (){
                    Get.toNamed(RouteNames.changeUserName);
                  },
                  child: Text('Change User name',style: CustomTextStyles.size12w500Blue,)),),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your Email',style: CustomTextStyles.size14w500W,),
                    Text('Alson3344_1@gmail.com',style: CustomTextStyles.size12w500Grey,),

                  ],
                ),
              ),
            ),
            // SizedBox(height: 10,),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //   child: Align(alignment: Alignment.centerRight,child: InkWell(
            //       onTap: (){
            //         Get.toNamed(RouteNames.changeEmail);
            //       },
            //       child: Text('Change Email',style: CustomTextStyles.size12w500Blue,)),),
            // ),
            SizedBox(height: 20,),
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: ListTile(
                leading: Icon(Icons.share_rounded,color: Colors.white,),
                title: Text('Share with a Friend',style: CustomTextStyles.size14w500W,),
                trailing: Icon(Icons.chevron_right,color: Colors.white,),
              ),
            ),
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: ListTile(
                onTap: (){
                  Get.toNamed(RouteNames.credits);
                },
                leading: Icon(Icons.policy,color: Colors.white,),
                title: Text('Credits',style: CustomTextStyles.size14w500W,),
                trailing: Icon(Icons.chevron_right,color: Colors.white,),
              ),
            ),
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: ListTile(
                leading: Icon(Icons.error_outline,color: Colors.white,),
                title: Text('Report an error',style: CustomTextStyles.size14w500W,),
                trailing: Icon(Icons.chevron_right,color: Colors.white,),
              ),
            ),
            SizedBox(height: Get.height*0.1,),
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: ListTile(
                // leading:
                title: Row(
                  children: [
                    Icon(Icons.workspace_premium,color: Colors.white,),
                    SizedBox(width: 20,),
                    Text('Upgrade Plan',style: CustomTextStyles.size14w500W,),
                  ],
                ),
                subtitle: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 30.0,horizontal: Get.width*0.1),
                  child: MyButton(
                    onPress: (){
                    Get.toNamed(RouteNames.upgradeScreen);
                  },width: Get.width*0.5,borderRadios: 10,color: Colors.yellow[700],titleColor: Colors.black,title: 'Try Cookr Pro',),
                ),
                // trailing: Icon(Icons.chevron_right,color: Colors.white,),
              ),
            ),
            // SizedBox(height: Get.height*0.05,),
            Card(
              color: Colors.grey.withOpacity(0.3),
              child: ListTile(
                // leading:
                title: Row(
                  children: [
                    Icon(Icons.workspace_premium,color: Colors.white,),
                    SizedBox(width: 20,),
                    Text('Downgrade Plan',style: CustomTextStyles.size14w500W,),
                  ],
                ),
                subtitle: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 30.0,horizontal: Get.width*0.1),
                  child: MyButton(
                    // isAnimated: false,
                    textStyle: CustomTextStyles.size14w500W.copyWith(color: Colors.black),
                    onPress: (){
                      Get.dialog(CancelProScreen());
                    // Get.toNamed(RouteNames.upgradeScreen);
                  },width: Get.width*0.5,borderRadios: 10,color: Colors.red,titleColor: Colors.black,title: 'I cooked too hard',),
                ),
                // trailing: Icon(Icons.chevron_right,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
