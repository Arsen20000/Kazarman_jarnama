import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'drawer_view/drawer_view.dart';
import 'login_view/login_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  Stream<QuerySnapshot> readTodos() {
    final db = FirebaseFirestore.instance;
    return db.collection('product').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginView(),
                    ));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      drawer: const DrawerDrawer(),
      body: StreamBuilder<QuerySnapshot>(
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return const Center(child: CupertinoActivityIndicator(),);
          } else if (snapshot.hasError) {
            return Center( child: Text(snapshot.error!.toString()),);
          } else if (snapshot.hasData) {
            final List<Product> products = snapshot.data!.docs
                .map((dmic) =>
                    Product.fromMap(dmic.data() as Map<String, dynamic>))
                .toList();
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final product = products[index];
                return Card(
                    child: Column(
                  children: [
                    product.images != null?
                    SizedBox(
                      height: 200,
                      child: PageView.builder(
                        itemCount: product.images!.length,
                        itemBuilder: (context, index) {
                          final image = product.images![index];
                          return Image.network(image);
                        },
                      ),
                    ) : const SizedBox()
                  ],
                ));
              },
            );
          } else {
            return const Center(
              child: Text('bilbeim kata'),
            );
          }
        }),
      ),
    );
  }
}

// ListView(
//           padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
//           children:const [
//             AdvertListInkWell(
//                 title: AppText.title, price: AppText.price, data: AppText.data),
//                 SizedBox(height: 12,),
//             AdvertListInkWell(
//                 title: AppText.title, price: AppText.price, data: AppText.data),
//                 SizedBox(height: 12,),
//             AdvertListInkWell(
//                 title: AppText.title, price: AppText.price, data: AppText.data),
//                 SizedBox(height: 12,),
//             AdvertListInkWell(
//                 title: AppText.title, price: AppText.price, data: AppText.data),
// //
//           ]
//         )


