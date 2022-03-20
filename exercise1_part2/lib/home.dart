import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 160,bottom: 25),
              child: Column(
                children: [
                  Expanded(
                      child:Image.asset('images/quiz.jpg', width: 250,)
                  ),
                  const Text('Welcome to the Quiz App',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
                  const Text('By Supachet Jaruratchakul 623040393-9',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrangeAccent)),
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                      child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/second");
                      },
                        child: const Text('Start'))),
                ],
              )
          )
      ),
    );
  }
}
