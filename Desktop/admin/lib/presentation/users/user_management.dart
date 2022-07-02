import 'package:admin/constants/colors.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/users/blocked_users.dart';
import 'package:admin/presentation/users/users.dart';
import 'package:flutter/material.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    Tab(text: 'Users'),
                    Tab(text: 'Blocked Users'),
                  ]),
            ),
            body:const TabBarView(children: [Users(), BlockedUsers()])));
  }
}
