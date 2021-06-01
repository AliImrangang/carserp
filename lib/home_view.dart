import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_mobile.dart';
import 'home_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeMobile(),
      desktop: HomeDesktop(),

    );
  }
}
