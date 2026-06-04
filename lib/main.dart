import 'package:flutter/material.dart';
import 'package:movie_go/widgets/auth/auth_widget.dart';
import 'package:movie_go/widgets/auth/main_screen/main_screeen_widget.dart';
import 'package:movie_go/widgets/movie_details/movie_details_widget.dart';

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
          backgroundColor:  Color.fromRGBO(24, 23, 27, 1),
          foregroundColor: Colors.white,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(24, 23, 27, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/auth': (BuildContext context) => const AuthWidget(),
        '/main_screen': (BuildContext context) => const MainScreeenWidget(),
        '/main_screen/movie_details': (BuildContext context) {
          final arguments = ModalRoute.of(context)!.settings.arguments;
          if (arguments is int) {
            return MovieDetailsWidget(movieId: arguments);
          } else {
          return MovieDetailsWidget(movieId: 0);
          }
        },
      },
      initialRoute: "/auth",
    );
  }
}
