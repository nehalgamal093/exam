import 'package:exam/tabs/home_tab/widgets/tab_item.dart';
import 'package:flutter/material.dart';

class TabsList extends StatelessWidget {
  const TabsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TabItem(title: categoryTabs[index]);
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 12,
              ),
          itemCount: categoryTabs.length),
    );
  }
}

List<String> categoryTabs = [
  'Art',
  'Business',
  'Comedy',
  'Drama',
];

