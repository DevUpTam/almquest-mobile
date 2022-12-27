// import 'package:getwidget/getwidget.dart'; 
// GFCard(
//         boxFit: BoxFit.contain,
//         margin: const EdgeInsets.fromLTRB(20, 100, 20, 100),
//         padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
//         titlePosition: GFPosition.start,
//         color: kBackgroundColor,
//         elevation: 20,
//         border: const Border(
//           top: BorderSide(color: Color(0xFFFFFFFF)),
//           left: BorderSide(color: Color(0xFFFFFFFF)),
//           right: BorderSide(),
//           bottom: BorderSide(),
//         ),
//         image: Image.network(
//           'https://images.pexels.com/photos/6994946/pexels-photo-6994946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//           height: MediaQuery.of(context).size.height * 0.25,
//           width: MediaQuery.of(context).size.width,
//           fit: BoxFit.cover,
//         ),
//         showImage: true,
//         content: const Text(
//           "Help Us Make the World a Better Place",
//           style: TextStyle(
//               fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white70),
//           textAlign: TextAlign.center,
//         ),
//         buttonBar: GFButtonBar(
//           children: <Widget>[
//             const SizedBox(
//               height: 100,
//             ),
//             GFButton(
//               onPressed: () {
//                 Get.to(() => Register());
//               },
//               text: "Join Us In Our Quest",
//               size: GFSize.LARGE,
//               type: GFButtonType.outline,
//               textColor: Colors.white,
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             ),
//           ],
//         ),
//       ),