import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'marvel_hero.dart';

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
  final num;
  final info;
  const TapBoxC({Key? key, required this.name, required this.tone, required this.answer, required this.num, required this.info}) : super(key: key);

  @override
  _TapBoxCState createState() => _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _active = false;
  bool _activescore = false;
  Color _activecolor = Colors.red;
  var TextContent = "";
  var Function;
  Widget? nextHero;

  void _handleTap(){
    setState(() {
      _active = !_active;
    });
    nextHero = MarvelHero(num: widget.num + 1, info: widget.info);
    if (widget.answer){
      _activecolor = Colors.green;
      TextContent = "Congrat, you get 1 point";
      if (widget.num < widget.info.length){
        Function = ElevatedButton(
          child: const Text("OK"),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) =>
                  nextHero ?? Container()))
      );
      }
      else {
        Function = ElevatedButton(
          child: const Text("OK"),
          onPressed: (){
            Navigator.pushNamed(context, "/restart");
          },
        );
      }
    }
    else {
      TextContent = "Sorry, you miss it!";
      Function = ElevatedButton(
        child: const Text("OK"),
        onPressed: (){
          Navigator.pushNamed(context, "/restart");
        },
      );
    }
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: const Text("Score!"),
            content: Text(TextContent),
            actions: <Widget>[Function],
          );
        }
    );
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



