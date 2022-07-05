
import 'package:admin/core/colors.dart';
import 'package:admin/core/size.dart';
import 'package:flutter/material.dart';

class AllRequests extends StatefulWidget {
  const AllRequests({Key? key}) : super(key: key);

  @override
  State<AllRequests> createState() => _AllRequestsState();
}

class _AllRequestsState extends State<AllRequests> {
  String dropdownvalue = 'Accepted';

  // List of items in our dropdown menu
  var items = [
  
    'Accepted',
    'Collected',
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
            child: Container(
              decoration:const BoxDecoration(
                boxShadow:[
                  BoxShadow(
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
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: ClipOval(
                              child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU'),
                            ),
                          ),
                          sizeW10,
                        const  Text('Lakshmi',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Text('Address:',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                          Container(
                            width: width * 0.74,
                            child:
                                Text('Lakshmivilla,Kochi,Kerala,India,671226',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    )),
                          ),
                        ],
                      ),
                      sizeH5,
                      Text('Number: 9048023708',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      sizeH5,
                      Text('Email: Lakshmi@gmail.com',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        children:const [
                          Text(
                            'Product Name: ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Tomato',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ],
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
                          Text('Quantity: 200kg',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      sizeH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Amount: ₹16000',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500)),
                          Container(
                            height: height * 0.06,
                            width: width * 0.37,
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 26),
                                    child: Text(items,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
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
