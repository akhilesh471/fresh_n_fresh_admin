
import 'package:admin/core/colors.dart';
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/sell_requests/all_requests.dart';
import 'package:admin/presentation/sell_requests/approved_requests.dart';
import 'package:admin/presentation/sell_requests/collected_items.dart';

import 'package:flutter/material.dart';

class SellRequests extends StatelessWidget {
  const SellRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    currentIndex=5;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Sidebar(),
            appBar: AppBar(
              title:const Text('S E L L  R E Q U E S T S '),
              // centerTitle: true,
              bottom: TabBar(
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: tabBarlightBlue),
                  tabs:const [
                    Tab(text: 'All Requests'),
                    Tab(text: 'Accepted'),
                    Tab(text: 'Collected'),
                  ]),
            ),
            body:const TabBarView(children: [AllRequests(), ApprovedRequests(),CollectedItems()])));
  }
}