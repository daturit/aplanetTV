import 'package:flutter/material.dart';
import 'package:flutteranimalplanet/common/custom_app_bar.dart';
import 'package:flutteranimalplanet/utils/strings.dart';
import 'package:flutteranimalplanet/utils/text_styles.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.4,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    'assets/elephant.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: <Widget>[
                      CustomAppBar(),
                      Expanded(
                        child: Align(
                          alignment: Alignment(0, -0.6),
                          child: Text(
                            Strings.welcomeToAPlanet,
                            style: TextStyles.bigHeadingTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Text(
                      Strings.relatedToYou,
                      style: TextStyles.buttonTextStyle,
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        _buildRelatedRow(context, "assets/tiger.jpg"),
                        _buildRelatedRow(context, "assets/wild_animals.jpeg"),
                        _buildRelatedRow(context, "assets/tiger.jpg"),
                        _buildRelatedRow(context, "assets/wild_animals.jpeg"),
                      ],
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Text(
                      Strings.quickCategories,
                      style: TextStyles.titleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        _buildCategory(Strings.bear, "assets/bear.png"),
                        _buildCategory(Strings.lion, "assets/lion.png"),
                        _buildCategory(Strings.reptiles, "assets/reptiles.png"),
                        _buildCategory(Strings.pets, "assets/pets.png"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildRelatedRow(BuildContext context, String imagePath) {
    return Container(
        margin: EdgeInsets.only(left: 16),
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(
                Strings.lifeWithATiger,
                style: TextStyles.titleTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(
                Strings.loremIpsum,
                style: TextStyles.body3TextStyle,
              ),
            ),
          ],
        ));
  }

  Column _buildCategory(String name, String imagePath) {
    return Column(
      children: <Widget>[
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xFF8C5835),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              imagePath,
              height: 60,
              width: 60,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: TextStyles.body2TextStyle,
        ),
      ],
    );
  }
}
