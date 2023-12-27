import 'package:flutter/material.dart';

class OtpInputContainer extends StatelessWidget {
  const OtpInputContainer({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(242, 244, 247, 1)),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    );
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: border,
            focusedBorder: border,
            border: border,
            hintStyle: TextStyle(
                color: Color.fromRGBO(152, 163, 179, 1),
                fontFamily: "PoppinsRegular"),
            filled: true,
            fillColor: Color.fromRGBO(242, 244, 247, 1)),
      ),
    );
  }
}
