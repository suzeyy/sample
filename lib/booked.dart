import 'package:flutter/material.dart';

class Booked extends StatelessWidget {
  const Booked({super.key});

  @override
  Widget build(BuildContext context)
  {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
                    borderRadius:
                    BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/hotel4.jpeg'),
                        fit: BoxFit.cover)
                ),
              )
          ),
       Column(
        children: [
          FractionallySizedBox(
            widthFactor: 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'President Hotel',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
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
                          color: Colors.grey
                              .withOpacity(0.9)),
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
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '/per night',
                      style: TextStyle(
                          color: Colors.grey
                              .withOpacity(0.9)),
                    )
                  ],
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
                        borderRadius:
                        BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/hotel3.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(width: 15),
                FractionallySizedBox(
                  widthFactor: 0.35,
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hayatt Hotel',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      SizedBox(
                        height: 5,
                      ),
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
                                color: Colors.grey
                                    .withOpacity(0.9)),
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
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '/per night',
                            style: TextStyle(
                                color: Colors.grey
                                    .withOpacity(0.9)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ])
    );
  }
}
