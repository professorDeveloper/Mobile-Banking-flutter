import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/screen/auth/splash/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.watch<SplashProvider>().setUpSplash(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff060F27),
      body: Center(child: Row(children: [
        Image.asset("assets/image/icon_logo.png"),
        Text("Splash")
      ],),),
    );
  }
}
