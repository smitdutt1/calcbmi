import 'package:flutter/material.dart';
import 'Containerlogic.dart';
import 'screen2.dart';
import 'calculator brain.dart';


void main() {
  runApp(MyApp());
}



const bmitextstyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    fontFamily: 'broxy',
    letterSpacing: 1.5,
    wordSpacing: 4.0);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'BMI CALCULATOR',
            style: bmitextstyle,
          ),
          elevation: 20.0,
          shadowColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Color(0xFFa788fc),
        body: mainbody(),
      ),

    );
  }
}

class mainbody extends StatefulWidget {



  @override
  State<mainbody> createState() => _mainbodyState();
}

class _mainbodyState extends State<mainbody> {

  int height = 150;
  int weightnumber = 40;
  int agenumber    = 14;







  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Expanded(
                flex: 2, child: widgetfirst()),

            //height widget
            Expanded(
                flex: 3,
                child: Center(
                    child: Container(
                      margin: EdgeInsetsDirectional.all(25.0),
                      decoration: BoxDecoration(
                          color: colorinactive, borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        // padding: EdgeInsetsDirectional.only(start: 155.0,bottom: 30.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text('HEIGHT',
                                    style: heighttext
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(height.toString(),
                                    style:heighttext,),
                                  SizedBox(
                                    width:3.0,),
                                  Text('cm',
                                    style: heighttext ,)
                                ],

                              ),
                              Slider(
                                  value: height.toDouble(),
                                  min: 120,
                                  max: 220,
                                  activeColor: coloractive,
                                  inactiveColor: sliderinactive,
                                  onChanged:(double newvalue){
                                    setState(() {
                                      height = newvalue.round();
                                    });

                                  }


                              )
                            ],
                          ),
                        ),
                      ),
                    )
                ),
            ),




            //weight and age logic design
            Expanded(
                flex: 2,
                child:Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(

                            decoration: BoxDecoration(
                              color: colorinactive,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(

                              children: [
                                SizedBox(height: 20.0),
                                Text('WEIGHT',
                                  style: heighttext,),
                                Text(weightnumber.toString(),
                                  style: newstyle,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                        child: Icon(Icons.add),
                                        backgroundColor: coloractive,
                                        onPressed: (){
                                          setState(() {
                                            weightnumber++;
                                          });
                                        }
                                    ),
                                    SizedBox(width: 20.0),
                                    FloatingActionButton(
                                        child: Icon(Icons.remove),
                                        backgroundColor: coloractive,
                                        onPressed: (){
                                          setState(() {
                                            weightnumber--;
                                          });
                                        }
                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      ),













                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Container(

                            decoration: BoxDecoration(
                              color: colorinactive,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20.0),
                                Text('AGE',
                                  style: heighttext,),
                                Text(agenumber.toString(),
                                  style: newstyle,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    FloatingActionButton(
                                        child: Icon(Icons.add),
                                        backgroundColor: coloractive,
                                        onPressed: (){
                                          setState(() {
                                            agenumber++;
                                          });
                                        }

                                    ),
                                    SizedBox(width: 20.0),
                                    FloatingActionButton(
                                        child: Icon(Icons.remove),
                                        backgroundColor: coloractive,
                                        onPressed: (){
                                          setState(() {
                                            agenumber--;
                                          });
                                        }

                                    )
                                  ],
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),





            //calculate
            Expanded(
                flex: 1,
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      calculatorbrain calc = calculatorbrain(
                          height: height,weight: weightnumber
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => screen2(
                          bmiresult: calc.calculatorBMI(),
                        )),
                      );

                    },
                    child: Container(
                      width: 400,
                      height: 80,
                      decoration: BoxDecoration(
                        color: bottomcolor,
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Center(
                        child: Text('CALCULATE',
                        style: bmitextstyle,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}






