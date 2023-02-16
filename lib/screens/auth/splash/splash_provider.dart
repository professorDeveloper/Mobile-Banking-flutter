import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/splash/splash_page.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../check/confirm_screen.dart';

class SplashProvider extends ChangeNotifier {
  bool _isHome = false;

  void setUpSplash(BuildContext context) {
    Timer(Duration(seconds: 3),
        () => {setUp(), Navigator.pushReplacementNamed(context, _isHome ? SplashScreen.route : ConfirmScreen.route)});
  }

  Future<void> setUp() async {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.setInt('counter', 10);

    _isHome = (prefs.getBool("is_home"))!;
  }


}
