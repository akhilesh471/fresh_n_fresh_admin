
import 'package:admin/presentation/Navbar/sidebar.dart';
import 'package:admin/presentation/add_sell_items/add_sell_items.dart';
import 'package:flutter/material.dart';

class ViewSellItems extends StatelessWidget {
  const ViewSellItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    currentIndex = 3;
    return Scaffold(
      appBar: AppBar(title: Text('V I E W  I T E M S')),
      drawer: Sidebar(),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      tileColor: Color.fromARGB(255, 89, 140, 157),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: Text(
                        'Apple',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 19),
                      ),
                      subtitle: Text('120 /kg'),
                      trailing:
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    ),
                  );
                }),
              ),
            ),
            Container(
                color: Colors.white,
                width: double.infinity,
                child: FloatingActionButton(
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                    return AddSellItems();
                  })));},
                  child: Icon(Icons.add),
                ))
          ],
        ),
      ),
    );
  }
}
