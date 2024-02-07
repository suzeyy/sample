import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/hotel.dart';
import 'icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.pink.shade50,
            extendBody: true,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: FractionallySizedBox(
                  widthFactor: 0.95,
                  heightFactor: 0.95,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: AssetImage('assets/picture.jpg'),
                                    ),
                                    title: Text(
                                      'Hello',
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.9),
                                        fontSize: 10,
                                      ),
                                    ),
                                    subtitle: Text(
                                      'Helia Dulia!',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/bell.svg',
                                      height: 15,
                                      width: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Hotel, Flight, Place, Food...',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    left: 20.0,
                                    right: 10.0,
                                  ),
                                  child: SvgPicture.asset('assets/search.svg'),
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 8.0,
                                    right: 20.0,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/apps.svg',
                                    color: Colors.black,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onChanged: (value) {
                                // Handle search text changes
                              },
                            ),
                          ),
                          SizedBox(height: 15),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                buildIconContainer('assets/hotel.svg', 'Hotel', Colors.red),
                                SizedBox(width: 10),
                                buildIconContainer('assets/flight.svg', 'Flight', Colors.green),
                                SizedBox(width: 10),
                                buildIconContainer('assets/location.svg', 'Location', Colors.purple.shade300),
                                SizedBox(width: 10),
                                buildIconContainer('assets/food.svg', 'Food', Colors.blueAccent.shade700),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular Hotels',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(color: Colors.pink, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 190,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                buildHotelContainer('Emeralda Hotel', 'Paris, France', '\$30', 'assets/hotel1.jpg', 4.9),
                                SizedBox(width: 20),
                                buildHotelContainer('Eco plus Hotel', 'Paris, France', '\$40', 'assets/hotel2.jpeg', 4.6),
                                SizedBox(width: 20),
                                buildHotelContainer('Herald Hotel', 'Paris, France', '\$30', 'assets/hotel3.jpeg', 4.9),
                                SizedBox(width: 20),
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Recently Booked',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'See All',
                                  style: TextStyle(color: Colors.pink, fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          FractionallySizedBox(
                            widthFactor: 0.99,
                            child: Container(
                              height: 120,
                              padding: EdgeInsets.all(16),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      // color: Colors.red,
                                      height: double.infinity,
                                      child: ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        leading: Container(
                                          width: 80,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            // color: Colors.blue,
                                            image: DecorationImage(
                                              image: AssetImage('assets/hotel4.jpeg'),
                                              fit: BoxFit.fill,
                                            )
                                          ),
                                        ),
                                        title: Text('Title'),
                                        subtitle: Text('Subtitle'),
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )




                              ]),
                            ),
                          )
                ),
                      ),
                    ),

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                // Handle navigation or other actions based on index
              },
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/home.svg',
                    color: _currentIndex == 0 ? Colors.pink : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/search.svg',
                    color: _currentIndex == 1 ? Colors.pink : Colors.grey,
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/memo1.svg',
                    color: _currentIndex == 2 ? Colors.pink : Colors.grey,
                  ),
                  label: 'Booking',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/profile.svg',
                    color: _currentIndex == 3 ? Colors.pink : Colors.grey,
                  ),
                  label: 'Profile',
                ),
              ],
              selectedItemColor: Colors.pink,
              unselectedItemColor: Colors.grey,
              selectedLabelStyle: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              type: BottomNavigationBarType.fixed,
    )
        ));
  }
}