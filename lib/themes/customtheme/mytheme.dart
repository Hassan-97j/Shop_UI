import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/themes/consts/consts.dart';
import 'package:stylish/themes/fordarkmode/darkcolors.dart';
import 'package:stylish/themes/forlightmode/colorslight.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: GoogleFonts.varelaRoundTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: LightColors.primaryColorlight,
    primaryColorDark: LightColors.black,
    scaffoldBackgroundColor: LightColors.bgColorlight,
    primaryColorLight: LightColors.bgColorlight,
    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: LightColors.appbarColor,
      titleTextStyle: Get.theme.textTheme.bodyText1!.copyWith(
        color: LightColors.black,
      ),
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: LightColors.apbarIconColor,
        // size: 28,
      ),
      actionsIconTheme: const IconThemeData(
          // size: 28,
          ),
    ),
    ////textfield decoration
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: LightColors.cursorColor,
      hintStyle: Get.theme.textTheme.bodyText1!.copyWith(
        color: LightColors.cursorColor,
      ),
      filled: true,
      fillColor: LightColors.bgColorlight,
      disabledBorder: PAddingsandRadius.outlineInputBorder,
      border: PAddingsandRadius.outlineInputBorder,
      enabledBorder: PAddingsandRadius.outlineInputBorder,
      focusedBorder: PAddingsandRadius.outlineInputBorder,
      errorBorder: PAddingsandRadius.outlineInputBorder,
      focusedErrorBorder: PAddingsandRadius.outlineInputBorder,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: LightColors.cursorColor,
      selectionHandleColor: LightColors.cursorColor,
      selectionColor: LightColors.cursorColor,
    ),
  );
////////////////////////////////////
////////////////////////////////////
////////////////////////////////////
///////////////////////////////////
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.varelaRoundTextTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: DarkColors.primaryColordark,
    primaryColorDark: DarkColors.white,
    scaffoldBackgroundColor: DarkColors.bgColorDark,
    primaryColorLight: DarkColors.bgColorDark,
    //appbar theme
    appBarTheme: AppBarTheme(
      backgroundColor: DarkColors.appbarColor,
      titleTextStyle: Get.theme.textTheme.bodyText1!.copyWith(
        color: DarkColors.white,
      ),
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: DarkColors.apbarIconColor,
        // size: 28,
      ),
      actionsIconTheme: const IconThemeData(
          // size: 28,
          ),
    ),
    ////textfield decoration
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: DarkColors.cursorColor,
      hintStyle: Get.theme.textTheme.bodyText1!.copyWith(
        color: DarkColors.cursorColor,
      ),
      filled: true,
      fillColor: DarkColors.bgColorDark,
      disabledBorder: PAddingsandRadius.outlineInputBorder,
      border: PAddingsandRadius.outlineInputBorder,
      enabledBorder: PAddingsandRadius.outlineInputBorder,
      focusedBorder: PAddingsandRadius.outlineInputBorder,
      errorBorder: PAddingsandRadius.outlineInputBorder,
      focusedErrorBorder: PAddingsandRadius.outlineInputBorder,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: DarkColors.cursorColor,
      selectionHandleColor: DarkColors.cursorColor,
      selectionColor: DarkColors.cursorColor,
    ),
  );
}
