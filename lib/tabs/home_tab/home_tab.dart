import 'package:exam/tabs/home_tab/widgets/best_seller_horizontal.dart';
import 'package:exam/tabs/home_tab/widgets/movie_horizontal_list.dart';
import 'package:exam/tabs/home_tab/widgets/tab_bar_categories.dart';
import 'package:exam/tabs/home_tab/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          const TitleBar(title1: 'Categories', title2: 'See more'),
          const SizedBox(height: 16),
          SizedBox(
            height: size.height * .05,
            child: const TabsList(),
          ),
          const SizedBox(height: 32),
          const TitleBar(title1: 'Recommended For You', title2: 'See more'),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.only(left: 24),
            height: size.height * .45,
            child: const MovieHorizontalList(),
          ),
          const SizedBox(height: 32),
          const TitleBar(title1: 'Best Seller', title2: 'See more'),
          const SizedBox(height: 16),
          Container(
              padding: const EdgeInsets.only(right: 24, left: 24),
              height: size.height * .15,
              child: const BestSellerHorizontal())
        ],
      ),
    );
  }
}
