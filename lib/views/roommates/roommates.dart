import 'package:chance_app/views/messages/messages.dart';
import 'package:chance_app/views/roommates/matchProfile.dart';
import 'package:chance_app/views/user/profile.dart';
import 'package:flutter/material.dart';
import 'package:chance_app/views/roommates/userCard.dart';

class Preference {
  int id;
  String gender;
  String ageRange;
  String kidsNumber;
  bool petsAllowed;
  String idealLocation;
  String lease;
  List<String> housingType;
  String smoking;
  bool privateBedroom;
  bool privateBathroom;

  Preference({
    required this.id,
    required this.gender,
    required this.ageRange,
    required this.kidsNumber,
    required this.petsAllowed,
    required this.idealLocation,
    required this.lease,
    required this.housingType,
    required this.smoking,
    required this.privateBedroom,
    required this.privateBathroom,
  });
}

class User {
  int id;
  int voucherId;
  String name;
  String email;
  String profileImg;
  int age;
  String bio;
  List<String> hobbies;
  List<dynamic> preferences;

  String jobTitle;
  bool emailVerified;
  bool premiumUser;
  bool owner;

  User({
    required this.id,
    required this.voucherId,
    required this.name,
    required this.email,
    required this.profileImg,
    required this.age,
    required this.bio,
    required this.hobbies,
    required this.preferences,
    required this.jobTitle,
    required this.emailVerified,
    required this.premiumUser,
    required this.owner,
  });
}

List<User> users = [
  User(
      id: 1,
      voucherId: 0,
      email: 'johndoe@gmail.com.com',
      name: 'John Doe',
      profileImg:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 30,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing', 'Gym', 'Drawing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Actor',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 2,
      voucherId: 1,
      email: 'rizkysabriansyah@gmail.com',
      name: 'Rizky Sabriansyah',
      profileImg:
          'https://images.unsplash.com/photo-1664725587354-5738005137f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 22,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Business Owner',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 3,
      voucherId: 1,
      email: 'frankdoew@gmail.com',
      name: 'Frank Doe',
      profileImg:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 30,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Engineer',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 4,
      voucherId: 4,
      email: 'derickfall@gmail.com',
      name: 'Derick Fall',
      profileImg:
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 21,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Artist',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 5,
      voucherId: 4,
      email: 'summerjolie@gmail.com',
      name: 'Summer Jolie',
      profileImg:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 40,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Actor',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 6,
      voucherId: 5,
      email: 'laviadoe@gmail.com',
      name: 'Lavia Doe',
      profileImg:
          'https://images.unsplash.com/photo-1549351512-c5e12b11e283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 25,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Chef',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 7,
      voucherId: 3,
      email: 'fernadotoress@gmail.com',
      name: 'Fernado Torres',
      profileImg:
          'https://images.unsplash.com/photo-1595956553066-fe24a8c33395?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 27,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Engineer',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 8,
      voucherId: 4,
      email: 'michealdoe@gmail.com',
      name: 'Michelle Doe',
      profileImg:
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=761&q=80',
      age: 26,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Student',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 9,
      voucherId: 6,
      email: 'frederickdoe@gmail.com',
      name: 'Frederick Doe',
      profileImg:
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 24,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Business Owner',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 10,
      voucherId: 8,
      email: 'dorinesdoe@gmail.com',
      name: 'Dorine Doe',
      profileImg:
          'https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTd8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 25,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Student',
      emailVerified: true,
      premiumUser: true,
      owner: true),
];

class Roommate extends StatefulWidget {
  const Roommate({Key? key}) : super(key: key);

  @override
  State<Roommate> createState() => _RoommateState();
}

class _RoommateState extends State<Roommate> {
  bool stateChanged = false;
  var currentIndex = 0;
  var currentMatch = users[0];

  @override
  Widget build(BuildContext context) {
    var updateUser = () {
      setState(() {
        stateChanged = true;
        currentIndex =
            currentIndex + 1 > users.length - 1 ? 0 : currentIndex + 1;
        currentMatch = users[currentIndex];
      });
    };
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 20,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                backgroundColor: Colors.green,
              ),
              child: const Text('AH'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
            Text(
              'Roomies',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                 ),
            ),
            IconButton(
              icon: const Icon(
                Icons.message_outlined,
              
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Message()),
                );
              },
            ),
          ],
        ),
        
      ),
      body: Draggable(
        child: matchProfile(
          currentMatch: currentMatch,
          updateUser: updateUser,
        ),
        feedback: Container(
          height: MediaQuery.of(context).size.height - 400,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: userCard(
              age: currentMatch.age,
              name: currentMatch.name,
              jobTitle: currentMatch.jobTitle,
              profileImg: currentMatch.profileImg),
        ),
    
        childWhenDragging: matchProfile(
            updateUser: updateUser,
            currentMatch: currentIndex + 1 < users.length - 1
                ? users[currentIndex + 1]
                : users[0]),
        onDragEnd: (drag) {
          print(drag.velocity.pixelsPerSecond.dx);
          if (drag.velocity.pixelsPerSecond.dx < -10000) { // 300 will is the sweet spot that shows the actual intent of swiping
            // Swipe left
            print('swipe left');
            updateUser();
          } else if (drag.velocity.pixelsPerSecond.dx > 10000) {
            // Swipe right
            print('swipe right');
            updateUser();
          }
        },
      ),
    );
  }
}
