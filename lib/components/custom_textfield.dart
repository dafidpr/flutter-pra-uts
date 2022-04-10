import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  CustomTextField({required this.hintText, this.prefixIcon, this.suffixIcon});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          iconColor: Colors.grey,
          filled: true,
          fillColor: Color.fromARGB(255, 236, 236, 236),
          focusColor: Color.fromARGB(255, 235, 234, 234),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
