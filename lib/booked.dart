import 'package:flutter/material.dart';

class Booked extends StatelessWidget {
  const Booked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.all(10.0),
            height: 130,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Wrap(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/hotel4.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                FractionallySizedBox(
                  widthFactor: 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'President Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 17,
                            color: Colors.grey.withOpacity(0.9),
                          ),
                          Text(
                            'Paris, France',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            '\$30',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '/per night',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '4.9',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '(4,599 reviews)',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.9), fontSize: 12
                          ),
                        ),
                        SizedBox(height: 15),
                        Icon(Icons.bookmark, color: Colors.pink, size: 30,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.all(10.0),
            height: 130,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Wrap(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/hotel3.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                FractionallySizedBox(
                  widthFactor: 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hayatt Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 17,
                            color: Colors.grey.withOpacity(0.9),
                          ),
                          Text(
                            'Paris, France',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            '\$32',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '/per night',
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '4.7',
                              style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '(4,479 reviews)',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.9), fontSize: 12
                          ),
                        ),
                        SizedBox(height: 15),
                        Icon(Icons.bookmark, color: Colors.pink, size: 30,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
