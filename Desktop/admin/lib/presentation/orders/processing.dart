
import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:flutter/material.dart';

class ProcessingOrders extends StatefulWidget {
  const ProcessingOrders({Key? key}) : super(key: key);

  @override
  State<ProcessingOrders> createState() => _ProcessingOrdersState();
}

class _ProcessingOrdersState extends State<ProcessingOrders> {
  String dropdownvalue = 'Processing';

  // List of items in our dropdown menu
  var items = [
    'Processing',
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
                            child: DropdownButton(
                              isExpanded: true,
                            
                              value: dropdownvalue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 26),
                                    child: Text(items,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
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
