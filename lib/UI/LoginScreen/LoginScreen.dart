import 'package:cookr/GlobalWidgets/MyButton.dart';
import 'package:cookr/GlobalWidgets/MyTextField.dart';
import 'package:cookr/Routs/RoutsNames.dart';
import 'package:cookr/UI/ForgotPasswordScreen/ForgotPasswordScreen.dart';
import 'package:cookr/UI/SignUpScreen/SignUpScreen.dart';
import 'package:cookr/UTILS/Colors.dart';
import 'package:cookr/UTILS/ImgesPaths.dart';
import 'package:cookr/UTILS/Textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         scrolledUnderElevation: 0,
//         centerTitle: true,
//         leading: SizedBox(),
//         title: Text(
//           "Sign in",
//           style: CustomTextStyles.size18w500W,
//         ),
//         bottom: PreferredSize(preferredSize: Size.fromHeight(10), child: Divider(color: MyColors.greyColor3,)),
//       ),
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 // Blue top bar
//                 Center(
//                     child: SvgPicture.asset(
//                   ImagesPaths.logo,
//                 )),
//                 SizedBox(height: 30),
//
//                 // Welcome text
//                 Center(
//                   child: Text(
//                     'Welcome Back !',
//                     style: CustomTextStyles.size18w500W,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//
//                 // Subtext
//                 Center(
//                   child: Text(
//                     'Stay signed in with your account to\nmake searching easier',
//                     textAlign: TextAlign.center,
//                     style: CustomTextStyles.size12w400W,
//                   ),
//                 ),
//                 SizedBox(height: 40),
//
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: MyTextField(
//                     hintText: "Email",
//                     filledColor: MyColors.greyColor3,
//                     // suffixIcon: Icon(Icons.search),
//                     radius: 10,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: MyTextField(
//                     hintText: "Password",
//                     filledColor: MyColors.greyColor3,
//                     suffixIcon: Icon(Icons.visibility),
//                     radius: 10,
//                   ),
//                 ),
//
//                 SizedBox(height: 10),
//
//                 // Keep me signed and forgot password
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Checkbox(
//                           value: false,
//                           onChanged: (value) {},
//                           activeColor: Colors.blueAccent,
//                         ),
//                         Text(
//                           'Keep me signed',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Get.toNamed(RouteNames.forgotPasswordScreen);
//                         // Get.to(ForgotPasswordScreen());
//                       },
//                       child: Text(
//                         'Forgot password?',
//                         style: TextStyle(color: Colors.blueAccent),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Center(
//                   child: MyButton(
//
//                     title: "Sign In",
//                     width: 200,
//                     onPress: () {
//                       Get.offNamedUntil(RouteNames.mainNavigationScreen, (route) => false);
//                     },
//                     titleColor: Colors.white,
//                   ),
//                 ),
//
//                 SizedBox(height: 30),
//                 // Divider with text
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Divider(
//                         color: Colors.white54,
//                         thickness: 1,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                       child: Text(
//                         'Or continue with',
//                         style: CustomTextStyles.size11w400W,
//                       ),
//                     ),
//                     Expanded(
//                       child: Divider(
//                         color: Colors.white54,
//                         thickness: 1,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 30),
//
//                 // Google Sign In button
//                 Center(
//                   child: SizedBox(
//                       width: Get.width * 0.3,
//                       // height: 30,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: MyColors.greyColor3,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(5))),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 10.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SvgPicture.asset(
//                                 ImagesPaths.googleIcon,
//                                 height: 20,
//                                 width: 20,
//                               ),
//                               SizedBox(
//                                 width: 5,
//                               ),
//                               Text(
//                                 'Google',
//                                 style: CustomTextStyles.size14w400,
//                               ),
//                             ],
//                           ),
//                         ),
//                       )),
//                 ),
//                 SizedBox(height: Get.height*0.05,),
//                 Center(
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.toNamed(RouteNames.signUpScreen);
//                       // Get.to(SignupScreen());
//                       // Handle navigation to Sign In screen
//                     },
//                     child: RichText(
//                       text: TextSpan(
//                         text: "Don't have an account? ",
//                         style: CustomTextStyles.size12w400W,
//                         children: [
//                           TextSpan(
//                             text: 'Sign up',
//                             style: TextStyle(
//                               color: Colors.blue,
//                               decoration: TextDecoration.underline,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.black, // Adjust to match the screenshot background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * 0.1),
            // Firebase logo image
            Center(
                child: SvgPicture.asset(
              ImagesPaths.logo,
                  height: Get.height*0.25,
            )),
            // SizedBox(height: Get.height * 0.05),

            // FlutterFire Authentication Text
            Text('Ready to Cook?',
                style: TextStyle(
              fontFamily: 'HankenGrotesk',
              fontWeight: FontWeight.bold, // Optional for bold
              fontSize: 30,
                  color: Colors.white
            ),),
            SizedBox(height: Get.height * 0.02),
            // Center(
            //   child: Text(
            //     'Stay signed in with your account to\nmake searching easier',
            //     textAlign: TextAlign.center,
            //     style: CustomTextStyles.size12w400W,
            //   ),
            // ),
            SizedBox(height: Get.height * 0.2),
            MyButton(

                width: 200,
                titleColor: Colors.black,
                color: Colors.white,
                prefixWidget: Image.asset(
                  'assets/icons/googleIcon.png', // Replace with your Google logo path
                  height: 24,
                ),
                title: 'Sign in with Google',
                onPress: () {
                  // SystemSound.play(SystemSoundType.click);
                  Get.offNamedUntil(RouteNames.mainNavigationScreen, (route) => false);
                }),

            // Google Sign-in Button
            // ElevatedButton.icon(
            //   onPressed: () {
            //     Get.offNamedUntil(RouteNames.mainNavigationScreen, (route) => false);
            //     // Add your sign-in logic here
            //   },
            //   icon:
            //   label: Text('Sign in with Google'),
            //   style: ElevatedButton.styleFrom(
            //     foregroundColor: Colors.black, backgroundColor: Colors.white,
            //     minimumSize: Size(200, 50), // Adjust the size as needed
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(30),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
