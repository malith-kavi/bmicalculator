import 'dart:math';

import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int height = 150;
  int weight = 70;

  String gender = '';

  late double bmi = calculateBMI(height: height, weight: weight);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = 'Male';
                        });  
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          
                          border: gender == 'Male'
                          ? Border.all(color: Colors.black, width: 2)
                          : Border.all(color: Colors.black12, width: 2),
                          borderRadius: BorderRadius.circular(25)
                        ),    
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.male, size: 150,color: Colors.orangeAccent,),
                              Text("Male",style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = 'Female';
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: gender == 'Female'
                          ? Border.all(color: Colors.black,width: 2)
                          : Border.all(color: Colors.black12,width: 2),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.female, size: 150,color: Colors.pinkAccent,),
                              Text("Female", style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color:bmi >= 25
                        ?Colors.red:
                        bmi < 18.5 
                        ?Colors.orange
                        :Colors.green,width: 2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("BMI", style: TextStyle(fontWeight: FontWeight.w600),),
                        Row(
                          children: [
                            Spacer(),
                            Text(bmi.toStringAsFixed(2),
                            style: kInputLabelColor.copyWith(color: bmi >= 25 
                            ? Colors.red :
                            bmi < 18.5 
                            ?Colors.orange
                            :Colors.green, fontSize: 60),
                            ),
                            Spacer(),
                          ],
                        ),
                        Text(getResult(bmi),style: TextStyle(fontWeight: FontWeight.w600,color: bmi >= 25
                        ?Colors.red:
                        bmi < 18.5 
                        ?Colors.orange
                        :Colors.green),)
                                
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text("Height"),
                            Text("$height",
                            style: kInputLabelColor
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if (height>50) {
                                        height--;
                                        bmi = calculateBMI(height: height, weight: weight);
                                      }                                 
                                    }); 
                                  },
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.remove,size:40,),
                                ),
                                const SizedBox(width: 25,),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if (height<220) {
                                        height++;
                                        bmi = calculateBMI(height: height, weight: weight);
                                      }
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.add,size:40,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text("Weight"),
                            Text("$weight",
                            style: kInputLabelColor
                            ),
                            Row(
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if (weight>25) {
                                        weight--;
                                        bmi = calculateBMI(height: height, weight: weight);
                                      }
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.remove,size:40,),
                                ),
                                const SizedBox(width: 25,),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if (weight<300) {
                                        weight++;
                                        bmi = calculateBMI(height: height, weight: weight);
                                      }
                                    });
                                  },
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.add,size:40,),
                                ),
                              ],
                            ),
                          ],
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

  double calculateBMI({required int height, required int weight}){
    return (weight/(height*height))*10000;
  }

  String getResult(bmiValue) {
    if (bmiValue >= 25) {
      return "Overweight";
    } else if (bmiValue > 18.5) {
      return "Normal Weight";
    } else {
      return "Underweight";
    }
  }
}