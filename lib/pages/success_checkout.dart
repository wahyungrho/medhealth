import 'package:flutter/material.dart';
import 'package:medhealth/main_page.dart';
import 'package:medhealth/widget/button_primary.dart';
import 'package:medhealth/widget/general_logo_space.dart';
import 'package:medhealth/widget/widget_ilustration.dart';

class SuccessCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GeneralLogoSpace(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(24),
        children: [
          SizedBox(
            height: 80,
          ),
          WidgetIlustration(
            image: "assets/order_success_ilustration.png",
            title: "Yeay, your order was successfully",
            subtitle1: "Consult with a doctor,",
            subtitle2: "Wherever and whenever you are",
          ),
          SizedBox(
            height: 30,
          ),
          ButtonPrimary(
            text: "BACK TO HOME",
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MainPages()),
                  (route) => false);
            },
          )
        ],
      ),
    ));
  }
}
