import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String image;
  const BookItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(fit: BoxFit.fill, image,width: size.width*.6);
  }
}
