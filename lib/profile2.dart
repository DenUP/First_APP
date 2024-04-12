// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//           child: Container(
//         width: 341,
//         height: 91,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(4),
//             shape: BoxShape.rectangle,
//             color: const Color.fromRGBO(5, 96, 250, 1)),
//         child: CustomMultiChildLayout(
//           delegate: OwnMultiChildLayoutDelegate(),
//           children: [
//             LayoutId(id: 1, child: Image.asset('assets/images/Ellipse1.png')),
//             LayoutId(id: 2, child: Image.asset('assets/images/Ellipse2.png')),
//           ],
//         ),
//       )),
//     );
//   }
// }

// class OwnMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
//   @override
//   void performLayout(Size size) {
//     final Elipse1 = hasChild(1);
//     final Elipse2 = hasChild(2);
//   }

//   @override
//   bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
//     // TODO: implement shouldRelayout
//     throw true;
//   }
// }
