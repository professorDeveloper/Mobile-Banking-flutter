import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_gita_mobile_baning/screen/auth/check/confirm_screen.dart';
import 'package:flutter_gita_mobile_baning/screen/auth/splash/splash_page.dart';
import 'package:flutter_gita_mobile_baning/screen/home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../register/register_page.dart';

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
