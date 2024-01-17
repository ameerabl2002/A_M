// import 'package:flutter/material.dart';
// import 'package:myflat/MyColors.dart';
//
//
// class Home_pro extends StatefulWidget {
//   const Home_pro({Key? key}) : super(key: key);
//
//   @override
//   State<Home_pro> createState() => _Home_proState();
// }
//
// class _Home_proState extends State<Home_pro> {
//   @override
//   int x=0;
//
//   Widget build(BuildContext context) {
//     MaterialButton man =myBut("الملابس الرجالية");
//     MaterialButton women=myBut("الملابس النسائية");
//     MaterialButton kidis =myBut("لملابس الاطفال");
//
//     return DefaultTabController(
//       length: 4,
//         child:Scaffold(
//
//           bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: MyColors.green,
//             selectedItemColor: MyColors.wh,
//             selectedFontSize: 15,
//
//             onTap: (index){
//           setState(() {
//             x=index;
//           });
//             },
//             currentIndex: x,
//             items: [
//
//               BottomNavigationBarItem(icon:Icon(Icons.dashboard_customize),label: "الاهدادت"),
//
//               BottomNavigationBarItem(icon:Icon(Icons.production_quantity_limits),label: "المنتجات"),
//               BottomNavigationBarItem(icon:Icon(Icons.home),label: "الرئسية"),
//             ],
//           ),
//
//           drawer: Drawer(
//           ),
//           appBar: AppBar(
//
//             title:Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: 10),
//                   child: Text("  منتجات المتجر  ",style: TextStyle(fontSize: 20)),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: MyColors.wh,width:2),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 )
//               ],
//             ),
//             backgroundColor: MyColors.green,
//             bottom: TabBar(
//               isScrollable: true,
//               tabs: [
//                 Tab(
//                   child: Text("الملابس",style: TextStyle(fontSize: 20)),
//                   icon: Icon(Icons.checkroom_outlined),
//                 ),
//                 Tab(
//                   child: Text("الاثاث",style: TextStyle(fontSize: 20)),
//                   icon: Icon(Icons.checkroom_outlined),
//                 ),
//                 Tab(
//                   child: Text("الادوات المنزلية",style: TextStyle(fontSize: 20)),
//                   icon: Icon(Icons.checkroom_outlined),
//                 ),
//                 Tab(
//                   child: Text("الهواتف",style: TextStyle(fontSize: 20)),
//                   icon: Icon(Icons.checkroom_outlined),
//                 ),
//               ],
//             ),
//           ),
//         body: TabBarView(
//           children: [
//
//             ListView(
//          children: [
//         man,
//            women,
//            kidis,
//          ],
//           ),
//
//         ]
//         ),
//
//     ),
//
//     );
//
//   }
//
//   MaterialButton myBut(String n)
//   {
//
//     MaterialButton m= new  MaterialButton(
//       onPressed: (){},
//       child: Column(
//         children: [
//           Container(
//             height: 70,
//             margin: EdgeInsets.only(top: 15),
//             decoration: BoxDecoration(
//               color: MyColors.green,
//               border: Border.all(color:MyColors.wh),
//               borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
//
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.arrow_left_outlined,
//                   color: MyColors.wh,
//                   size: 70,
//                 ),
//                 Text(n,style: TextStyle(fontSize: 40,
//                   color: MyColors.wh,
//                 ),
//                 ),
//                 // Icon(Icons.production_quantity_limits,size: 50,
//                 //     color: MyColors.wh,),
//
//               ],
//             ),
//           ),
//           Divider(thickness: 2,color: MyColors.green,)
//         ],
//       ),
//     );
//     return m;
//   }
// }
//
