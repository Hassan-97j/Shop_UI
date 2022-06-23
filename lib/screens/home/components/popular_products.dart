import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stylish/models/product.dart';
import 'package:stylish/themes/consts/consts.dart';
import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: PAddingsandRadius.defaultPadding),
          child: SectionTitle(
            title: "Popular",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding:
                    EdgeInsets.only(right: PAddingsandRadius.defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  bgColor: context
                      .theme.primaryColorLight, //demo_product[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
