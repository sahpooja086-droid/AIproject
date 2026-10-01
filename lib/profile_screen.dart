// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("Pooja2026"),
//         leading: const Icon(Icons.arrow_back_ios),
//         actions: const [
//           Icon(Icons.more_horiz),
//         ],
//       ),
//
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//
//               // Profile Image
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: Image.asset(
//                   "assets/images/img.png",
//                   height: 100,
//                   width: 100,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//
//               // Posts
//               const Column(
//                 children: [
//                   Text("174"),
//                   Text("Posts"),
//                 ],
//               ),
//
//               // Followers
//               const Column(
//                 children: [
//                   Text("700k"),
//                   Text("Follower"),
//                 ],
//               ),
//
//               // Following
//               const Column(
//                 children: [
//                   Text(
//                     "700",
//                     style: TextStyle(
//                       fontStyle: FontStyle.italic,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 21,
//                       color: Colors.red,
//                     ),
//                   ),
//                   Text("Following"),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }