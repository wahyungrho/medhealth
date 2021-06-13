import 'package:flutter/material.dart';
import 'package:medhealth/network/model/history_model.dart';
import 'package:medhealth/theme.dart';

class CardHistory extends StatelessWidget {
  final HistoryOrdelModel model;

  CardHistory({this.model});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("INV/" + model.invoice,
                style: boldTextStyle.copyWith(fontSize: 16)),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          model.orderAt,
          style: regulerTextStyle.copyWith(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          model.status == "1"
              ? "Pesanan sedang dikonfirmasi"
              : "Pesanan selesai",
          style: lightTextStyle,
        ),
        Divider()
      ],
    );
  }
}
