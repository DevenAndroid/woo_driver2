import 'package:flutter/material.dart';
import 'package:woo_driver/res/theme/theme.dart';

class CustomButton extends StatelessWidget {

  final String? buttonText;
  final VoidCallback? onPress;
  final double? width;
  final double? height;

  const CustomButton({Key? key,
    this.onPress, this.width, this.height, this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(10))),
              primary: AppTheme.primaryColor,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 5),
              textStyle:
              const TextStyle(fontWeight: FontWeight.bold)),
          onPressed: onPress,
          child: Text(
            buttonText!,
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}




// class CustomButton1 extends StatelessWidget {
//   final double? width;
//   final double? height;
//   final Widget child;
//   final Decoration? decoration;
//   final GestureTapCallback? onTap;
//
//   const CustomButton1({Key? key, this.width, this.height, required this.child, this.decoration, this.onTap})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: onTap,
//         child: Container(
//           width: width,
//           height: height,
//           decoration: decoration,
//           child: child,
//         ));
//   }
// }