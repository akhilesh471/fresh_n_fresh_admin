import 'package:admin/presentation/addCategory/add_categories.dart';
import 'package:admin/presentation/add_products/addproducts.dart';
import 'package:admin/presentation/add_sell_items/view_sell_items.dart';
import 'package:admin/presentation/orders/orders.dart';
import 'package:admin/presentation/sell_requests/sell_requests.dart';
import 'package:admin/presentation/users/user_management.dart';
import 'package:flutter/material.dart';

var currentIndex = 0;

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Admin'),
            accountEmail: const Text('admin123@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/906/906343.png'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 8, right: 8),
              itemBuilder: (context, index) {
                return listMenu(
                  menu[index],
                  menuIcons[index],
                  index,
                  (() {
                    setState(() {
                      currentIndex = index;
                    });
                    if (index == 0) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const UserManagement();
                      }));
                    } else if (index == 1) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return  AddCategory();
                      }));
                    }
                     else if (index == 2) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const AddProducts();
                      }));
                    }
                     else if (index == 3) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const ViewSellItems()  ;
                      }));
                    }
                     else if (index == 4) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const Orders();
                      }));
                    }
                     else if (index == 5) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return const SellRequests();
                      }));
                    }
                  }),
                );
              },
              itemCount: menu.length,
            ),
          )
        ],
      ),
    );
  }

  ListTile listMenu(
      String text, IconData icon, int index, VoidCallback function) {
    return ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        selectedTileColor: const Color.fromRGBO(142, 198, 235, 1),
        selected: currentIndex == index ? true : false,
        selectedColor: Colors.black,
        onTap: function);
  }
}

List<String> menu = [
  'Users',
  'Add Categories',
  'Add Products',
  'Add Sell Items',
  'Orders',
  'Sell Requests',
  'Logout'
];
List<IconData> menuIcons = [
  Icons.people,
  Icons.category_outlined,
  Icons.add_shopping_cart_outlined,
  Icons.present_to_all_rounded,
  Icons.list_alt_outlined,
  Icons.sell,
  Icons.logout
];
