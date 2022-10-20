import 'package:chance_app/views/rooms/rooms.dart';
import 'package:flutter/material.dart';
import 'package:chance_app/views/rooms/activeRoom.dart';
import 'package:chance_app/constants.dart';

class RoomCard extends StatelessWidget {
  Place place;
  bool setWidth;
  RoomCard({required this.place, required this.setWidth});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ActiveRoomScreen()),
        );
      },
      child: Card(
        elevation: 4.0,
        child: Column(
          children: [
            Stack(children: [
              if(!this.setWidth )
              Container(
                height: 200.0,
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(place.image)),
                ),
              ),
              if(this.setWidth )
              Container(
                height: 200.0,
                width: 330,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(place.image)),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  color: primaryColor,
                  icon: Icon(
                    Icons.favorite_outline,
                    size: 30,
                  ),
                  onPressed: () {
                    print('saved');
                  },
                ),
              ),
            ]),
            Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '\$${place.rent}',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(' / month')
                      ],
                    ),
                    SizedBox(
                      height: defaultMargin * 0.5,
                    ),
                    Row(
                      children: [
                        Text(
                          '${place.beds} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('bds | '),
                        Text(
                          '${place.bathrooms} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('ba | '),
                        Text(
                          '${place.sqft} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('sqft | '),
                        Text(
                          '${place.type} ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultMargin * 0.5,
                    ),
                    Text(place.address),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
