import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter2homework3/screens/fliterScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;
  final List _gridItems = List.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.6,
              decoration: BoxDecoration(
                color: Colors.amber.shade900,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(
                    40.0,
                  ),
                  bottomLeft: Radius.circular(
                    40.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, Burhan",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "Good morning ☀",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16.0),
                                  ),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Icon(Icons.settings_sharp),
                                ),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "Map View",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          prefixIcon: Icon(
                            CupertinoIcons.search,
                            color: Colors.black,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(
                                  builder: (context) => FilterScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                CupertinoIcons.arrow_right_arrow_left,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          hintText: "search",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        onSaved: (e) {
                          //  _phoneNumberInput = e;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15.0,
                            vertical: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "30 %",
                                    style: TextStyle(
                                      color: Colors.amber.shade900,
                                      fontSize: 36.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    "Discount for all food",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Valid until November 16",
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10.0),
                                height: 100.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1551276929-3f75211e0986?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZCUyMHBvcnRpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Popular Chef",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(CupertinoIcons.text_justify),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(CupertinoIcons.square_grid_2x2),
                        ],
                      ),
                      Container(
                        height: 400.0,
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: _gridItems.length,
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 250,
                                  //childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemBuilder: (_, index) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(15.0),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "https://images.unsplash.com/photo-1551276929-3f75211e0986?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZCUyMHBvcnRpb258ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Chif Sam...",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Tuna Sandwich",
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber.shade900,
        showSelectedLabels: true,
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(
          color: Colors.amber.shade900,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',

            activeIcon: Icon(
              Icons.search,
              color: Colors.amber.shade900,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_grid_2x2,
            ),
            label: 'category',
            activeIcon: Icon(
              CupertinoIcons.square_grid_2x2,
              color: Colors.amber.shade900,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.shopping_cart,
            ),
            label: 'history',
            activeIcon: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.amber.shade900,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.cube_box,
            ),
            label: 'inbox',
            activeIcon: Icon(
              CupertinoIcons.cube_box,
              color: Colors.amber.shade900,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: 'profile',
            activeIcon: Icon(
              CupertinoIcons.person,
              color: Colors.amber.shade900,
            ),
          ),


        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
