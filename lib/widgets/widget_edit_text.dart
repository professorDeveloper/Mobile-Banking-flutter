import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  String editName;
  String inputType;
  String errorText;
  String hint;

  EditText(this.errorText,
      {Key? key,
        required this.editName,

        required this.inputType,
        required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35, bottom: 8),
            child: Text(
              editName,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 6, left: 20, bottom: 6),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(11)),
              margin: EdgeInsets.symmetric(horizontal: 27),
              child: TextFormField(
                style: const TextStyle(
                    color: Color(0xff818C99),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorStyle: TextStyle(fontWeight: FontWeight.w400,
                      color: Colors.red,
                      fontSize: 16),
                  hintText: hint.toString(),
                  hintStyle: TextStyle(
                      color: Color(0xFFA5A5A5),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              )),
          errorText.isNotEmpty ? Padding(
            padding: const EdgeInsets.only(left: 35, top: 8),
            child: Text(
              errorText,
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
