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

  late double bmi = calculateBMI(height: height, weight: weight);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.male, size: 150,),
                        Text("Male"),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 150,),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                children: [
                  Padding(
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
                  const Spacer(),
                  Padding(
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
                ],
              ),
              const SizedBox(height: 50,),
              Column(
                children: [
                  const Text("BMI"),
                  Text(bmi.toStringAsFixed(2),
                  style: kInputLabelColor.copyWith(color: kTextColorR, fontSize: 60),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  double calculateBMI({required int height, required int weight}){
    return (weight/(height*height))*10000;
  }
}