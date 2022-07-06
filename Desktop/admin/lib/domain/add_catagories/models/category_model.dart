import 'package:cloud_firestore/cloud_firestore.dart';

final categoryRef = FirebaseFirestore.instance.collection('categories').doc();

class Category {
  final String? id;
  final String name;
  Category({required this.name, this.id});

  static Category fromJson(Map<String, dynamic> json) {
    return Category(id: json['id'], name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'id': id};
  }
}

    // .withConverter<Category>(
    //     fromFirestore: ((snapshot, _) => Category.fromJson(snapshot.data()!)),
    //     toFirestore: (category, _) => category.toJson());
