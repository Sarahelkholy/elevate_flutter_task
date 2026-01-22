import 'package:elevate_flutter_task/core/helpers/spacing.dart';
import 'package:elevate_flutter_task/core/theming/colors.dart';
import 'package:elevate_flutter_task/core/theming/styles.dart';
import 'package:elevate_flutter_task/features/home/domain/entities/product_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatefulWidget {
  final ProductEntity? productModel;
  final void Function()? onTap;

  const ProductCard({super.key, this.onTap, this.productModel});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isInWishlist = false;

  @override
  Widget build(BuildContext context) {
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
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          border: Border.all(color: ColorsManager.lightBlue, width: 2.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    widget.productModel?.image ?? "",
                    height: 90.h,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 0.h,
                  right: 0.w,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isInWishlist = !isInWishlist;
                      });
                    },
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: ColorsManager.shimmerGray,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        isInWishlist
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: isInWishlist
                            ? ColorsManager.blue
                            : ColorsManager.blue,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(5),

            Text(
              widget.productModel?.title ?? "Product Name",
              style: AppTextStyles.font14DarkBlueBold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            verticalSpace(4),
            Expanded(
              child: Text(
                'EGP ${widget.productModel?.price.toString() ?? "0"}',
                style: AppTextStyles.font13DarkBlueSemiBold,
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'Reviews (${widget.productModel?.rating?.rate ?? "0"})',
                        style: AppTextStyles.font12DarkBlueRegular,
                      ),
                      horizontalSpace(4.w),
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.amber,
                        size: 14.sp,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                    height: 27.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                      size: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
