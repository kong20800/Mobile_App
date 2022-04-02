import 'choice_info.dart';
import 'home.dart';
import 'main_return.dart';
import 'package:flutter/material.dart';
import 'total.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Total(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Supachet",
          debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const FirstScreen(),
        "/second": (context) => const ChoiceInfo(),
        "/restart": (context) => const RestartScreen()
      },
    );
  }
}
