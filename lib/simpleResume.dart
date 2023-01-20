import 'dart:io';

import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  String town = "Surat";
  String selected = "Male";
  bool onOff = false;
  bool onOff2 = false;
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
                  height: 40,
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
                Container(
                  height: 40,
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
                          Radio(
                            activeColor: Colors.black,
                            value: "Male",
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = value!;
                              });
                            },
                          ),
                          Text("Male"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: "Female",
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = value!;
                              });
                            },
                          ),
                          Text("Female"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: "Others",
                            groupValue: selected,
                            onChanged: (value) {
                              setState(() {
                                selected = value!;
                              });
                            },
                          ),
                          Text("Others"),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Text("18+",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 1)),
                          Switch(
                            activeColor: Colors.black,
                            value: onOff,
                            onChanged: (value) {
                              setState(() {
                                onOff = value;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Graduation",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  letterSpacing: 1)),
                          Switch(
                            activeColor: Colors.black,
                            value: onOff2,
                            onChanged: (value) {
                              setState(() {
                                onOff2 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
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
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            alignment: Alignment.center,
                            title: Text("Confirm to submit ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,letterSpacing: 2)),
                            content: Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      exit(0);
                                    });
                                  },
                                  child: Text("Yest"),
                                ),
                                SizedBox(width: 20,),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: Text("No"),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
