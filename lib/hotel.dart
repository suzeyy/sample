import 'package:flutter/material.dart';

Widget buildHotelContainer(String name, String location, String price, String imagePath, double rating) {
  return Container(
    width: 140,
    margin: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.grey,
          BlendMode.overlay,
        ),
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.white,
                  ),
                  Text(
                    '$rating',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 10,
          right: 10,
          child: Container(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 10,
          right: 10,
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 13,
                color: Colors.white,
              ),
              Text(
                location,
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Row(
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '/per night',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 17,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}