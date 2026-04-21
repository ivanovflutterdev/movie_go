import 'package:flutter/material.dart';
import 'package:movie_go/widgets/auth/auth_widget.dart';
import 'package:movie_go/widgets/auth/main_screen/main_screeen_widget.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movie Go",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 49, 114, 226),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 49, 114, 226),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/auth': (BuildContext context) => const AuthWidget(),
        '/main_screen': (BuildContext context) => const MainScreeenWidget(),
      },
      initialRoute: "/auth",
    );
  }
}
