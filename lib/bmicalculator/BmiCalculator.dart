// stful is a shortcut to tell the ide to create stateful widget
// stless for stateless widget

import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_apps/bmicalculator/BMIResultScreen.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  var selectedHeight = 160.0;
  var selectedWeight = 65.0;
  var selectedAge = 23.0;

  var isMale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    margin: EdgeInsetsDirectional.only(
                      start: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    height: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: isMale ? Colors.indigoAccent : Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.male,
                          ),
                          onPressed: () {},
                          iconSize: 60,
                        ),
                        const Text(
                          'MALE',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    margin:
                        EdgeInsetsDirectional.only(top: 20, bottom: 20, end: 20),
                    height: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: !isMale ? Colors.indigoAccent : Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.female,
                            size: 50.0,
                          ),
                          onPressed: () {},
                          iconSize: 60,
                        ),
                        const Text('FEMALE')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${selectedHeight.round()}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'cm',
                    )
                  ],
                ),
                Slider(
                    value: selectedHeight,
                    min: 80,
                    max: 260,
                    onChanged: (value) {
                      setState(() {
                        selectedHeight = value.toDouble();
                      });
                      print('selectedHeight $selectedHeight');
                    })
              ],
            ),
          )),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      margin: EdgeInsetsDirectional.only(start: 20,top: 20, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: Colors.grey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT (KG)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${selectedWeight.round()}',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 30),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  mini: true,
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      selectedWeight--;
                                    });
                                  }),
                              FloatingActionButton(
                                  mini: true,
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      selectedWeight++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                  ,
                  Expanded(
                    child: Container(
                      margin: EdgeInsetsDirectional.only(top: 20, bottom: 20, end: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          color: Colors.grey),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${selectedAge.round()}',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 30),
                          ),
                          SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  mini: true,
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      selectedAge--;
                                    });
                                  }),
                              FloatingActionButton(
                                  mini: true,
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      selectedAge++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.indigoAccent,
            child: MaterialButton(
              onPressed: () {

                var reslut =selectedWeight / pow(selectedHeight/100,2);
                
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BMIResultScreen(isMale, reslut, selectedAge);
                }
                ));
              },
              height: 60,
              child: const Text(
                'CALCULATE',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
