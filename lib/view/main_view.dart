import 'package:flutter/material.dart';
import '../buttons/advert_inkwell.dart';
import '../constants/app_text.dart';
import 'drawer_view/drawer_view.dart';
import 'login_view/login_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _title = TextEditingController();
  final _titleDescription = TextEditingController();
  final _descriptions = TextEditingController();
  final _phone = TextEditingController();
  final _userName = TextEditingController();
  final _address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const LoginView(),
                    ));
              },
              icon: const Icon(Icons.add)),
        ],),
        
        drawer: const DrawerDrawer(),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          children:const [
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
                SizedBox(height: 12,),
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
                SizedBox(height: 12,),
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
                SizedBox(height: 12,),
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
//          
          ]
        ));
  }
}

class TexttformField extends StatelessWidget {
  const TexttformField({
    Key? key,
    this.hintText,
    this.controller,
    this.maxLines,
    this.onTap,
  }) : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}

//  Padding(
//         padding:
//             const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
//         child: ListView(
//           children: const [
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
//           ],
//         ),
//       ),

// body:GridView.count(
//   primary: false,
//   padding: const EdgeInsets.all(20),
//   crossAxisSpacing: 10,
//   mainAxisSpacing: 10,
//   crossAxisCount: 2,
//   children: <Widget>[
//     Container(
//       // padding: const EdgeInsets.all(3),
//       // color: AppColors.backgroundColor,
//       child: Column(
//         children: [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
//     Container(
//       // padding: const EdgeInsets.all(3),
//     //  color: AppColors.backgroundColor,
//       child:  Column(
//         children: [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
//     Container(
//       // padding: const EdgeInsets.all(3),
//       // color: AppColors.backgroundColor,
//       child:  Column(
//         children:const [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
//     Container(
//       // padding: const EdgeInsets.all(3),
//     //  color: AppColors.backgroundColor,
//       child:  Column(
//         children:const [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
//     Container(
//       // padding: const EdgeInsets.all(0),
//     //  color: AppColors.backgroundColor,
//       child:  Column(
//         children: [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
//     Container(
//       // padding: const EdgeInsets.all(0),
//       // color: AppColors.backgroundColor,
//       child:  Column(
//         children: [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
//     Container(
//       // padding: const EdgeInsets.all(0),
//       // color: AppColors.backgroundColor,
//       child:  Column(
//         children: [
//           AdvertListInkWell(
//               title: AppText.title, price: AppText.price, data: AppText.data),
//         ],
//       ),
//     ),
 
