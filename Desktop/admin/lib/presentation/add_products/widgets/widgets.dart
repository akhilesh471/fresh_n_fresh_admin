  import 'package:flutter/material.dart';
// ------------------------------Textformfield-----------------------------
Widget textfield(
  
      String text, var width, int lines, TextEditingController _controller) {
    return SizedBox(
      width: width,
      child: TextFormField(
          controller: _controller,
          maxLines: lines,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: new BorderSide(width: 2),
                borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(
                borderSide: new BorderSide(width: 1),
                borderRadius: BorderRadius.circular(15)),
            hintText: text,
            floatingLabelBehavior: FloatingLabelBehavior.always,
          )),
    );
  }