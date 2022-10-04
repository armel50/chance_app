import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
  Map<String, dynamic> preferences;
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

List<User> students = [
  User(
      id: 1,
      voucherId: 0,
      email: 'johndoe@gmail.com.com',
      name: 'John Doe',
      profileImg:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 30,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing', 'Gym', 'Drawing'],
      preferences: {
        "id": 1,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 2,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 3,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 1,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 5,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 6,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 7,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
      jobTitle: 'Engineer',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 8,
      voucherId: 4,
      email: 'michealdoe@gmail.com',
      name: 'Micheal Doe',
      profileImg: 'https://unsplash.com/photos/DzAFv1iVMGg',
      age: 26,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: {
        "id": 8,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 9,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
      preferences: {
        "id": 10,
        "gender": "All",
        "ageRange": "18 - 100",
        "kidsNumber": "0",
        "petsAllowed": ['Cats', 'Dog'],
        "idealLocation": "Arlington, Tx",
        "lease": '4 months',
        "housingType": ["Apartment", "House", "Townhouse", "Condo"],
        "smoking": "Outside only",
        "privprivateSpace": ["Bathroom", "Bedroom"],
      },
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Roommmates')),
    );
  }
}
