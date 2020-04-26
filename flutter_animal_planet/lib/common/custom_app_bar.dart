import 'package:flutter/material.dart';
import 'package:flutteranimalplanet/utils/strings.dart';
import 'package:flutteranimalplanet/utils/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
               children: [
                 TextSpan(
                   text: Strings.APP_NAME,
                   style: TextStyles.appNameTextStyle,
                 ),
                 TextSpan(text: '\n'),
                 TextSpan(
                   text: Strings.TAG_LINE,
                   style: TextStyles.tagLineTextStyle,
                 )
               ]
              ),
            ),
            Spacer(),
            Icon(Icons.menu, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
