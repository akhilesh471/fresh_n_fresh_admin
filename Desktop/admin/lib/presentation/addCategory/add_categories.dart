
import 'package:admin/constants/colors.dart';
import 'package:admin/constants/size.dart';
import 'package:admin/domain/add_catagory/category_model.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  AddCategory({Key? key}) : super(key: key);
  final TextEditingController _categoryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    currentIndex = 1;
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        titleSpacing: 1,
        title: Text('Add Category'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: TextField(
              controller: _categoryController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  hintText: 'Category'),
            ),
          ),
          sizeH10,
          ElevatedButton(
            onPressed: () {
            addCategoryItems(_categoryController);
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17.0),
            ))),
            child: const Text(
              'Add',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          sizeH15,
          ElevatedButton(
            onPressed: () {
            updateCategoryItems(_categoryController);
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17.0),
            ))),
            child: const Text(
              'update',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          sizeH15,
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tilecolor),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 20),
                      child: Text(
                        'Vegetables',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(55, 75, 89, 9)),
                      ),
                    )),
              );
            },
            itemCount: 4,
          )
        ],
      )),
    );
  }
}

Future<void> addCategoryItems(TextEditingController name)async{
  await categoryRef.add( Category(name:name.text ));
 
}
Future<void> updateCategoryItems(TextEditingController name)async{
  await categoryRef.doc('3ipZUeN3Fw7vzSLhIuNO').update({'name':name.text});
 
}