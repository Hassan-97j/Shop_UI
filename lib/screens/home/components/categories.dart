import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stylish/models/category.dart';
import 'package:stylish/themes/consts/consts.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demo_categories.length,
        itemBuilder: (context, index) => CategoryCard(
          icon: demo_categories[index].icon,
          title: demo_categories[index].title,
          press: () {},
        ),
        separatorBuilder: (context, index) =>
            SizedBox(width: PAddingsandRadius.defaultPadding),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(PAddingsandRadius.defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: PAddingsandRadius.defaultPadding / 2,
            horizontal: PAddingsandRadius.defaultPadding / 4),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            SizedBox(height: PAddingsandRadius.defaultPadding / 2),
            Text(
              title,
              style: context.theme.textTheme.subtitle2!.copyWith(
                color: context.theme.primaryColorDark,
              ),
            )
          ],
        ),
      ),
    );
  }
}
