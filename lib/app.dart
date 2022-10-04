import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// Import all the views
import 'package:chance_app/views/roommates/roommates.dart';
import 'package:chance_app/views/rooms/rooms.dart';
import 'package:chance_app/views/messages/messages.dart';
import 'package:chance_app/views/more/more.dart';

// This app file contains all the navigation for the different views.
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final List<Widget> _views = [Roommate(), Room(), Message(), More()];

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
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
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
            icon: Icon(Icons.apartment_outlined),
            label: 'Rooms',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            // Messages tab
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
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
