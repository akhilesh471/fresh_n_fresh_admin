import 'package:cloud_firestore/cloud_firestore.dart';

class Category {
  final String? id;
  final String name;
  Category({required this.name, this.id});

  Category.fromJson(Map<String, dynamic> json)
      : this(id: json['id'], name: json['name']);
      
  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}

final categoryRef = FirebaseFirestore.instance
    .collection('categories')
    .withConverter<Category>(
        fromFirestore: ((snapshot, _) => Category.fromJson(snapshot.data()!)),
        toFirestore: (category, _) => category.toJson());
