import 'package:flutter/material.dart';

// ------------------------------Textformfield-----------------------------
Widget textfield(
  String text,
  var width,
  int lines,
  TextEditingController controller,
) {
  return SizedBox(
    width: width,
    child: TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      controller: controller,
      maxLines: lines,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2),
            borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 2),
            borderRadius: BorderRadius.circular(15)),
        errorBorder: OutlineInputBorder(
            borderSide:  BorderSide(width: 1,color: Colors.red),
            borderRadius: BorderRadius.circular(15)),
        hintText: text,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    ),
  );
}

//  ---------------------------------Add Product Details------------------------------

Widget productDetails(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
  );
}
