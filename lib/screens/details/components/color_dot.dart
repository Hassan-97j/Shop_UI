import 'package:flutter/material.dart';
import 'package:stylish/themes/consts/consts.dart';
import 'package:stylish/themes/forlightmode/colorslight.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
  }) : super(key: key);

  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(PAddingsandRadius.defaultPadding / 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: isActive
              ? LightColors.primaryColorlight
              : LightColors.appbarColor,
        ),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
      ),
    );
  }
}
