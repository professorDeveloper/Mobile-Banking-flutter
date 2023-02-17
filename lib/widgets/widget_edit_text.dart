import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditText extends StatefulWidget {
  String editName;
  String inputType;
  Function(String?) callback;
  Function(String?) callbackPassword;
  String errorText;
  bool isPassword;
  String hint;
  List<MaskTextInputFormatter>  maskFormatter ;


  EditText( this.errorText,{Key? key,required this.editName, required this.inputType,   required this.isPassword,
    required this.maskFormatter ,required this.hint,required this.callback,required this.callbackPassword}) : super(key: key);

  @override
  State<EditText> createState() => _EditTextState();
}

enum  StatusMask { phone, date, none }
class _EditTextState extends State<EditText> {
  var _textController = TextEditingController();
  var _textControllerPassword = TextEditingController();

  @override
  void dispose() {

    _textController.dispose();
    _textControllerPassword.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _textController.addListener(() {
       widget. callback.call(
           widget .maskFormatter[0].getUnmaskedText()
       );
    });
    _textControllerPassword.addListener(() {
      widget. callbackPassword.call(
          _textControllerPassword.text
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return widget. isPassword?Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, bottom: 8),
            child: Text(
              widget.editName,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 5, left: 20, bottom: 5,right: 6),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(11)),
              margin: EdgeInsets.symmetric(horizontal: 27),
              child: TextField(
                controller:_textControllerPassword ,
                obscureText: widget.isPassword,
                inputFormatters: widget.maskFormatter,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      widget.isPassword=!widget.isPassword;
                      setState(() {

                      });
                    },
                    child: Icon(Icons.remove_red_eye),
                  ),
                  errorStyle: TextStyle(fontWeight: FontWeight.w400,
                      color: Colors.red,
                      fontSize: 16),
                  hintText: widget.hint.toString(),
                  hintStyle: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              )),
          widget.errorText.isNotEmpty ? Padding(
            padding: const EdgeInsets.only(left: 35, top: 8),
            child: Text(
              widget.errorText,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.red),
            ),
          ): SizedBox()

        ],
      ),
    ):
    Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, bottom: 8),
            child: Text(
              widget.editName,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 5.6, left: 20, bottom: 5.6,right: 6),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(11)),
              margin: EdgeInsets.symmetric(horizontal: 27),
              child: TextField(
                controller: _textController,
                inputFormatters: widget.maskFormatter,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorStyle: TextStyle(fontWeight: FontWeight.w400,
                      color: Colors.red,
                      fontSize: 16),
                  hintText: widget.hint.toString(),
                  hintStyle: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              )),
          widget.errorText.isNotEmpty ? Padding(
            padding: const EdgeInsets.only(left: 35, top: 8),
            child: Text(
              widget.errorText,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.red),
            ),
          ): SizedBox()

        ],
      ),
    );
  }
}

