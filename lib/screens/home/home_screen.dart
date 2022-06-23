// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stylish/screens/home/controller.dart';
import 'package:stylish/service/themeservice.dart';
import 'package:stylish/themes/consts/consts.dart';
import 'package:stylish/themes/forlightmode/colorslight.dart';

import 'components/categories.dart';
import 'components/new_arrival_products.dart';
import 'components/popular_products.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/menu.svg",
              color: context.theme.primaryColorDark,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/Location.svg",
                color: context.theme.primaryColorDark,
              ),
              SizedBox(width: PAddingsandRadius.defaultPadding / 2),
              const Text(
                "15/2 New Texas",
              ),
            ],
          ),
          actions: [
            Switch(
              value: homeController.switchChange,
              onChanged: (value) {
                homeController.onChanged(value);
                ThemeService().switchTheme();
                homeController.switchState();
              },
              activeTrackColor: LightColors.cursorColor.withAlpha(125),
              activeColor: LightColors.cursorColor.withAlpha(2),
              inactiveTrackColor: LightColors.cursorColor,
              inactiveThumbColor: LightColors.cursorColor.withAlpha(20),
            )
            // IconButton(
            //   icon: SvgPicture.asset(
            //     "assets/icons/Notification.svg",
            //     color: LightColors.cursorColor,
            //   ),
            //   onPressed: () {},
            // ),
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
      ),
    );
  }
}
