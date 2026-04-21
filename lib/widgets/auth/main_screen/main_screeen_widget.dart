
import 'package:flutter/material.dart';

class MainScreeenWidget extends StatefulWidget {
  const MainScreeenWidget({super.key});

  @override
  State<MainScreeenWidget> createState() => _MainScreeenWidgetState();
}

class _MainScreeenWidgetState extends State<MainScreeenWidget> {

  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Movies'),
    Text('Series'),
  ];
  
  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Movie Go!'),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedTab),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "Movies",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: "Series",
            ),
          ],
          onTap: onSelectedTab,
        ),
    );
  }
}