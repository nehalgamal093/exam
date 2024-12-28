import 'package:exam/theme/color_manager.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(bottom: 12),
      width: size.width * .85,
      decoration: const BoxDecoration(
        color: ColorManager.light,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/image_2.png'),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Light Mage',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'Laurie Forest',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: Color(0xFFcfff77a55)),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.star, color: Color(0xffcffF77A55)),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.star, color: Color(0xffcffF77A55)),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.star, color: Color(0xffcffF77A55)),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.star_border, color: Color(0xffcffF77A55)),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                ' 1,000+ Listeners',
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          )
        ],
      ),
    );
  }
}
