
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants.dart';


class FRoundedButton extends StatelessWidget {
  const FRoundedButton({
    Key? key,
    required this.onPressed,
    this.text = '',
    this.color = kGreenColor,
    this.textStyle,
    this.width = 200.0,
    this.height = 54.0,
    this.borderColor = kGreenColor,
  }) : super(key: key);

  final void Function()? onPressed;
  final String text;
  final Color color;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final Color borderColor;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(27.0.r),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(27.0.r),
            border: Border.all(color: borderColor),
            color: color,
          ),
          child: MaterialButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
