
import 'package:admin/presentation/Navbar/sidebar.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const Sidebar(),
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      body:const SafeArea(child: Center()),
    );
  }
}
