import "package:flutter/material.dart";

class TextFieldComponent1 extends StatelessWidget {
  final String hintText;
  const TextFieldComponent1({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(242, 244, 247, 1)),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    );

    return TextField(
      decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder: border,
          border: border,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(152, 163, 179, 1),
              fontFamily: "PoppinsRegular"),
          filled: true,
          fillColor: const Color.fromRGBO(242, 244, 247, 1)),
    );
  }
}
