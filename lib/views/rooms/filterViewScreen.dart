import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';



class FilterViewScreen extends StatefulWidget {
  const FilterViewScreen({Key? key}) : super(key: key);

  @override
  State<FilterViewScreen> createState() => _FilterViewScreenState();
}

class _FilterViewScreenState extends State<FilterViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 20,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text('Filter'),
        actions: <Widget>[
          TextButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(defaultPadding),
                foregroundColor: AppBarTextColor),
            child: const Text('Reset'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FilterViewScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price'),
              Text('Monthly Rent'),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    child: Text('to'),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  )
                ],
              ),
              RangeSlider(
                values: RangeValues(40, 80),
                activeColor: primaryColor,
                inactiveColor: Colors.grey,
                max: 100,
                onChanged: (RangeValues values) {
                  print('changed');
                },
              ),
              Row(
                // Divider
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 0,
                      thickness: 0.5,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Text('Beds and Baths'),
              Text('Bedrooms'),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Chip(
                    label: Text('1'),
                  ),
                  Chip(
                    label: Text('2'),
                  ),
                  Chip(
                    label: Text('3'),
                  ),
                  Chip(
                    label: Text('4+'),
                  ),
                ],
              ),
              Text('Bathrooms'),
              Row(
                children: [
                  Chip(
                    label: Text('1+'),
                  ),
                  Chip(
                    label: Text('2+'),
                  ),
                  Chip(
                    label: Text('3+'),
                  ),
                ],
              ),
              Row(
                // Divider
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 0,
                      thickness: 0.5,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Text('Housing'),
              Text('Home Type'),
              Row(
                children: [
                  Text('Apartments (52)'),
                  Checkbox(
                    value: true,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Apartments (52)'),
                  Checkbox(
                    value: true,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Houses (2)'),
                  Checkbox(
                    value: true,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Condos (0)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('townhomes (20)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                // Divider
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 0,
                      thickness: 0.5,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Text('Pet Policy'),
              Row(
                children: [
                  Text('Dog Friendly (20)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Cat Friendly (10)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                // Divider
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 0,
                      thickness: 0.5,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Text('Amenities'),
              Row(
                children: [
                  Text('In Unit Washer & Dryer (10)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Air Conditioning (10)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Parking (10)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Dishwasher (10)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Utilities included (12)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Washer & Dryer Hookups (12)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Pool(12)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Fitness Center (12)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Laundry Facilities (12)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Wheelchair Access (12)'),
                  Checkbox(
                    value: false,
                    onChanged: ((value) {
                      print('changed');
                    }),
                  )
                ],
              ),
              Row(
                // Divider
                children: [
                  Expanded(
                    child: Divider(
                      endIndent: 0,
                      thickness: 0.5,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              Text('Squre Footage Range'),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    child: Text('to'),
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  )
                ],
              ),
              RangeSlider(
                values: RangeValues(40, 80),
                activeColor: primaryColor,
                inactiveColor: Colors.grey,
                max: 100,
                onChanged: (RangeValues values) {
                  print('changed');
                },
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(left:defaultPadding * 4, right: defaultPadding * 4, bottom: defaultPadding * 3, top: defaultPadding),
        width: 10,
        child: TextButton(
          
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: primaryColor,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},
          child: const Text('Show 0 results'),
        ),
      ),
    );
  }
}