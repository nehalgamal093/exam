import 'package:flutter/material.dart';
import 'best_seller_item.dart';

class BestSellerHorizontal extends StatelessWidget {
  const BestSellerHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const BestSellerItem();
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: 2);
  }
}
