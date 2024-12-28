import 'package:flutter/material.dart';
import 'movie_item.dart';

class MovieHorizontalList extends StatelessWidget {
  const MovieHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MovieItem(
            image: movieCovers[index],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16),
        itemCount: movieCovers.length);
  }
}

List<String> movieCovers = [
  'assets/images/image_1.png',
  'assets/images/image_3.png'
];
