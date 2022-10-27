import 'package:chance_app/constants.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flat_icons_flutter/icon_data.dart';
import 'package:flutter/foundation.dart';
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
  var checkedApartment = false;
  var checkedHouse = false;
  var checkedCondo = false;
  var checkedTownhome = false;
  var checkedDog = false;
  var checkedCat = false;
  var checkedInUnitWasherDryer = false;
  var checkedAC = false;
  var checkedParking = false;
  var checkedDishwasher = false;
  var checkedUtilities = false;
  var checkedWasherDryerHookups = false;
  var checkedPool = false;
  var checkedFitnessCenter = false;
  var checkedLaundry = false;
  var checkedWheelchair = false;

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Apartments (52)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedApartment,
                      onChanged: ((value) {
                        setState(() {
                          checkedApartment = !checkedApartment;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Houses (2)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedHouse,
                      onChanged: ((value) {
                        setState(() {
                          checkedHouse = !checkedHouse;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Condos (0)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedCondo,
                      onChanged: ((value) {
                        setState(() {
                          checkedCondo = !checkedCondo;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Townhomes (20)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedTownhome,
                      onChanged: ((value) {
                        setState(() {
                          checkedTownhome = !checkedTownhome;
                        });
                      }),
                    ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Dog Friendly (20)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedDog,
                      onChanged: ((value) {
                        setState(() {
                          checkedDog = !checkedDog;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Cat Friendly (10)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedCat,
                      onChanged: ((value) {
                        setState(() {
                          checkedCat = !checkedCat;
                        });
                      }),
                    ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('In Unit Washer & Dryer (10)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedInUnitWasherDryer,
                      onChanged: ((value) {
                        setState(() {
                          checkedInUnitWasherDryer = !checkedInUnitWasherDryer;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Air Conditioning (10)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedAC,
                      onChanged: ((value) {
                        setState(() {
                          checkedAC = !checkedAC;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Parking (10)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedParking,
                      onChanged: ((value) {
                        setState(() {
                          checkedParking = !checkedParking;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Dishwasher (10)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedDishwasher,
                      onChanged: ((value) {
                        setState(() {
                          checkedDishwasher = !checkedDishwasher;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Utilities included (12)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedUtilities,
                      onChanged: ((value) {
                        setState(() {
                          checkedUtilities = !checkedUtilities;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Washer & Dryer Hookups (12)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedWasherDryerHookups,
                      onChanged: ((value) {
                        setState(() {
                          checkedWasherDryerHookups =
                              !checkedWasherDryerHookups;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Pool(12)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedPool,
                      onChanged: ((value) {
                        setState(() {
                          checkedPool = !checkedPool;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Fitness Center (12)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedFitnessCenter,
                      onChanged: ((value) {
                        setState(() {
                          checkedFitnessCenter = !checkedFitnessCenter;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Laundry Facilities (12)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedLaundry,
                      onChanged: ((value) {
                        setState(() {
                          checkedLaundry = !checkedLaundry;
                        });
                      }),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultMargin * 1.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: defaultMargin * 0.5),
                        child: Icon(Icons.apartment_outlined),
                      ),
                      Text('Wheelchair Access (12)'),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Checkbox(
                      checkColor: primaryColor,
                      activeColor: Colors.white,
                      side: BorderSide.none,
                      value: checkedWheelchair,
                      onChanged: ((value) {
                        setState(() {
                          checkedWheelchair = !checkedWheelchair;
                        });
                      }),
                    ),
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
