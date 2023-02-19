import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/widgets/widget_edit_text.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const route="/sign_route";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(

                        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400,fontFamily:"google_fonts/Abel-Regular.ttf"), ),
                ],
              ),
              SizedBox(height: 100,),
              EditText("Wrong password!",inputType: 'AA',hint: "99 280 38 09",editName: "Phone number",),
              SizedBox(height: 15,),

              EditText("",inputType: 'AA',hint: "",editName: "Password",),
              Row(
                  children:[
                    Padding(
                    padding:EdgeInsets.only(left:35 ,top: 10),
                    child: Text("Forgot password !",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Colors.blue),),
                  ),]

              ),


            ],
          ),
        ),
      ),
    );
  }
}

