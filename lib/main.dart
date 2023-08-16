import 'package:flutter/material.dart';
import 'package:ui_app/screens/card_travel.dart';
import 'package:ui_app/screens/onboarding_indocator.dart';
//import 'package:ui_app/screens/bottom_fab.dart';
//import 'package:ui_app/screens/bottom_navigation_bar.dart';
//import 'package:ui_app/screens/grid_card.dart';
//import 'package:ui_app/screens/widget_card.dart';
//import 'package:ui_app/screens/card_1.dart';
// import 'package:ui_app/screens/datails_screen.dart';
// import 'package:ui_app/screens/prueba_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: GridCard(),
      //home: CardItem(),
      //home: CardUno(),
      //home: BottomTab(),
      //home: BottomFAB(),
      //home: DetailsScreen(),
      //home: PruebaDetails(),
      //home: OnboardingIndocator(),
      home: CardTravel(),
    );
  }
}
