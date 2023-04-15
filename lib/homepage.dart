import 'package:airbnb/Parts_homepage/attractionnearby.dart';
import 'package:airbnb/Parts_homepage/bestoffers.dart';
import 'package:airbnb/Parts_homepage/categories.dart';
import 'package:airbnb/Parts_homepage/title.dart';
import 'package:airbnb/Parts_homepage/warm_weather_gateway.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 17, left: 20, right: 20, bottom: 5),
        child: ScrollConfiguration(
          behavior: Mybehaviour(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const HomeTitle(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const Categories(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                const BestOffer(),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: WarmWeatherGateway(),
                ),
                const AttractionNearby(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class Mybehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
