import 'dart:convert';

class Product {
   Product({
    required this.title,
    this.titleDescription,
    required this.descriptions,
    required this.price,
    this.whatsapp,
    required this.phone,
    this.images,
    required this.userName,
    this.data,
    this.address,
    this.advertCategory,
  });

  final String title;
  final String? titleDescription; //atalush
  final String descriptions;
  final String? whatsapp;
  final String phone;
  final String price;//baasy
  final List<dynamic>? images;
  final String? data;
  final String userName;
  final String? address;
  final String? advertCategory;



  Map<String, dynamic> toMap() {
    return   <String, dynamic>{
      
      'title': title,
      'titleDescription': titleDescription,
      'descriptions': descriptions,
      'whatsapp': whatsapp,
      'price': price,
      'phone': phone,
      'photos': images,
      'data': data,
      'userName': userName,
      'address': address,
      'advertCategory': advertCategory
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      images:map['images'] != null ? List<String>.from((map['images'] as List<dynamic>)) : null,
      title: map['title'] ?? '',
      titleDescription: map['titleDescription'],
      descriptions: map['descriptions'] ?? '',
      whatsapp: map['whatsapp'],
      price: map['price'] ?? '',
      phone: map['phone'] ?? '',
      data: map['data'],
      userName: map['userName'] ?? '',
      address: map['address'],
      advertCategory: map['advertCategory'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));
}
