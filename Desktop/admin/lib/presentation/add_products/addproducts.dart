
import 'package:admin/constants/colors.dart';
import 'package:admin/constants/size.dart';
import 'package:admin/core/buttons.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:flutter/material.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  String dropdownvalue = 'Vegetables';
  var items = [
    'Vegetables',
    'Fruits',
    'Dairy',
    'Meats',
    'Item 5',
  ];
  String dropdownvalue2 = 'Kilogram';
  var items2 = [
    'Kilogram',
    'Liters',
    'Units',
  ];

  @override
  Widget build(BuildContext context) {
    currentIndex=2;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text('Add Products',style: TextStyle(letterSpacing: 2),),),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LimitedBox(
                    maxHeight: height * 0.15,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: width * 0.3,
                          child: Icon(Icons.add),
                        ),
                        sizeW10,
                        addImage(width),
                        sizeW10,
                        addImage(width),
                      ],
                    )),
                sizeH15,
                productDetails('Category type:'),
                sizeH10,
                categoryDropDownList(height, width),
                sizeH15,
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
                productDetails('Descriptions :'),
                sizeH10,
                textfield('Add descriptionss', width * 0.92, 5),    sizeH10,
             Row(mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 mainButton('Post'),
               ],
             )
              ],
            ),
          ),
        )),
      ),
    );
  }

  Container addImage(double width) {
    return Container(
      width: width * 0.3,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://www.gardeningknowhow.com/wp-content/uploads/2021/06/bitter-melon.jpg'),
              fit: BoxFit.fill)),
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

  Text productDetails(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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

  Container categoryDropDownList(double height, double width) {
    return Container(
      height: height * 0.06,
      width: width * 0.94,
      decoration: BoxDecoration(
          color: tabBarlightBlue, borderRadius: BorderRadius.circular(12)),
      child: DropdownButton(
        isExpanded: true,
        hint: Center(
          child: Text('huhgv'),
        ),
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
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
            dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}
