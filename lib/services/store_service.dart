import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/product_model.dart';

class StoreService {
  final db = FirebaseFirestore.instance;

  Future<void> saveProduct(Product product) async {
    await db.collection("proucts").add(product.toMap());
  }
}
