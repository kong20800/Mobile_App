import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter layout demo',
//       home:  buildQuiz()
//     );
//   }
// }

class University extends StatelessWidget {
  final String name;
  final Color tone;
  const University(this.name, this.tone);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
          color: tone,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(10),
          child: Text(name, textAlign: TextAlign.center,)
    );
  }
}

class TapBoxC extends StatefulWidget {
  final String name;
  final Color tone;
  final bool answer;
  const TapBoxC({Key? key, required this.name, required this.tone, required this.answer}) : super(key: key);

  @override
  _TapBoxCState createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _active = false;
  bool _activescore =false;
  Color _activecolor = Colors.red;
  // String _activetext = "Your score is 0";

  void _handleTap(){
    setState(() {
      _active = !_active;
      // _activescore = !_activescore;
    });
    if (widget.answer){
      _activecolor = Colors.green;
      // _activetext = "Your score is 1";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _activescore ? null
          :(){
        _handleTap();
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text(_activetext),
        // duration: const Duration(seconds: 1),));
      },
        child: Container(
            width: 200,
            color: _active? _activecolor : widget.tone,
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
            child: Text(widget.name,
              textAlign: TextAlign.center),
        )
    );
  }
}


// class buildQuiz extends StatelessWidget {
//   const buildQuiz({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     final screenW = MediaQuery
//         .of(context)
//         .size
//         .width;
//     debugPrint(screenW.toString());
//     return Scaffold(
//         appBar: screenW <= 600
//             ? AppBar(
//             title: const Text('Layout Flutter Exercise by Supachet'))
//             : null,
//         body: Center(
//           child: Container(
//               padding: const EdgeInsets.only(top: 30, bottom: 40),
//               child: Column(
//                   children: [
//                     const Text('Where is this picture?',
//                         style: TextStyle(fontSize: 30, color: Colors.deepOrange)
//                     ),
//                     Expanded(
//                         child: Image.asset(
//                             'images/KKU.jpg', height: 400, width: 400)),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Expanded(child: TapBoxC(name: "Khon Kaen University",
//                             tone: Colors.amber,
//                             answer: true)),
//                         Expanded(child: TapBoxC(name: "Chiang Mai University",
//                             tone: Colors.purple,
//                             answer: false))
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [
//                         Expanded(child: TapBoxC(
//                             name: "Chulalongkorn University",
//                             tone: Colors.pinkAccent,
//                             answer: false)),
//                         Expanded(child: TapBoxC(name: "Mahidol University",
//                             tone: Colors.lightBlue,
//                             answer: false))
//                       ],),
//                   ]
//               )
//           ),
//         )
//     );
//   }
// }



