import 'package:admin/application/add_products/add_products_bloc.dart';
import 'package:admin/core/colors.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/add_products/addproducts.dart';
import 'package:admin/presentation/add_products/view_list_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductsTabbar extends StatelessWidget {
  const AddProductsTabbar({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
      BlocProvider.of<AddProductsBloc>(context)
          .add(const AddProductsEvent.getAllProducts());
    currentIndex=0;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Sidebar(),
            appBar: AppBar(
              title:const Text('T A B  B A R'),
              // centerTitle: true,
              bottom: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: tabBarlightBlue),
                  tabs:const [
                    Tab(text: 'Add Products'),
                    Tab(text: 'View Products'),
                  ]),
            ),
            body: TabBarView(children: [AddProducts(), ViewListProducts()])));
  }
}