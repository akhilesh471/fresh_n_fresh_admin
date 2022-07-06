import 'dart:io';

import 'package:admin/application/add_category/category_bloc.dart';
import 'package:admin/application/add_products/add_products_bloc.dart';
import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:admin/domain/add_products/models/add_product_model.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/add_products/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  String? selectedValue;
  final formkey = GlobalKey<FormState>();

  final List<File> _imageFileList = [];
  Future getimage() async {
    try {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      setState(() {
        _imageFileList.add(File(pickedFile!.path));
      });
    } catch (e) {
      setState(() {
        print(e);
      });
    }
  }

  final _nameController = TextEditingController();
  final _quantityContoller = TextEditingController();
  final _priceContoller = TextEditingController();
  final _descriptionContoller = TextEditingController();
  String dropdownvalue2 = 'Kilogram';
  var items2 = [
    'Kilogram',
    'Liters',
    'Units',
  ];

  @override
  Widget build(BuildContext context) {
    currentIndex = 2;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer:const Sidebar(),
     
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 10),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          getimage();
                        },
                        child: Container(decoration: BoxDecoration(border: Border.all()),
                          width: width * 0.22,
                          height: height * 0.12,
                          child: const Icon(Icons.add),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.15,
                        width: width * .6,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: _imageFileList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left:4),
                              child: addImage(width, index,height),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  sizeH15,
                  productDetails('Category type:'),
                  sizeH10,
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      // selectedValue = state.categoryList[0].name;
                      return Container(
                        height: height * 0.06,
                        width: width * 0.94,
                        decoration: BoxDecoration(
                            color: tabBarlightBlue,
                            borderRadius: BorderRadius.circular(12)),
                        child: DropdownButton(
                          isExpanded: true,
                          hint: const Center(
                            child: Text('Select Category'),
                          ),
                          value: selectedValue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: state.categoryList.map((items) {
                            return DropdownMenuItem(
                              value: items.name,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 26),
                                child: Text(items.name),
                              ),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedValue = newValue.toString();
                            });
                            print(selectedValue);
                          },
                        ),
                      );
                    },
                  ),
                  sizeH15,
                  productDetails('Product Name:'),
                  sizeH10,
                  textfield('Product name', width * 0.92, 1, _nameController),
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
                      textfield(
                          'Quantity', width * 0.42, 1, _quantityContoller),
                      SizedBox(
                        width: width * 0.078,
                      ),
                      textfield('Price ', width * 0.42, 1, _priceContoller),
                    ],
                  ),
                  sizeH15,
                  productDetails('Select Units :'),
                  sizeH10,
                  Container(
                    height: height * 0.06,
                    width: width * 0.94,
                    decoration: BoxDecoration(
                        color: tabBarlightBlue,
                        borderRadius: BorderRadius.circular(12)),
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
                  ),
                  sizeH15,
                  productDetails('Descriptions :'),
                  sizeH10,
                  textfield('Add descriptionss', width * 0.92, 5,
                      _descriptionContoller),
                  sizeH10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_imageFileList.isEmpty) {
                            return;
                          }
                          if (selectedValue == null) {
                            return;
                          }                         
                          final model = Products(
                              category: selectedValue!,
                              name: _nameController.text,
                              quantity: _quantityContoller.text.trim(),
                              price: _priceContoller.text.trim(),
                              units: dropdownvalue2,
                              description: _descriptionContoller.text);
                          if (formkey.currentState!.validate()) {
                            context.read<AddProductsBloc>().add(
                                AddProductsEvent.addProducts(
                                    model: model, imageList: _imageFileList));
                          }
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17.0),
                        ))),
                        child: const Text(
                          'Post',
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  Widget addImage(double width, int index,double height){
    return (_imageFileList.isNotEmpty)
        ? Container(
             width: width * 0.22,
                          height: height * 0.12,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: FileImage(_imageFileList[index]),fit: BoxFit.contain)),
          )
        : Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://booleanstrings.com/wp-content/uploads/2021/10/profile-picture-circle-hd.png'))));
  }
}
