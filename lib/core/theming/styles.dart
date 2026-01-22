import 'package:elevate_flutter_task/core/theming/colors.dart';
import 'package:elevate_flutter_task/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle font14DarkBlueBold = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font13DarkBlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
}
