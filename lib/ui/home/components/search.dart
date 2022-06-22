// import 'package:flutter/material.dart';

// class SearchTextField extends StatelessWidget {
//   const SearchTextField({
//     Key? key,
//     required TextEditingController controller,
//   })  : _controller = controller,
//         super(key: key);

//   final TextEditingController _controller;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         border: Border.all(width: 1.0),
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       child: TextField(
//         controller: _controller,
//         autofocus: true,
//         decoration: const InputDecoration(
//           border: InputBorder.none,
//           contentPadding:
//               EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
//           hintText: 'Enter Your City Name',
//           prefixIcon: Icon(Icons.search),
//         ),
//       ),
//     );
//   }
// }
