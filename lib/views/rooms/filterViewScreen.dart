import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FilterViewScreen extends StatefulWidget {
  const FilterViewScreen({Key? key}) : super(key: key);

  @override
  State<FilterViewScreen> createState() => _FilterViewScreenState();
}

class _FilterViewScreenState extends State<FilterViewScreen> {
  var viewMore = false;
  var monthlyRent = RangeValues(500, 1500);
  var monthlyRentLeftText = new TextEditingController();
  var monthlyRentRightText = new TextEditingController();
  var squareFoot = RangeValues(700, 2000);
  var squareFootLeftText = new TextEditingController();
  var squareFootRightText = new TextEditingController();

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
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Price',
                style: TextStyle(fontSize: defaultTitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Monthly Rent',
                style: TextStyle(fontSize: defaultSubtitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: monthlyRentLeftText,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Container(
                    child: Text('to'),
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Expanded(
                    child: TextField(
                      controller: monthlyRentRightText,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ], //
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin,
              ),
              RangeSlider(
                values: monthlyRent,
                min: 200,
                max: 10000,
                activeColor: primaryColor,
                inactiveColor: Colors.grey,
                onChanged: (RangeValues values) {
                  setState(() {
                    monthlyRent = values;
                  });
                },
              ),
              SizedBox(
                height: defaultMargin * 1.5,
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
              SizedBox(
                height: defaultMargin * 1.5,
              ),
              Text(
                'Beds and Baths',
                style: TextStyle(fontSize: defaultTitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Bedrooms',
                style: TextStyle(fontSize: defaultSubtitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
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
              Text(
                'Bathrooms',
                style: TextStyle(fontSize: defaultSubtitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
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
              SizedBox(
                height: defaultMargin * 1.5,
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
              SizedBox(
                height: defaultMargin * 1.5,
              ),
              Text(
                'Housing',
                style: TextStyle(fontSize: defaultTitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Text(
                'Home Type',
                style: TextStyle(fontSize: defaultSubtitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
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
              SizedBox(
                height: defaultMargin * 1.5,
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
              SizedBox(
                height: defaultMargin * 1.5,
              ),
              Text(
                'Pet Policy',
                style: TextStyle(fontSize: defaultTitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
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
              SizedBox(
                height: defaultMargin * 1.5,
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
              SizedBox(
                height: defaultMargin * 1.5,
              ),
              Text(
                'Amenities',
                style: TextStyle(fontSize: defaultTitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
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
              SizedBox(
                height: defaultMargin * 1.5,
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
              SizedBox(
                height: defaultMargin * 1.5,
              ),
              Text(
                'Squre Footage Range',
                style: TextStyle(fontSize: defaultTitleFontSize),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: squareFootLeftText,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ], //
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Container(
                    child: Text('to'),
                  ),
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Expanded(
                    child: TextField(
                      controller: squareFootRightText,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ], //
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin,
              ),
              RangeSlider(
                values: squareFoot,
                min: 400,
                max: 5000,
                activeColor: primaryColor,
                inactiveColor: Colors.grey,
                onChanged: (RangeValues values) {
                  setState(() {
                    squareFoot = values;
                  });
                },
              ),
              SizedBox(
                height: defaultMargin,
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(
            left: defaultPadding * 4,
            right: defaultPadding * 4,
            bottom: defaultPadding * 3,
            top: defaultPadding),
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
