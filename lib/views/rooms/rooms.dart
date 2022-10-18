import 'package:chance_app/constants.dart';
import 'package:chance_app/views/rooms/filterViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Room extends StatefulWidget {
  const Room({Key? key}) : super(key: key);

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  var isMapOn = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 20,
        leading: TextButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(defaultPadding),
              foregroundColor: AppBarTextColor),
          child: isMapOn ? Text('List') : Text('Map'),
          onPressed: () {
            setState(() {
              // Toggle map view
              isMapOn = !isMapOn;
            });
          },
        ),
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
          ),
          decoration: BoxDecoration(
            color: AppBarTextColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: primaryColor,
              ),
              Expanded(
                child: TextField(
                  cursorColor: Colors.black,

                  // maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Type message",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Icon(
                Icons.near_me_outlined, // display the listing near the user
                color: primaryColor,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(defaultPadding),
                foregroundColor: AppBarTextColor),
            child: const Text('Filter'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterViewScreen()),
              );
            },
          ),
        ],
      ),
      body: isMapOn ? 
      GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.773972, -122.431297),
          zoom: 12,
        ),
      ): 
      Text('List'),
    );
  }
}
