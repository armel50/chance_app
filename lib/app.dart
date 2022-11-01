import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';


// Import all the views
import 'package:chance_app/views/roommates/roommates.dart';
import 'package:chance_app/views/rooms/rooms.dart';
import 'package:chance_app/views/more/more.dart';

// This app file contains all the navigation for the different views.
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final List<Widget> _views = [Roommate(), Room(), More()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: primaryColor,
        unselectedItemColor: Color.fromARGB(255, 158, 168, 176),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
        selectedFontSize: 14,
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            // Matches tab
            icon: Icon(Icons.people_outline),
            label: 'Roomies',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            // Rooms or listing tab
           icon:  ImageIcon(
            AssetImage('assets/images/apartment.png')
           ),
            label: 'Rooms',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            // More tab
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.green,

        onTap: _onItemTapped,
      ),
    );
  }
}
