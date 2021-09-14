import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double _sliderDistanceCount = 5;
  RangeValues _currentRangeValues = const RangeValues(0, 100);
  bool oq = true;
  bool oq1 = true;
  bool oq2 = true;
  bool oq3 = true;
  bool oq4 = true;
  bool oq5 = true;
  bool oq6 = true;
  bool oq7 = true;
  bool oq8 = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 8.0, right: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.clear),
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _currentRangeValues = const RangeValues(0, 0);
                          _sliderDistanceCount = 5;
                        });
                      },
                      child: Text(
                        "Reset all",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.amber.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "${_sliderDistanceCount}mi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Slider(
                activeColor: Colors.green,
                  label: "$_sliderDistanceCount",
                  min: 5,
                  max: 15,
                  divisions: 2,
                  value: _sliderDistanceCount,
                  onChanged: (state) {
                    setState(() {
                      _sliderDistanceCount = state;
                    });
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "5 mi",
                      style: TextStyle(),
                    ),
                    Text(
                      "15 mi",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      "\$ ${_currentRangeValues.start.round().toString()} - \$ ${_currentRangeValues.end.round().toString()} ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40.0,
              ),
              RangeSlider(
                activeColor: Colors.green,
                values: _currentRangeValues,
                min: 0,
                max: 160,
                divisions: 16,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 00",
                      style: TextStyle(),
                    ),
                    Text(
                      "\$ 160",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                      "Cuisine",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq){
                            oq = false;
                          }else{
                            oq = true;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: oq ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "English",
                            style: TextStyle(
                              color: oq ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq1){
                            oq1 = false;
                          }else{
                            oq1 = true;
                          }
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          color: oq1 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Chiness",
                            style: TextStyle(
                              color: oq1 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq2){
                            oq2 = false;
                          }else{
                            oq2 = true;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: oq2? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Indian",
                            style: TextStyle(
                              color: oq2 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq3){
                            oq3 = false;
                          }else{
                            oq3 = true;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: oq3 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Thai",
                            style: TextStyle(
                              color: oq3 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0,),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                      "Diet",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq4){
                            oq4 = false;
                          }else{
                            oq4 = true;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: oq4 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Paieo",
                            style: TextStyle(
                              color: oq4 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq5){
                            oq5 = false;
                          }else{
                            oq5 = true;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: oq5 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Ketogenic",
                            style: TextStyle(
                              color: oq5 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq6){
                            oq6 = false;
                          }else{
                            oq6 = true;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: oq6 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Jollof Rich",
                            style: TextStyle(
                              color: oq6 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq7){
                            oq7 = false;
                          }else{
                            oq7 = true;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: oq7 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Banku",
                            style: TextStyle(
                              color: oq7 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if(oq8){
                            oq8 = false;
                          }else{
                            oq8 = true;
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          color: oq8 ? Colors.white : Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Text(
                            "Tuna Sandwich",
                            style: TextStyle(
                              color: oq8 ? Colors.grey : Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber.shade900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 110.0,
                    vertical: 16.0,
                  ),
                  child: Text("Apply Filter"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
