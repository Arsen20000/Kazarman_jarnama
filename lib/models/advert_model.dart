class Advert {
   Advert({
    required this.title,
    this.titleDescription,
    required this.descriptions,
    this.price,
    this.whatsapp,
    this.telegram,
    this.phone,
    this.youtube,
    this.photos,
    required this.user,
    this.data,
    this.address,
    this.website,
    this.email,
    this.advertCategory,
  });

  final String title;
  final String? titleDescription; //atalush
  final String descriptions;
  final String? price;//baasy
  final String? whatsapp;
  final String? telegram;
  final String? phone;
  final String? youtube;
  final List<dynamic>? photos;
  final String? data;
  final String user;
  final String? address;
  final String? website;
  final String? email;
  final String? advertCategory;


}
