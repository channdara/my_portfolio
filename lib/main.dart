import 'package:flutter/material.dart';

import 'src/common/app_common_data.dart';
import 'src/page/main_page/main_page.dart';
import 'src/util/material_color_util.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      home: const MainPage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'LexendDeca',
        colorSchemeSeed: MaterialColorUtil.fromColor(primaryColor),
        scaffoldBackgroundColor: secondaryColor,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}
