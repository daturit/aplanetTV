import 'package:flutter/material.dart';
import 'package:flutteranimalplanet/utils/text_styles.dart';

class SubscriptionContainer extends StatelessWidget {
  final String amount, text, imagePath;

  SubscriptionContainer({Key key, this.text, this.amount, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcATop),
              child: Image.asset(
                imagePath,
                height: height * 0.6 / 4,
                width: width - 32,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 48,
            right: 48,
            child: Row(
              children: <Widget>[
                Text(
                  text,
                  style: TextStyles.subscriptionTextStyle,
                ),
                Spacer(),
                Text(
                  '\$$amount',
                  style: TextStyles.subscriptionAmountTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
