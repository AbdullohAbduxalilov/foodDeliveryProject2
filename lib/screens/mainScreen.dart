import 'package:flutter/material.dart';

import 'firstScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/50/a3/34/50a334f1862e33f045881e5eeda60779.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Order your",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Favourite",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Food",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Made by the finest Home Chefs, every",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "dish raises the bar of Taste, Health,",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "Hygiene, and cleanliness.",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => FirstScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
