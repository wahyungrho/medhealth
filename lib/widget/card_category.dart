import 'package:flutter/material.dart';
import 'package:medhealth/theme.dart';

class CardCategory extends StatelessWidget {
  final String imageCategory;
  final String nameCategory;

  CardCategory({this.imageCategory, this.nameCategory});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageCategory,
          width: 65,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          nameCategory,
          style: mediumTextStyle.copyWith(fontSize: 10),
        )
      ],
    );
  }
}
