import 'package:elevate_flutter_task/features/home/domain/entities/product_entity.dart';
import 'package:elevate_flutter_task/features/home/presentation/widgets/products/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductList extends StatelessWidget {
  final List<ProductEntity>? productList;
  const ProductList({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: productList?.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.w,
        mainAxisSpacing: 4.h,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return ProductCard(productModel: productList?[index]);
      },
    );
  }
}
