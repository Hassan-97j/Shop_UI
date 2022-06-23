import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stylish/themes/consts/consts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(PAddingsandRadius.defaultPadding / 2),
        decoration: BoxDecoration(
          color: bgColor, //Get.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.all(
              Radius.circular(PAddingsandRadius.defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.all(
                    Radius.circular(PAddingsandRadius.defaultBorderRadius)),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            SizedBox(height: PAddingsandRadius.defaultPadding / 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: context.theme.textTheme.subtitle2!.copyWith(
                      color: context.theme.primaryColorDark,
                      fontWeight: FontWeight.w500,
                    ),
                    // const TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: PAddingsandRadius.defaultPadding / 4),
                Text(
                  "\$$price",
                  style: context.theme.textTheme.subtitle2!.copyWith(
                    color: context.theme.primaryColorDark,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
