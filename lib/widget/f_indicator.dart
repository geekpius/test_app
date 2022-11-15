import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants.dart';


class FIndicator extends StatelessWidget {
  const FIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: EdgeInsets.symmetric(horizontal: 16.0.w),
        height: 8.0.h,
        width: 8.0.w,
        decoration: BoxDecoration(
          color: isActive ? kBlackColor : const Color(0xFF686968),
          borderRadius: BorderRadius.circular(2.0.r),
          border: Border.all(color: isActive? kGreenColor : Colors.transparent),
        ),
      );
  }
}
