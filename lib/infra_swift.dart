import 'package:flutter/material.dart';
import 'package:infra_swift/lets_start_screen.dart';
import 'package:infra_swift/login_page.dart';
import 'package:infra_swift/login_type_page.dart';

class InfraSwift extends StatefulWidget {
  const InfraSwift({super.key});
  @override
  State<InfraSwift> createState() {
    return _InfraSwiftState();
  }
}

class _InfraSwiftState extends State<InfraSwift> {
  var activeScreen = 'letsStartScreen';
  void startTap() {
    setState(() {
      activeScreen = 'loginTypePage';
    });
  }

  void backToLoginType() {
    setState(() {
      activeScreen = 'loginTypePage';
    });
  }

  void loginTap() {
    setState(() {
      activeScreen = 'loginPage';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = LetsStartScreen(
      onTap: startTap,
      loginTap: loginTap,
    ); // calling new page

    if (activeScreen == 'loginTypePage') {
      screenWidget = LoginTypePage(loginTap: loginTap);
    }

    if (activeScreen == 'loginPage') {
      screenWidget = LoginPage(
        backToLoginType: backToLoginType,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 98, 78, 47),
                Color.fromARGB(255, 107, 87, 62),
                Color.fromARGB(255, 107, 89, 65),
                Color.fromARGB(255, 123, 104, 75),
                Color.fromARGB(255, 130, 110, 85),
                Color.fromARGB(255, 146, 130, 106),
                Color.fromARGB(255, 171, 151, 126),
                Color.fromARGB(255, 193, 177, 158),
                Color.fromARGB(255, 193, 177, 158),
                Color.fromARGB(255, 165, 145, 118),
                Color.fromARGB(255, 146, 130, 106),
                Color.fromARGB(255, 132, 112, 86),
                Color.fromARGB(255, 123, 104, 75),
                Color.fromARGB(255, 114, 96, 70),
                Color.fromARGB(255, 107, 87, 62),
                Color.fromARGB(255, 98, 78, 47),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}