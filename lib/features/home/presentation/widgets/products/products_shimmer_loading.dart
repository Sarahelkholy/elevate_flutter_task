import 'package:elevate_flutter_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/helpers/spacing.dart';

class ProductsShimmerLoading extends StatelessWidget {
  const ProductsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.w,
        mainAxisSpacing: 4.h,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
          child: Container(
            padding: EdgeInsets.only(
              right: 10.w,
              left: 10.w,
              top: 12.h,
              bottom: 8.h,
            ),
            decoration: BoxDecoration(
              color: ColorsManager.shimmerGray,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: Colors.grey.shade100, width: 0.7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image shimmer
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Shimmer.fromColors(
                    baseColor: ColorsManager.shimmerGray,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 90.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
                verticalSpace(5),

                // Title shimmer
                Shimmer.fromColors(
                  baseColor: ColorsManager.shimmerGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 18.h,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
                verticalSpace(4),
                // Price shimmer
                Shimmer.fromColors(
                  baseColor: ColorsManager.shimmerGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 18.h,
                    width: double.infinity,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
