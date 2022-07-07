
// import 'package:admin/application/add_products/add_products_bloc.dart';
// import 'package:admin/core/size.dart';
// import 'package:admin/presentation/add_products/addproducts.dart';
// import 'package:admin/presentation/add_products/widgets/widgets.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class ViewProducts extends StatefulWidget {
//   const ViewProducts({Key? key, required this.num}) : super(key: key);
//   final int num;

//   @override
//   State<ViewProducts> createState() => _ViewProductsState();
// }

// class _ViewProductsState extends State<ViewProducts> {
//   int activeIndex = 0;
//   final urlImages = [
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;

//     return Scaffold(body: SafeArea(
//       child: BlocBuilder<AddProductsBloc, AddProductsState>(
//           builder: (context, state) {
//         return ListView(
//           children: [
//             SizedBox(
//                 height: height * 0.31,
//                 width: double.infinity,
//                 child: Column(
//                   children: [
//                     CarouselSlider.builder(
//                         itemCount: state.productList[widget.num].image!.length,
//                         itemBuilder: (context, index, realIndex) {
//                           final urlImage =
//                               state.productList[widget.num].image![index];
//                           return buildImage(urlImage, index);
//                         },
//                         options: CarouselOptions(
//                             height: height * 0.26,
//                             autoPlay: true,
//                             reverse: true,
//                             // autoPlayInterval: Duration(seconds: 5),
//                             enableInfiniteScroll: false,
//                             viewportFraction: 1,
//                             onPageChanged: (index, reason) => setState(
//                                   () => activeIndex = index,
//                                 ))),
//                     SizedBox(
//                       height: height * 0.02,
//                     ),
//                     buildIndicator(state.productList[widget.num].image!.length),
//                   ],
//                 )),
//             Container(
//               decoration: BoxDecoration(
//                   border: Border.all(width: 2),
//                   borderRadius: const BorderRadius.only(
//                       topLeft: Radius.circular(30),
//                       topRight: Radius.circular(30)),
//                   color: Color.fromRGBO(159, 209, 241, 1)),
//               height: height * 1.12,
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     productDetails('Name: '),
//                     sizeH10,
//                     Row(
//                       children: [
//                         TextBoxContainer(
//                             width: width,
//                             height: height * 0.056,
//                             text: state.productList[widget.num].name),
//                       ],
//                     ),
//                     sizeH15,
//                     productDetails('Id: '),
//                     sizeH10,
//                     Row(
//                       children: [
//                         TextBoxContainer(
//                           width: width,
//                           height: height * 0.056,
//                           text: state.productList[widget.num].id!,
//                         ),
//                       ],
//                     ),
//                     sizeH15,
//                     productDetails('Category: '),
//                     sizeH10,
//                     Row(
//                       children: [
//                         TextBoxContainer(
//                             width: width,
//                             height: height * 0.056,
//                             text: state.productList[widget.num].category),
//                       ],
//                     ),
//                     sizeH15,
//                     productDetails('Quantity: '),
//                     sizeH10,
//                     Row(
//                       children: [
//                         TextBoxContainer(
//                             width: width,
//                             height: height * 0.056,
//                             text: state.productList[widget.num].quantity),
//                       ],
//                     ),
//                     sizeH15,
//                     productDetails('Units:'),
//                     sizeH10,
//                     Row(
//                       children: [
//                         TextBoxContainer(
//                             width: width,
//                             height: height * 0.056,
//                             text: state.productList[widget.num].units),
//                       ],
//                     ),
//                     sizeH15,
//                     productDetails('Price: '),
//                     sizeH10,
//                     Row(
//                       children: [
//                         TextBoxContainer(
//                             width: width,
//                             height: height * 0.056,
//                             text: '₹ ${state.productList[widget.num].price}'),
//                       ],
//                     ),
//                     sizeH15,
//                     productDetails('Description: '),
//                     sizeH10,
//                     Row(
//                       children: [
//                         sizeW10,
//                         Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white,
//                               border: Border.all(width: 2),
//                               borderRadius: BorderRadius.circular(15)),
//                           width: width * 0.9,
//                           height: height * 0.26,
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 8.0),
//                             child: Column(children: [
//                               Row(
//                                 children: [
//                                   sizeW10,
//                                   Expanded(
//                                     child: Text(
//                                       state.productList[widget.num].description,
//                                       style: const TextStyle(
//                                           fontSize: 15,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ]),
//                           ),
//                         ),
//                       ],
//                     ),
//                     sizeH15,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         ElevatedButton.icon(
//                           onPressed: () {},
//                           icon: const Icon(Icons.edit),
//                           label: const Text(
//                             'Edit',
//                             style: TextStyle(fontSize: 19),
//                           ),
//                         ),
//                         ElevatedButton.icon(
//                           onPressed: () {},
//                           icon: const Icon(Icons.delete),
//                           label: const Text(
//                             'Delete',
//                             style: TextStyle(fontSize: 19),
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         );
//       }),
//     ));
//   }

//   Widget buildImage(String urlImage, int index) {
//     return Container(
//       width: double.infinity,
//       color: Colors.grey,
//       child: Image.network(
//         urlImage,
//         fit: BoxFit.fill,
//       ),
//     );
//   }

//   Widget buildIndicator(int length) {
//     return AnimatedSmoothIndicator(
//       activeIndex: activeIndex,
//       count: length,
//       effect: const ExpandingDotsEffect(dotWidth: 15, dotHeight: 15),
//     );
//   }
// }
