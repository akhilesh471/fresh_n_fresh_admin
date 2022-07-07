import 'package:admin/application/add_products/add_products_bloc.dart';
import 'package:admin/core/colors.dart';
import 'package:admin/presentation/add_products/view_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewListProducts extends StatelessWidget {
  const ViewListProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocBuilder<AddProductsBloc, AddProductsState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.productList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  onTap: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return ViewProducts(num: index,);
                    }));
                  }),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  // selectedTileColor:const Color.fromARGB(255, 218, 216, 216),
                  tileColor: tilecolor,

                  leading: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage(state.productList[0].image![0])),
                  title: Text('${state.productList[index].name}'),
                  subtitle: Text('${state.productList[index].category}'),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_forever_rounded,
                        color: Colors.red,
                      )),
                ),
              );
            },
          );
        },
      )),
    );
  }
}
