
import 'package:cookr/UTILS/Colors.dart';
import 'package:cookr/UTILS/Textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyButton extends StatefulWidget {
  final VoidCallback onPress;
  final double width;
  final double height;
  final double borderRadios;
  final String title;
  final bool loading;
  final Color? color;
  final Color? titleColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final bool isAnimated; // New flag for enabling/disabling animation
  final Widget? prefixWidget; // New property for the prefix widget

  const MyButton({
    super.key,
    this.loading = false,
    required this.onPress,
    this.title = 'Log In',
    this.height = 40,
    this.width = double.infinity,
    this.textStyle,
    this.borderRadios = 5.0,
    this.color = MyColors.mainColor,
    this.borderColor,
    this.titleColor,
    this.isAnimated = true, // Default to true for animation
    this.prefixWidget, // Initialize the new property
  });

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isPressed = false;

  void pressButton() {
    setState(() {
      isPressed = true;
    });
  }

  void releaseButton() {
    setState(() {
      isPressed = false;
    });
    widget.onPress();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        if (widget.isAnimated) {
          HapticFeedback.lightImpact();
          pressButton();
        }
      },
      onTapUp: (_) {
        if (widget.isAnimated) {
          releaseButton();
        } else {
          widget.onPress();
        }
      },
      onTapCancel: () {
        if (widget.isAnimated) {
          releaseButton();
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: widget.isAnimated
            ? Matrix4.translationValues(0, isPressed ? 5 : 0, 0)
            : Matrix4.translationValues(0, 0, 0), // No animation if false
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor ?? Colors.transparent),
          borderRadius: BorderRadius.circular(widget.borderRadios),
          color: widget.color,
          boxShadow: !widget.isAnimated
              ? []
              : widget.isAnimated && isPressed
              ? []
              : [
            BoxShadow(
              color: widget.color!.withOpacity(0.5),
              offset: const Offset(0, 5),
              blurRadius: 1,
            ),
          ],
        ),
        height: widget.height,
        width: widget.width,
        child: Center(
          child: widget.loading
              ? const SizedBox(
            height: 18,
            width: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Colors.white,
            ),
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // If prefixWidget is not null, display it
              if (widget.prefixWidget != null) ...[
                widget.prefixWidget!,
                const SizedBox(
                    width: 8), // Add space between icon and text
              ],
              Text(
                widget.title,
                style: widget.textStyle ??
                    CustomTextStyles.size14w500W
                        .copyWith(color: widget.titleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}













// import 'package:cookr/UTILS/Colors.dart';
// import 'package:cookr/UTILS/Textstyles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
//
// class ButtonController extends GetxController {
//   var isPressed = false;
//
//   void pressButton() {
//     isPressed = true;
//     update(); // Rebuild when button is pressed
//   }
//
//   void releaseButton() async {
//     isPressed = false;
//     update();
//
//     // Rebuild when button is released
//   }
// }
//
// class MyButton extends StatelessWidget {
//   final VoidCallback onPress;
//   final double width;
//   final double height;
//   final double borderRadios;
//   final String title;
//   final bool loading;
//   final Color? color;
//   final Color? titleColor;
//   final Color? borderColor;
//   final TextStyle? textStyle;
//   final bool isAnimated; // New flag for enabling/disabling animation
//   final Widget? prefixWidget; // New property for the prefix widget
//
//   const MyButton({
//     super.key,
//     this.loading = false,
//     required this.onPress,
//     this.title = 'Log In',
//     this.height = 40,
//     this.width = double.infinity,
//     this.textStyle,
//     this.borderRadios = 5.0,
//     this.color = MyColors.mainColor,
//     this.borderColor,
//     this.titleColor,
//     this.isAnimated = true, // Default to true for animation
//     this.prefixWidget, // Initialize the new property
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTapDown: (_) {
//         if (isAnimated) {
//           HapticFeedback.lightImpact();
//           // Trigger animation when pressed if isAnimated is true
//           Get.find<ButtonController>().pressButton();
//           // print('tap down');
//         }
//       },
//       onTapUp: (_) {
//         if (isAnimated) {
//
//           Get.find<ButtonController>().releaseButton();
//           // print('tap up');
//           onPress();
//         } else {
//           onPress(); // Call the press action directly if no animation
//         }
//       },
//       onTapCancel: () {
//         if (isAnimated) {
//           // print('tap cancel');
//
//           Get.find<ButtonController>().releaseButton();
//         }
//       },
//       child: GetBuilder<ButtonController>(
//         builder: (controller) {
//           return AnimatedContainer(
//             duration: Duration(milliseconds: 100),
//             transform: isAnimated
//                 ? Matrix4.translationValues(0, controller.isPressed ? 5 : 0, 0)
//                 : Matrix4.translationValues(0, 0, 0), // No animation if false
//             decoration: BoxDecoration(
//               border: Border.all(color: borderColor ?? Colors.transparent),
//               borderRadius: BorderRadius.circular(borderRadios),
//               color: color,
//               boxShadow: !isAnimated
//                   ? []
//                   : isAnimated && controller.isPressed
//                       ? []
//                       : [
//                           BoxShadow(
//                             color: color!.withOpacity(0.5),
//                             offset: Offset(0, 5),
//                             blurRadius: 1,
//                           ),
//                         ],
//             ),
//             height: height,
//             width: width,
//             child: Center(
//               child: loading
//                   ? const SizedBox(
//                       height: 18,
//                       width: 18,
//                       child: CircularProgressIndicator(
//                         strokeWidth: 2,
//                         color: Colors.white,
//                       ),
//                     )
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         // If prefixWidget is not null, display it
//                         if (prefixWidget != null) ...[
//                           prefixWidget!,
//                           SizedBox(
//                               width: 8), // Add some space between icon and text
//                         ],
//                         Text(
//                           title,
//                           style: textStyle != null
//                               ? textStyle
//                               : CustomTextStyles.size14w500W
//                                   .copyWith(color: titleColor),
//                         ),
//                       ],
//                     ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// //
// // import '../UTILS/Colors.dart';
// // import '../UTILS/Textstyles.dart';
// //
// // class MyButton extends StatelessWidget {
// //   final VoidCallback onPress;
// //   final double width;
// //   final double height;
// //   final double borderRadios;
// //   final String title;
// //   final bool loading;
// //   final Color? color;
// //   final Color? titleColor;
// //   final Color? borderColor;
// //
// //   const MyButton(
// //       {super.key,
// //       this.loading = false,
// //       required this.onPress,
// //       this.title = 'Log In',
// //       this.height =40,
// //       this.width = double.infinity,
// //       this.borderRadios = 5.0,
// //       this.color = MyColors.mainColor,
// //         this.borderColor, this.titleColor});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return GestureDetector(
// //       onTap: onPress,
// //       child: Container(
// //         height: height,
// //         width: width,
// //         decoration: BoxDecoration(
// //
// //           border: Border.all(color: borderColor?? Colors.transparent),
// //           borderRadius: BorderRadius.circular(borderRadios),
// //           color: color,
// //         ),
// //         child: Center(
// //           child: loading
// //               ? const SizedBox(
// //                   height: 18,
// //                   width: 18,
// //                   child: CircularProgressIndicator(
// //                     strokeWidth: 2,
// //                     color: Colors.white,
// //                   ),
// //                 )
// //               : Text(
// //                   title,
// //                   style: CustomTextStyles.size14w500W.copyWith(color: titleColor),
// //                 ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
he5() {
  return SizedBox(
    height: Get.height * .05,
  );
}

he2() {
  return SizedBox(
    height: Get.height * .02,
  );
}

he1() {
  return SizedBox(
    height: Get.height * .01,
  );
}

we2() {
  return SizedBox(
    width: Get.width * .02,
  );
}

we1() {
  return SizedBox(
    width: Get.width * .01,
  );
}

we5() {
  return SizedBox(
    width: Get.width * .05,
  );
}
