import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/screen/auth/splash/splash_provider.dart';

class SplashScreen extends StatefulWidget {

  static final  route="/splash_route";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // context.watch<SplashProvider>().setUpSplash(context);

    return Scaffold(
      backgroundColor: Color(0xff102060),
      body: Consumer<SplashProvider>(
        builder: (context,provider,child){
          provider.setUpSplash(context);
          return Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Image.asset("assets/image/icon_logo.png"),
            Text("GITA BANK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 26,fontStyle: FontStyle.italic),)
          ],),);

        },
      ),
    );
  }
}
