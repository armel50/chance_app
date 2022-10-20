import 'dart:ui';

import 'package:chance_app/constants.dart';
import 'package:chance_app/views/rooms/components/myPainter.dart';
import 'package:chance_app/views/rooms/components/roomCard.dart';
import 'package:chance_app/views/rooms/filterViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place {
  int id;
  String address;
  String image;
  String sqft;
  String bathrooms;
  String beds;
  String rent;
  String type;

  Place({
    required this.id,
    required this.address,
    required this.image,
    required this.sqft,
    required this.bathrooms,
    required this.beds,
    required this.rent,
    required this.type,
  });
}

class Room extends StatefulWidget {
  const Room({Key? key}) : super(key: key);

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {
  String _mapStyle = '';
  var places = [
    Place(
        id: 1,
        address: '3708 Waycross Ct, Arlington, TX 76016',
        image:
            'https://images.unsplash.com/photo-1564078516393-cf04bd966897?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        sqft: '2,800',
        bathrooms: '3',
        beds: '3',
        rent: '5,000',
        type: 'House'),
    Place(
        id: 2,
        address: '3708 Waycross Ct, Arlington, TX 76016',
        image:
            'https://plus.unsplash.com/premium_photo-1661963452428-faa6ba9f9f69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
        sqft: '700',
        bathrooms: '1',
        beds: '1',
        rent: '2,000',
        type: 'Apartment'),
    Place(
        id: 3,
        address: '3708 Waycross Ct, Arlington, TX 76016',
        image:
            'https://plus.unsplash.com/premium_photo-1661962449952-29741f7dbbc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
        sqft: '2,100',
        bathrooms: '2',
        beds: '2',
        rent: '2,500',
        type: 'Condo'),
    Place(
        id: 4,
        address: '3708 Waycross Ct, Arlington, TX 76016',
        image:
            'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        sqft: '1,800',
        bathrooms: '1',
        beds: '2',
        rent: '300',
        type: 'House'),
    Place(
        id: 5,
        address: '3708 Waycross Ct, Arlington, TX 76016',
        image:
            'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
        sqft: '2,800',
        bathrooms: '1',
        beds: '1',
        rent: '500',
        type: 'Apartment'),
    Place(
        id: 6,
        address: '3708 Waycross Ct, Arlington, TX 76016',
        image:
            'https://plus.unsplash.com/premium_photo-1661877360520-f70603f7c0d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1567&q=80',
        sqft: '2,800',
        bathrooms: '3',
        beds: '3',
        rent: '10,000',
        type: 'House'),
  ];
  var isMapOn = true;
  var mapController;
  var showRow = false;
  var currentPlaceIndex;
  final ScrollController _scrollController = ScrollController();
  void _animateToIndex(int index) {
    
    _scrollController.animateTo(
      index * 380,
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  Set<Marker> markers = Set();
  initState() {
    super.initState();

    // PictureRecorder recorder = PictureRecorder();
    // MyPainter painter = MyPainter(inputText: '5000');
    // var image = recorder.endRecording().toImage(100, 100);
    // var pngBytes = await image.toByteData(format: ImageByteFormat.png);

    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(LatLng(32.7292, -97.1150).toString()),
      position: LatLng(32.7292, -97.1150), //position of marker
      onTap:  () {
        setState(() {
          showRow = true;
          _animateToIndex(0);
        });
      },
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(LatLng(32.0, -97.110).toString()),
      position: LatLng(32.0, -97.110), //position of marker
      onTap: () {
        setState(() {
          showRow = true;
          _animateToIndex(1);
        });
      },
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(LatLng(20.7292, -80.1150).toString()),
      position: LatLng(20.7292, -80.1150), //position of marker
      onTap: () {
        setState(() {
          showRow = true;
          _animateToIndex(2);
        });
      },
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(LatLng(30.7292, -95.1150).toString()),
      position: LatLng(30.7292, -95.1150), //position of marker
      onTap: () {
        setState(() {
          showRow = true;
          _animateToIndex(3);
        });
      },
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(LatLng(29.7292, -94.1150).toString()),
      position: LatLng(29.7292, -94.1150), //position of marker
      onTap: () {
        setState(() {
          showRow = true;
          _animateToIndex(4);
        });
      },
    ));
    markers.add(Marker(
      //add start location marker
      markerId: MarkerId(LatLng(31.7292, -95.1150).toString()),
      position: LatLng(31.7292, -95.1150), //position of marker
      onTap: () {
        setState(() {
          showRow = true;
          _animateToIndex(5);
        });
      },
    ));
    rootBundle
        .loadString('assets/googleMapStyles/mapLowDetails.txt')
        .then((string) {
      _mapStyle = string;
    });
  }

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
      body: isMapOn
          ? Stack(
              children: [
                GoogleMap(
                  myLocationButtonEnabled: false,
                  zoomControlsEnabled: false,
                  mapType: MapType.hybrid,
                  markers: markers,
                  onTap: ((argument) {
                    setState(() {
                      showRow = false;
                    });
                  }),
                  initialCameraPosition: CameraPosition(
                    target: LatLng(32.7292, -97.1150),
                    zoom: 10,
                  ),
                  onMapCreated: (GoogleMapController controller) {
                    if (mounted) {
                      setState(() {
                        // print(_mapStyle);
                        mapController = controller;
                        controller.setMapStyle(_mapStyle);
                      });
                    }
                  },
                ),
                if (showRow)
                  Positioned(
                    top: MediaQuery.of(context).size.height - 550,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: places.map((e) {
                          return Container(
                            padding: EdgeInsets.only(
                                left: defaultPadding * 2,
                                right: defaultPadding * 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: defaultMargin,
                                ),
                                RoomCard(
                                  place: e,
                                  setWidth: true,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
              ],
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: places.map((e) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: defaultPadding * 2, right: defaultPadding * 2),
                    child: Column(
                      children: [
                        SizedBox(
                          height: defaultMargin * 2,
                        ),
                        RoomCard(
                          place: e,
                          setWidth: false,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
    );
  }
}
