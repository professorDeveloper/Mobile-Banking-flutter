import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/widgets/widget_edit_text.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);
  static const route = "/sign_route";
  var password = "";
  var phone = false;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  var maskPhone = MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  @override
  void initState() {
    super.initState();
  }

  bool checkPhone(String phone) {
    final _uzbekistanPhoneNumberRegex = RegExp(r'^\+998\d{9}$');

    return _uzbekistanPhoneNumberRegex.hasMatch(phone);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "google_fonts/Abel-Regular.ttf"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                EditText(
                  maskFormatter: [maskPhone],
                  callbackPassword: (value) {},
                  callback: (value) {
                    print("998${value}");

                    widget.phone = checkPhone("+998$value");
                    print(checkPhone("+998$value"));
                    setState(() {});
                  },
                  isPassword: false,
                  "",
                  inputType: 'AA',
                  hint: "99 280 38 09",
                  editName: "Phone number",
                ),
                SizedBox(
                  height: 18,
                ),
                EditText(
                  maskFormatter: [],
                  callbackPassword: (value) {
                    print(value);
                    widget.password = value!;
                    setState(() {});
                  },
                  callback: (value) {},
                  isPassword: true,
                  "",
                  inputType: 'AA',
                  hint: "",
                  editName: "Password",
                ),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 35, top: 10),
                    child: Text(
                      "Forgot password !",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3862F8),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 200,
                ),
                InkWell(
                  onTap: widget.password.length >= 6 && widget.phone
                      ? () {
                          print('"a');
                        }
                      : null,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: widget.password.length >= 6 && widget.phone
                            ? Color(0xff3862F8)
                            : Colors.black12,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        "Enter",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
