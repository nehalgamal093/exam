import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String title1;
  final String title2;
  const TitleBar({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title1,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            title2,
            style: Theme.of(context).textTheme.displayMedium,
          )
        ],
      ),
    );
  }
}
