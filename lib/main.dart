
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));



class MyApp extends StatefulWidget{

  @override
  _StepperPraState createState() => _StepperPraState();

}

class _StepperPraState extends State<MyApp>{

  int stepValue = 0;

  List<Step> tempStepper = [
    Step(
      content: Text('data2'),
      title: Text('data2'),
      isActive: true,
    ),
    Step(
      content: Text('data2'),
      title: Text('data2'),
      isActive: true,
    ),
    Step(
      content: Text('data2'),
      title: Text('data2'),
      isActive: true,
    ),
    Step(
      content: Text('data2'),
      title: Text('data2'),
      isActive: true,
    ),
    Step(
      content: Text('data2'),
      title: Text('data2'),
      isActive: true,
    ),
    Step(
      content: Text('data2'),
      title: Text('data2'),
      isActive: true,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fun'),
      ),
      body: Stepper(
        steps: tempStepper,
        type: StepperType.vertical,
        currentStep: stepValue, 
        onStepTapped: (tapValue) {
          setState((){
            stepValue = tapValue;
          });
        },
      ),
    );
  }
}