import 'package:flutter/material.dart';

class BlockedUsers extends StatelessWidget {
  const BlockedUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 12),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              title: const Text(
                'Lakshmi',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: const Text('9834503021'),
              trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Unblock'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 109, 208, 113))),
              selected: true,
              selectedTileColor: const Color.fromARGB(255, 218, 216, 216),
              selectedColor: Colors.black,
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUqRADWamnho5VxegH9AzwjsHZ8TQMvqD3Rg&usqp=CAU')),
            ),
          );
        });
  }
}
