import 'package:flutter/material.dart';
import 'package:real_estate_app/house_view.dart';

class HousesWidget extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 3; i++)
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              height: 250,
              width: 220,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 140,
                        child: InkWell(
                          onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HouseView(),
                            ),
                          );
                        },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(HouseImage[i]),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red.shade300,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    HouseName[i],
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded),
                      Text(
                        Locations[i],
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Divider(thickness: 2),
                  Text(
                    "5 Bed - 4 Bath -3, 235 Sqft",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
