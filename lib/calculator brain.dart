




import 'dart:math';

class calculatorbrain {

  calculatorbrain({
    required this.height,required this.weight
});


  final int height;
  final int weight;

  String calculatorBMI(){
    double bmi = weight/ pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }


}