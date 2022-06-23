import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.pressSeeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback pressSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.theme.textTheme.subtitle1!.copyWith(
            color: context.theme.primaryColorDark,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
          onPressed: pressSeeAll,
          child: Text(
            "See All",
            style: context.theme.textTheme.subtitle1!.copyWith(
              color: context.theme.primaryColorDark.withOpacity(0.46),
            ),
          ),
        )
      ],
    );
  }
}
