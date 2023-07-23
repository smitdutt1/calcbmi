import 'package:calcbmi/main.dart';
import 'package:flutter/material.dart';
import 'Containerlogic.dart';


class screen2 extends StatelessWidget {

  screen2({required this.bmiresult});
  final String bmiresult;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontFamily: 'broxy',
                letterSpacing: 1.5,
                wordSpacing: 4.0),
          ),
          elevation: 20.0,
          shadowColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Color(0xFFa788fc),
        body: Column(

          children: [
            Expanded(
                flex: 7,
                child: Container(
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: colorinactive,
                      borderRadius: BorderRadius.circular(50.0)




                  ),
                  child: Center(child:
                  Text('your bmi is '+bmiresult,
                    style: bmitextstyle,
                    )
                  ),
                )

            ),






            Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 400,
                    height: 80,
                    decoration:BoxDecoration(
                        color: bottomcolor,
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    child:Center(
                      child: Text
                        ('RE-CALCULATE',style: bmitextstyle,),
                    ),
                  ),
                )

            )],
        )
    );
  }
}















