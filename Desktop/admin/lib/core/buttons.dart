import 'package:flutter/material.dart';

ElevatedButton mainButton(String text,) {
    return ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.0),
          ))),
          child: Text(
            text,
            style:const TextStyle(fontSize: 20),
          ),
        );
  }