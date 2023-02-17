import 'package:flutter/material.dart';
import 'package:flutter_gita_mobile_baning/screens/auth/register/register_provider.dart';
import 'package:flutter_gita_mobile_baning/widgets/widget_edit_text.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);
  static const route = "/register_route";
  var password = "";
  var phone = false;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

bool checkPhone(String phone) {
  final _uzbekistanPhoneNumberRegex = RegExp(r'^\+998\d{9}$');

  return _uzbekistanPhoneNumberRegex.hasMatch(phone);
}

class _RegisterScreenState extends State<RegisterScreen> {
  var maskDate = MaskTextInputFormatter(
      mask: '##/##/####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskPhone = MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

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
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: "google_fonts/Abel-Regular.ttf"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 28,
                ),
                EditText(
                  callbackPassword: (value) {},
                  callback: (value) {
                    setState(() {});
                  },
                  maskFormatter: [],
                  isPassword: false,
                  "",
                  inputType: 'AA',
                  hint: "Temurbek",
                  editName: "First name",
                ),
                SizedBox(
                  height: 16,
                ),
                EditText(
                  callbackPassword: (value) {},
                  callback: (value) {
                    setState(() {});
                  },
                  maskFormatter: [],
                  isPassword: false,
                  "",
                  inputType: 'AA',
                  hint: "Usmonov",
                  editName: "Last name",
                ),
                SizedBox(
                  height: 16,
                ),
                EditText(
                  callbackPassword: (value) {},
                  callback: (value) {
                    setState(() {});
                  },
                  maskFormatter: [maskDate],
                  isPassword: false,
                  "",
                  inputType: 'AA',
                  hint: "2/12/1995",
                  editName: "Date of birth",
                ),
                SizedBox(
                  height: 16,
                ),
                EditText(
                  maskFormatter: [maskPhone],
                  callbackPassword: (value) {},
                  callback: (value) {
                    print("998${value}");

                    setState(() {});
                  },
                  isPassword: false,
                  "",
                  inputType: 'AA',
                  hint: "99 280 38 09",
                  editName: "Phone number",
                ),
                SizedBox(
                  height: 16,
                ),
                EditText(
                  callbackPassword: (value) {
                    print(value);
                    widget.password = value!;
                    setState(() {});
                  },
                  callback: (value) {},
                  maskFormatter: [],
                  isPassword: true,
                  "",
                  inputType: 'AA',
                  hint: "",
                  editName: "Password",
                ),
                SizedBox(
                  height: 5,
                ),
                Row(children: [
                  Padding(
                    padding: EdgeInsets.only(left: 35, top: 10),
                    child: Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 35,
                    ),
                    RoundCheckBox(
                        onTap: (selected) {
                          print('${selected}');
                          context.read<RegisterProvider>().uodateStateMale();
                        },
                        checkedColor: Color(0xff3862F8),
                        uncheckedColor: Color(0xffD9D9D9),
                        checkedWidget: Icon(
                          Icons.check,
                          size: 10,
                          color: Colors.white,
                        ),
                        size: 20,
                        isChecked:
                            context.watch<RegisterProvider>().stateProgressMale,
                        animationDuration: Duration(microseconds: 1)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "male",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: context
                                  .watch<RegisterProvider>()
                                  .stateProgressMale
                              ? Colors.blue
                              : Colors.black),
                    ),
                    SizedBox(width: 25,),
                    RoundCheckBox(
                        onTap: (selected) {
                          print('${selected}');
                          context.read<RegisterProvider>().updateStateFamale();
                        },
                        checkedColor: Color(0xff3862F8),
                        uncheckedColor: Color(0xffD9D9D9),
                        checkedWidget: Icon(
                          Icons.check,
                          size: 10,
                          color: Colors.white,
                        ),
                        size: 20,
                        isChecked:
                            context.watch<RegisterProvider>().stateProgressFamale,
                        animationDuration: Duration(microseconds: 1)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "famale",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: context
                                  .watch<RegisterProvider>()
                                  .stateProgressFamale
                              ? Colors.blue
                              : Colors.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
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
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
