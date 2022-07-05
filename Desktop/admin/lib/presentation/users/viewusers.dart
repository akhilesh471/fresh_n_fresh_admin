// ignore_for_file: avoid_unnecessary_containers

import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:flutter/material.dart';

class ViewUser extends StatelessWidget {
  const ViewUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
            child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 215, 214, 214),
                borderRadius: BorderRadius.circular(15)),
            width: width * 0.9,
            height: height * 0.61,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    child: ClipOval(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU'),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  userDetails('Name :', 'Lakshmi'),
                  sizeH15,
                  userDetails('Ph Number :', '9839489213'),
                  sizeH15,
                  userDetails('Email :', 'Lakshmi@gmail.com'),
                  sizeH15,
                  userDetails('Address :', 'Lakshmivilla,Kochi,Kerala,671341.'),
                  sizeH15,
                  userDetails('Date :', '22-05-2022'),
                  sizeH15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Block',
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[400],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )));
  }

  Widget userDetails(String text1, String text2) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Expanded(
              child: Text(
            text1,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          Flexible(
              child: Text(text2,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)))
        ],
      ),
    );
  }
}
