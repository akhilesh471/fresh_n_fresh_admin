
import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:flutter/material.dart';

class DeliveredOrders extends StatefulWidget {
  const DeliveredOrders({Key? key}) : super(key: key);

  @override
  State<DeliveredOrders> createState() => _DeliveredOrdersState();
}

class _DeliveredOrdersState extends State<DeliveredOrders> {
String dropdownvalue = 'O-Delivery';

  // List of items in our dropdown menu
  var items = [
    'O-Delivery',
    'Delivered',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(decoration: new BoxDecoration(
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),
        ],
      ),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Row(
                      children: [CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU'),
              ),
            ),sizeW10,
                        Text('Lakshmi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      ],
                    ),Divider(),Row(
                        children: [
                          Text('Address:', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          Container(
                            width: width * 0.74,
                            child: Text('Lakshmivilla,Kochi,Kerala,India,671226', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,)),
                          ),
                        ],
                      ),
                      sizeH5,
                      Text('Number: 9048023708', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                      sizeH5,
                      Text('Email: Lakshmi@gmail.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)), Divider(
                        thickness: 2,
                      ),
                      Text(
                        'Order Id: 93849704083243',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      sizeH5,
                      Text(
                        'Product Id:088937679769769',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      sizeH5,
                      Text(
                        'Date: 2022-05-07 ',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            ),
                      ),
                     sizeH5,
                      
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Quantity: 2kg',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                          
                        ],
                      ),
                      sizeH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Amount: ₹160',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                          
                          Container(
                            height: height * 0.06,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                                color: tabBarlightBlue,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(child: const Text('Delivered',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),))
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}