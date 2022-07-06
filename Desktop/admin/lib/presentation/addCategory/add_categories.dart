import 'package:admin/application/add_category/category_bloc.dart';
import 'package:admin/application/add_products/add_products_bloc.dart';
import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:admin/domain/add_catagories/models/category_model.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AddCategory extends StatelessWidget {
  AddCategory({Key? key}) : super(key: key);
  final TextEditingController _categoryController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CategoryBloc>(context)
          .add(const CategoryEvent.getCategoryList());
      
   
      currentIndex = 1;
    });

    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        titleSpacing: 1,
        title: const Text('Add Category'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: TextFormField(
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Field Required';
                    }
                    else{
                      return null;
                    }
                  }),
                  controller: _categoryController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Category'),
                ),
              ),
            ),
            sizeH10,
            ElevatedButton(
              onPressed: () {
                final model = Category(name: _categoryController.text);
                if(formkey.currentState!.validate()){
                context
                    .read<CategoryBloc>()
                    .add(CategoryEvent.addCategoryList(model: model));
                }
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17.0),
              ))),
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20),
              ),
            ),
            sizeH15,
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return state.isLoading
                    ? const CircularProgressIndicator()
                    : ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: ListTile(
                                tileColor: tilecolor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                title: Text(
                                  '${state.categoryList[index].name}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {
                                      var id = state.categoryList[index].id
                                          .toString();
                                      deletePopup(context, id);
                                    },
                                    icon:
                                        const Icon(Icons.delete_forever_sharp)),
                              ));
                        },
                        itemCount: state.categoryList.length,
                      );
              },
            )
          ],
        )),
      ),
    );
  }
}

Future<void> deletePopup(BuildContext context, var id) {
  return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Delete'),
          content: const Text('Do you want to delete? '),
          actions: [
            TextButton(
                onPressed: () {
                  context
                      .read<CategoryBloc>()
                      .add(CategoryEvent.deleteCategoryList(id: id));
                  Navigator.of(context).pop();
                },
                child: const Text('Yes')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('No'))
          ],
        );
      });
}
