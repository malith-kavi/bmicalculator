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
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Height"),
                        Text("$height",
                        style: kInputLabelColor
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  height--;
                                }); 
                              },
                              shape: CircleBorder(),
                              child: Icon(Icons.remove,size:40,),
                            ),
                            SizedBox(width: 25,),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  height++;
                                });
                              },
                              shape: CircleBorder(),
                              child: Icon(Icons.add,size:40,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Weight"),
                        Text("$weight",
                        style: kInputLabelColor
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              shape: CircleBorder(),
                              child: Icon(Icons.remove,size:40,),
                            ),
                            SizedBox(width: 25,),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              shape: CircleBorder(),
                              child: Icon(Icons.add,size:40,),
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
                  Text("22.00",style: kInputLabelColor.copyWith(color: kTextColorR, fontSize: 60),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}