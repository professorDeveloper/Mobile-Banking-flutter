import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_gita_mobile_baning/screen/auth/check/confirm_screen.dart';
import 'package:flutter_gita_mobile_baning/screen/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../register/register_page.dart';

class SplashProvider extends ChangeNotifier {
  bool _isHome = false;

  void setUpSplash(BuildContext context) {
    Timer(Duration(seconds: 3),
        () => {setUp(), Navigator.pushReplacement(context, _createRoute())});
  }

  Future<void> setUp() async {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('counter', 10);

    _isHome = (prefs.getBool("is_home"))!;
  }

  Route _createRoute() {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            _isHome ? HomePageScreen() : ConfirmScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          final tween = Tween(begin: begin, end: end);
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }
}
