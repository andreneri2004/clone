import 'package:flutter/material.dart';
import 'package:clone_app_basic/src/screens/screens.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Serve para
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Básico',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(3, 37, 65, 1),
          elevation: 0,
        ),
      ),
      initialRoute: 'home_screen' ,
      routes: {
        'basic_screen': (_) => const BasicClone(),
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen': (_) => const HomeScreen()
      },
      home: const BasicClone(),
    );
  }
}
