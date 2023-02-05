import 'dart:convert';

class Product {
   Product({
    required this.title,
    this.titleDescription,
    required this.descriptions,
    this.price,
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
  final String? price;//baasy
  final String? whatsapp;
  final String phone;
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
      images: List<dynamic>.from(map['photos']),
      title: map['title'] ?? '',
      titleDescription: map['titleDescription'],
      descriptions: map['descriptions'] ?? '',
      whatsapp: map['whatsapp'],
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
