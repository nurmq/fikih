// part of 'ui.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isSearching = false;
//   TextEditingController searchText = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: !isSearching
//             ? Text("Aplikasi Belajar Fikih")
//             : TextField(
//                 controller: searchText,
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//                 decoration: InputDecoration(
//                   hintText: "Tulis fikih / kata yang ingin dicari",
//                   hintStyle: TextStyle(color: Colors.black),
//                 ),
//                 onSubmitted: (value) {},
//               ),
//         flexibleSpace: Container(
//             decoration: BoxDecoration(
//                 color: primaryColor)),
//         actions: [
//           IconButton(
//               icon: !isSearching
//                   ? Icon(Icons.search, color: Colors.white)
//                   : Icon(Icons.cancel),
//               onPressed: () {
//                 setState(() {
//                   this.isSearching = !this.isSearching;
//                 });
//               })
//         ],
//       ),
//       body: ListView(children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 300,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       colors: [Colors.lightGreen[500], Colors.cyan[700]])),
//               child: CarouselSlider(
//                 options: CarouselOptions(
//                     height: 250, autoPlay: true, viewportFraction: 1),
//                 items: [
//                   "https://rumaysho.com/wp-content/uploads/2019/04/Banner-Buku-Matan-Abu-Syuja-800-x-451-pixel-tanpa-tulisan.jpg",
//                   "https://i.ytimg.com/vi/vEFromsUO2Y/maxresdefault.jpg",
//                   "https://i.ytimg.com/vi/iZQhx7dhdQo/maxresdefault.jpg"
//                 ].map((i) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                           width: MediaQuery.of(context).size.width,
//                           margin: EdgeInsets.symmetric(horizontal: 10.0),
//                           decoration: BoxDecoration(
//                               image: DecorationImage(
//                                   image: NetworkImage(i, scale: 1),
//                                   fit: BoxFit.cover),
//                               borderRadius: BorderRadius.circular(20)));
//                     },
//                   );
//                 }).toList(),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Semua Fikih",
//                       style:
//                           TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 10),
//                   Container(
//                     height: 200,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://rumaysho.com/wp-content/uploads/2019/04/Banner-Buku-Matan-Abu-Syuja-800-x-451-pixel-tanpa-tulisan.jpg",
//                                 scale: 1),
//                             fit: BoxFit.cover),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Stack(alignment: Alignment.bottomLeft, children: [
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(12),
//                             ),
//                             color: Colors.white60),
//                         child: Text("Fikih Wudhu",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                       ),
//                     ]),
//                   ),
//                   SizedBox(height: 30),
//                   Container(
//                     height: 200,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://rumaysho.com/wp-content/uploads/2019/04/Banner-Buku-Matan-Abu-Syuja-800-x-451-pixel-tanpa-tulisan.jpg",
//                                 scale: 1),
//                             fit: BoxFit.cover),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Stack(alignment: Alignment.bottomLeft, children: [
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(12),
//                             ),
//                             color: Colors.white60),
//                         child: Text("Fikih Wudhu",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                       ),
//                     ]),
//                   ),
//                   SizedBox(height: 30),
//                   Container(
//                     height: 200,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://rumaysho.com/wp-content/uploads/2019/04/Banner-Buku-Matan-Abu-Syuja-800-x-451-pixel-tanpa-tulisan.jpg",
//                                 scale: 1),
//                             fit: BoxFit.cover),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Stack(alignment: Alignment.bottomLeft, children: [
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(12),
//                             ),
//                             color: Colors.white60),
//                         child: Text("Fikih Wudhu",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//                       ),
//                     ]),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ]),
//     );
//   }
// }
