import 'package:admin/constants/colors.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/orders/cancelled.dart';
import 'package:admin/presentation/orders/delivered.dart';
import 'package:admin/presentation/orders/out_of_delivery.dart';
import 'package:admin/presentation/orders/processing.dart';


import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    currentIndex=4;
    return DefaultTabController( 
        length: 4,
        child: Scaffold(
          drawer: Sidebar(),
            appBar: AppBar(
              title: const Text('O R D E R S'),
              // centerTitle: true,
              bottom: TabBar( isScrollable: true,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: tabBarlightBlue),
                  tabs: const [
                    Tab(text: 'Processing'),
                    Tab(text: 'Out of Delivery'),
                    Tab(text: 'Delivered'),
                   
                    Tab(text: 'Cancelled'),
                  ],),
            ),
            body:const TabBarView(children:  [
              ProcessingOrders(),
              OutOfDelivery(),
              DeliveredOrders(),
            
              CancelledOrder()
            ])));
  }
}
