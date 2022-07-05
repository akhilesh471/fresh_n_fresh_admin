
import 'package:admin/application/add_category/category_bloc.dart';
import 'package:admin/application/add_products/add_products_bloc.dart';
import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:admin/domain/add_products/models/add_product_model.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/add_products/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProducts extends StatefulWidget {
  const AddProducts({Key? key}) : super(key: key);

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
 
  String? selectedValue;
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
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text(
          'Add Products',
          style: TextStyle(letterSpacing: 2),
        ),
      ),
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
                        GestureDetector(onTap: (){},
                          child: SizedBox(
                            width: width * 0.3,
                            child: Icon(Icons.add),
                          ),
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
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
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
                    textfield('Quantity', width * 0.42, 1, _quantityContoller),
                    SizedBox(
                      width: width * 0.078,
                    ),
                    textfield('Price ', width * 0.42, 1, _priceContoller),
                  ],
                ),
                sizeH15,
                productDetails('Select Units :'),
                sizeH10,
                productUnits(height, width),
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
                        final model = Products(
                            category: selectedValue!,
                            name: _nameController.text,
                            quantity: _quantityContoller.text.trim(),
                            price: _priceContoller.text.trim(),
                            units: dropdownvalue2,
                            description: _descriptionContoller.text);
                        context.read<AddProductsBloc>().add(AddProductsEvent.addProducts(model: model));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
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
        )),
      ),
    );
  }

  Container addImage(double width) {
    return Container(
      
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


}
