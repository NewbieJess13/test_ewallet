import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      required this.title,
      this.obsureText = false,
      this.hintText,
      this.inputFormatters,
      this.inputType})
      : super(key: key);

  final TextEditingController? controller;
  final String title;
  final bool obsureText;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: controller,
          obscureText: obsureText,
          cursorColor: Colors.black,
          inputFormatters: inputFormatters,
          keyboardType: inputType,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  fontSize: 15, color: Color.fromARGB(216, 52, 74, 106)),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25)),
              filled: true,
              fillColor: Color.fromARGB(255, 8, 138, 245)),
        ),
      ],
    );
  }
}
