import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:stylish/themes/consts/consts.dart';
import 'package:stylish/themes/forlightmode/colorslight.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        style: Get.theme.textTheme.bodyText1!.copyWith(
          color: Get.theme.primaryColorDark,
        ),
        onSaved: (value) {},
        decoration: InputDecoration(
          hintText: "Search items...",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(
              "assets/icons/Search.svg",
              color: LightColors.cursorColor,
            ),
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: PAddingsandRadius.defaultPadding,
                vertical: PAddingsandRadius.defaultPadding / 2),
            child: SizedBox(
              width: 48,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: context.theme.primaryColor, //primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                onPressed: () {},
                child: SvgPicture.asset(
                  "assets/icons/Filter.svg",
                  color: context.theme.scaffoldBackgroundColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
