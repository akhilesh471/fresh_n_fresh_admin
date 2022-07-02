
import 'package:admin/constants/colors.dart';
import 'package:admin/constants/size.dart';
import 'package:admin/core/buttons.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:flutter/material.dart';

class AddSellItems extends StatefulWidget {
  const AddSellItems({Key? key}) : super(key: key);

  @override
  State<AddSellItems> createState() => _AddSellItemsState();
}

class _AddSellItemsState extends State<AddSellItems> {
   String dropdownvalue2 = 'Kilogram';
  var items2 = [
    'Kilogram',
    'Liters',
    'Units',
  ];
  @override
  Widget build(BuildContext context) {
    currentIndex = 3;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('A D D  I T E M S'),),
    
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productDetails('Product Name:'),
            sizeH10,
            textfield('Product name', width * 0.92, 1),
            sizeH15,
            Row(
              children: [
                productDetails('Quantity :'),
                SizedBox(
                  width: width * 0.33,
                ),
                productDetails('Price :'),
              ],
            ),
            sizeH10,
            Row(
              children: [
                textfield('Quantity', width * 0.42, 1),
                SizedBox(
                  width: width * 0.078,
                ),
                textfield('Price ', width * 0.42, 1),
              ],
            ),
            sizeH15,
            productDetails('Select Units :'),
            sizeH10,
            productUnits(height, width),
            sizeH15,
            Center(
              child: mainButton('SUBMIT'),
            ),
          ],
        ),
      )),
    );
  }

  Widget textfield(String text, var width, int lines) {
    return SizedBox(
      width: width,
      child: TextFormField(
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

  Text productDetails(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }

  Container productUnits(double height, double width) {
    return Container(
      height: height * 0.06,
      width: width * 0.94,
      decoration: BoxDecoration(
          color: tabBarlightBlue, borderRadius: BorderRadius.circular(12)),
      child: DropdownButton(
        isExpanded: true,
        value: dropdownvalue2,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items2.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(items),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue2 = newValue!;
          });
        },
      ),
    );
  }
}