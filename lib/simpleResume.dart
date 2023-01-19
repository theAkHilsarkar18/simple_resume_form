import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String town = "Surat";
  bool skill1 = true;
  bool skill2 = false;
  bool skill3 = false;
  bool skill4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 300,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.person, color: Colors.black, size: 18),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Full Name",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 300,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.call, color: Colors.black, size: 18),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Mobile Number",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.location_on, size: 18),
                      SizedBox(
                        width: 20,
                      ),
                      DropdownButton(
                        dropdownColor: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(25),
                        items: [
                          DropdownMenuItem(
                              child: Text("Surat",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                      fontSize: 15)),
                              value: "Surat"),
                          DropdownMenuItem(
                            child: Text("Baroda",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    fontSize: 15)),
                            value: "Baroda",
                          ),
                          DropdownMenuItem(
                            child: Text("Rajkot",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    fontSize: 15)),
                            value: "Rajkot",
                          ),
                          DropdownMenuItem(
                            child: Text("Jamnagar",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                    fontSize: 15)),
                            value: "Jamnagar",
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            town = value!;
                          });
                        },
                        value: town,
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black),
                        alignment: Alignment.center,
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height:40,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 1),
                            focusColor: Colors.grey.shade300,
                            activeColor: Colors.grey.shade500,
                            checkColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid)),
                            value: skill1,
                            onChanged: (value) {
                              setState(() {
                                skill1 = value!;
                              });
                            },
                          ),
                          Text("C",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 1),
                            focusColor: Colors.grey.shade300,
                            activeColor: Colors.grey.shade500,
                            checkColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid)),
                            value: skill2,
                            onChanged: (value) {
                              setState(() {
                                skill2 = value!;
                              });
                            },
                          ),
                          Text("C++",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 1),
                            focusColor: Colors.grey.shade300,
                            activeColor: Colors.grey.shade500,
                            checkColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid)),
                            value: skill3,
                            onChanged: (value) {
                              setState(() {
                                skill3 = value!;
                              });
                            },
                          ),
                          Text("Dart",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 1),
                            focusColor: Colors.grey.shade300,
                            activeColor: Colors.grey.shade500,
                            checkColor: Colors.black,
                            shape: BeveledRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black,
                                    width: 0.5,
                                    style: BorderStyle.solid)),
                            value: skill4,
                            onChanged: (value) {
                              setState(() {
                                skill4 = value!;
                              });
                            },
                          ),
                          Text("Java",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
