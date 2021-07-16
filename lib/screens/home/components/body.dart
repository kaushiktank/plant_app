import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featured_panel.dart';
import 'header_with_searchbox.dart';
import 'recomends_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This provide total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // it enable scralling on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPanel(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
