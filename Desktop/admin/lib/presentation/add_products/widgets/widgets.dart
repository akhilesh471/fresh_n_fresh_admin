import 'package:admin/core/size.dart';
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
            borderSide: BorderSide(width: 1, color: Colors.red),
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
    style: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
  );
}

//<------------------------------TextBoxContainer (ViewProducts)------------------------------------------>
class TextBoxContainer extends StatelessWidget {
  const TextBoxContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Row(
      children: [
        sizeW10,
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(15)),
          width: width * 0.9,
          height: height,
          child: Center(
              child: Row(
            children: [
              sizeW10,
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )),
        ),
      ],
    );
  }
}
