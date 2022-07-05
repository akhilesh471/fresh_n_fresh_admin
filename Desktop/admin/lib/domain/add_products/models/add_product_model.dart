class Products {
  final String? id;
  final String category;
  final String name;
  final String quantity;
  final String price;
  final String units;
  final String description;
  final String? image;

  Products(
      {
      required this.category,
      required this.name,
      required this.quantity,
      required this.price,
      required this.units,
      required this.description,
     this.image,this.id,});

  //      static Category fromJson(Map<String, dynamic> json){
  //   return Category(id: json['id'],name: json['name']);
  // }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category': category,
      'name': name,
      'quantity': quantity,
      'price': price,
      'units': units,
      'description': description,
      'image': image
    };
  }


}
