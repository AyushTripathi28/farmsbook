// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _chosenCity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FarmsBook",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 40,
                  color: Color(0xff749E47),
                )),
          )
        ],
      ),
      backgroundColor: const Color(0xffE8E7E8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "FarmsBook",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // print(newData[index]);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://mc.webpcache.epapr.in/discover.php?in=https://mcmscache.epapr.in/post_images/website_350/post_21946998/full.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          focusColor: Colors.white,
                          value: _chosenCity,
                          //elevation: 5,
                          style: const TextStyle(color: Color(0xffFFFFFF)),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Maize',
                            'Wheet',
                            'Rice',
                            'Pulses',
                            'Millets',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          hint: const Text(
                            "Select Crop",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _chosenCity = value;
                            });
                          }),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          focusColor: Colors.white,
                          value: _chosenCity,
                          //elevation: 5,
                          style: const TextStyle(color: Color(0xffFFFFFF)),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Kanpur',
                            'Allahabad',
                            'Agra',
                            'Meerut',
                            'Varanasi',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          hint: const Text(
                            "Location",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _chosenCity = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                    width: 600,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Image(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1551754655-cd27e38d2076?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29ybnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  "Maize",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 1.0, left: 10),
                                        child: Text(
                                          "Organic",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.green),
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.green,
                                              size: 20,
                                            ),
                                            Text(
                                              " 3.5",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              " (20 review)",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                            child: Divider(
                              height: 1,
                              thickness: 3,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text("50 Tons Available"),
                                    Text("Rs 40000 /Ton")
                                  ],
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 180,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                  onPressed: () {},
                                  child: Text(
                                    "Know More",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1551754655-cd27e38d2076?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29ybnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                child: Text(
                                  "Maize",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 1.0, left: 10),
                                        child: Text(
                                          "Organic",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.green),
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.green,
                                              size: 20,
                                            ),
                                            Text(
                                              " 3.5",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              " (20 review)",
                                              style: TextStyle(
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                            child: Divider(
                              height: 1,
                              thickness: 3,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text("50 Tons Available"),
                                    Text("Rs 40000 /Ton")
                                  ],
                                ),
                              ),
                              Container(
                                height: 35,
                                width: 180,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      )),
                                  onPressed: () {},
                                  child: Text(
                                    "Know More",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
