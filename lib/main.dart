import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';


//host: https://vercel.com/
//check: https://flutter.renankanu.com.br/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eduardo Melato',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}