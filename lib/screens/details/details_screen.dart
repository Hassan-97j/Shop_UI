import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:stylish/models/product.dart';
import 'package:stylish/themes/consts/consts.dart';
import 'package:stylish/themes/forlightmode/colorslight.dart';

import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: product.bgColor,
      appBar: AppBar(
        leading: BackButton(color: context.theme.primaryColorDark),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: context.theme.scaffoldBackgroundColor,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          SizedBox(height: PAddingsandRadius.defaultPadding * 1.5),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                PAddingsandRadius.defaultPadding,
                PAddingsandRadius.defaultPadding * 2,
                PAddingsandRadius.defaultPadding,
                PAddingsandRadius.defaultPadding,
              ),
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      PAddingsandRadius.defaultBorderRadius * 3),
                  topRight: Radius.circular(
                      PAddingsandRadius.defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: context.theme.textTheme.headline6!.copyWith(
                            color: context.theme.primaryColorDark,
                          ),
                        ),
                      ),
                      SizedBox(width: PAddingsandRadius.defaultPadding),
                      Text(
                        "\$${product.price}",
                        style: context.theme.textTheme.headline6!.copyWith(
                          color: context.theme.primaryColorDark,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: PAddingsandRadius.defaultPadding),
                    child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                      style: context.theme.textTheme.subtitle2!.copyWith(
                        color: context.theme.primaryColorDark,
                      ),
                    ),
                  ),
                  Text(
                    "Colors",
                    style: context.theme.textTheme.subtitle2!.copyWith(
                      color: context.theme.primaryColorDark,
                    ),
                  ),
                  SizedBox(height: PAddingsandRadius.defaultPadding / 2),
                  Row(
                    children: const [
                      ColorDot(
                        color: Color(0xFFBEE8EA),
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color(0xFF141B4A),
                        isActive: true,
                      ),
                      ColorDot(
                        color: Color(0xFFF4E5C3),
                        isActive: false,
                      ),
                    ],
                  ),
                  SizedBox(height: PAddingsandRadius.defaultPadding * 2),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: LightColors.primaryColorlight,
                            shape: const StadiumBorder()),
                        child: Text(
                          "Add to Cart",
                          style: context.theme.textTheme.subtitle2!.copyWith(
                            color: context.theme.primaryColorLight,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
