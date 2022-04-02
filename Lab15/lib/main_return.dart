import 'package:flutter/material.dart';
import 'total.dart';
import 'package:provider/provider.dart';

class RestartScreen extends StatelessWidget {
  const RestartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Total>(
        builder: (context, provider, child) {
          return Scaffold(
              body: Center(
                  child: Container(
                      padding: EdgeInsets.only(top: 350, bottom: 50),
                      child: Column(
                        children: [
                          Text("Your score is ${provider.count}",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent)),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/");
                                provider.ResetScore();
                              },
                              child: const Text('Restart',)
                          )
                        ],
                      ))
              )
          );
        }
    );
  }
}