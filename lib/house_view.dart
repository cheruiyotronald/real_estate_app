import 'package:flutter/material.dart';

class HouseView extends StatelessWidget {
  List<String> Locations = [
    "Gate C, Juja",
    "Gate C, Juja",
    "Roasters, Roysambu",
  ];
  List<String> HouseName = [
    "Springvalle",
    "Rising Cork",
    "Mwabe",
  ];
  List<String> HouseImage = [
    "assets/s1.jpg",
    "assets/s2.jpg",
    "assets/s3.jpg",
  ];
  final HouseTextStyle = TextStyle(
    fontSize: 20,
    color: Colors.black54
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.brown,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.shade300,
                            blurRadius: 5,
                            spreadRadius: 3,
                          )
                        ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/b1.jpg",
                        fit: BoxFit.cover,
                        ),
                        
                      ),
                    ),
                    Positioned(
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                      )
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "NBA Apartments",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "NBA Apartments is a sweet place",
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Bed Seater",
                      style: HouseTextStyle,
                    ),
                    Text(
                      "Free water",
                      style: HouseTextStyle,
                    ),
                    Text(
                      "WIFI Available",
                      style: HouseTextStyle,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.indigo,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Gate C, Gatundu road, next to fish vender",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$8000/",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                              ),
                           ),
                           Text("Monthly")
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child: Center(
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
