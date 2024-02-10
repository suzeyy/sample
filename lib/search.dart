import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        },
      ),
    );
  }
}
