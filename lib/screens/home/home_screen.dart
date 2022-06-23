import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stylish/themes/consts/consts.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            SizedBox(width: PAddingsandRadius.defaultPadding / 2),
            const Text(
              "15/2 New Texas",
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(PAddingsandRadius.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: context.theme.textTheme.headline4!.copyWith(
                fontWeight: FontWeight.w500,
                color: context.theme.primaryColorDark,
              ),
            ),
            Text("best Outfits for you",
                style: context.theme.textTheme.bodyText2!.copyWith(
                  fontSize: 18,
                  color: context.theme.primaryColorDark,
                )
                //TextStyle(fontSize: 18),
                ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: PAddingsandRadius.defaultPadding),
              child: const SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}
