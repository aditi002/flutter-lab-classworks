// import 'package:flutter/material.dart';


// class SiView extends StatefulWidget {
//   const SiView({super.key});

//   @override
//   State<SiView> createState() => _SiViewState();
// }

// class _SiViewState extends State<SiView> {
//   final principleController = TextEditingController();
//   final rateController = TextEditingController();
//   final timeController = TextEditingController();
//   double simpleInterest=0;

  
//   @override
//   void initState() {
//     principleController.text = '67';
//     rateController.text = '89';
//     timeController.text = '89';
//     super.initState();
//   }
//   @override
//   void dispose() {
//     principleController.dispose();
//     rateController.dispose();
//     timeController.dispose();
//     super.dispose();
//   }
//    void SimpleInterest{
    
//     setState((){
//         simpleInterest= int.parse(principleController.text * rateController.text *timeController.text)/100;
//     });
//   }
//   final myKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Simple Interest Calculator'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('Enter Principal Amount'),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: principleController,
//                   keyboardType: TextInputType.number,
//               ),
//               const SizedBox(height: 10),
//               const Text('Enter Rate of Interest'),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: rateController,
//                   keyboardType: TextInputType.number,
//               ),
//               const SizedBox(height: 10),
//               const Text('Enter Time Period (in years)'),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: timeController,
//                   keyboardType: TextInputType.number,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                      if(myKey.currentState!.validate()){
//                         add();
//                       }
                      
//                     });
//                   },
//                 child: const Text('Calculate Simple Interest'),
//               ),
//               const SizedBox(height: 10),
//               Text('Simple Interest: $simpleInterest'),
//             ],
//           ),
//         ),
//       );
//   }
// }