import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/constants.dart';
import 'package:test_app/widget/svg_icon.dart';

class PageViewContent extends StatelessWidget {
  const PageViewContent({
    Key? key,
    required this.backgroundImage,
    required this.index,
    this.hashTag = '',
    this.title = '',
    this.content = '',
  }) : super(key: key);

  final String backgroundImage;
  final int index;
  final String hashTag;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 25.0.w
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('$kImagePath/$backgroundImage'),
          fit: BoxFit.cover,
        ),
      ),
      child: index == 0 ?
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 9),
          FSvgIcon(
            'logo.svg',
            width: 171.w,
            height: 48.0.h,
          ),

          const Spacer(flex: 5),
          Text(
            hashTag,
            style: kBoldItalicFontStyle.copyWith(
                fontSize: kSize20.sp,
                color: themeColor.textTheme.bodyText1?.color,
                height: Constant.getLineHeight(23.7, kSize20)
            ),
          ),
          Text(
            title,
            style: kBoldItalicFontStyle.copyWith(
                fontSize: kSize40.sp,
                color: themeColor.textTheme.bodyText2?.color,
                letterSpacing: Constant.getLetterSpacing(0.28),
                height: Constant.getLineHeight(34, kSize40)
            ),
          ),
          const Spacer(flex: 5),

        ],
      )
      :
      Container(
        padding: EdgeInsets.only(
          top: 63.0.h,
        ),
        child: Column(
          children: [
            Text(
              hashTag,
              style: kBoldItalicFontStyle.copyWith(
                  fontSize: kSize20.sp,
                  color: themeColor.textTheme.bodyText1?.color,
                  height: Constant.getLineHeight(23.7, kSize20)
              ),
            ),
            const Spacer(flex: 2),
            Text(
              title,
              style: kBoldItalicFontStyle.copyWith(
                  fontSize: kSize40.sp,
                  color: themeColor.textTheme.bodyText2?.color,
                  letterSpacing: Constant.getLetterSpacing(0.28),
                  height: Constant.getLineHeight(34, kSize40)
              ),
            ),
            SizedBox(height: 24.0.h),
            Text(
              content,
              style: kRegularFontStyle.copyWith(
                  fontSize: kSize16.sp,
                  color: themeColor.textTheme.bodyText1?.color,
                  letterSpacing: Constant.getLetterSpacing(0.2),
                  height: Constant.getLineHeight(22, kSize16)
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
