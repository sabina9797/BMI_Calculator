import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BMICALCULATOR(),
      ),
    ),
  );
}

class BMICALCULATOR extends StatefulWidget {
  const BMICALCULATOR({super.key});

  @override
  State<BMICALCULATOR> createState() => _BMICALCULATORState();
}

//flutter run -v
class _BMICALCULATORState extends State<BMICALCULATOR> {
  final weight_ = TextEditingController();
  final height_ = TextEditingController();
  String str1 = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'Your Weight in kg',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              width: 500,
              child: TextField(
                controller: weight_,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.pink),
                  ),
                  // border: OutlineInputBorder(),

                  //hintText: 'hihi',
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  height: 55,
                ),
                Container(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        'Your height in cm',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SizedBox(
              width: 500,
              child: TextField(
                controller: height_,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.pink),
                  ),
                  // border: OutlineInputBorder(),

                  //hintText: 'hihi',
                ),
              ),
            ),
          ),
          Container(
              child: Column(
            children: [
              SizedBox(
                height: 55,
              ),
              Center(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.pink),
                  ),
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      double h = double.parse(height_.text);
                      double w = double.parse(weight_.text);
                      double r = (w / (h * h)) * 10000;
                      str1 = r.toStringAsFixed(2);
                    });
                  },
                ),
              ),
            ],
          )),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Stack(
                    children: [
                      Image(
                        width: 200,
                        image: NetworkImage(

                            //https://play-lh.googleusercontent.com/fZ0iafPSCL9guT552Gomck3lT7fH_LpXf1RMdPVptOAPX9UCHQoOrdPZbpueM8eNItM_

                            'https://play-lh.googleusercontent.com/MXKJPIVYrxIcAtudiMTxs-TaHZ8KEUpk5qL6hEja1MOFjEntnhY2w01tcKTdVLLRxUA')
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Text(
                          ' Your_BMI: $str1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
