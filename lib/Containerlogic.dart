import 'package:flutter/material.dart';

const coloractive = Color(0xFF5a2cc0);
const colorinactive = Color(0xFFddd0ff);
const bottomcolor = Color(0xFF1ac9ac);
const sliderinactive = Color(0xFFA070CE);

const heighttext = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 25.0,
);

const newstyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 40.0,
);





//method of the button color change in the gesture button male and female (logic design)
enum Gender{
  male,
  female
}


class widgetfirst extends StatefulWidget {
  @override
  State<widgetfirst> createState() => _widgetfirstState();
}


class _widgetfirstState extends State<widgetfirst> {

  Color malecolor = colorinactive;
  Color femalecolor = colorinactive;

  void updatecolor(Gender selectgender){
     //male button press logic

   if(selectgender == Gender.male){
     if(malecolor == colorinactive ){
       malecolor = coloractive;
       femalecolor = colorinactive;
     }
     else{
       malecolor = colorinactive;
     }
   }

   //female button press logic

   if(selectgender == Gender.female){
     if(femalecolor == colorinactive ){
       femalecolor = coloractive;
       malecolor = colorinactive;
     }
     else{
       femalecolor = colorinactive;
     }
   }


  }



  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(25.0),

              child: GestureDetector(
                onTap: (){
                  setState(() {
                    updatecolor(Gender.male);

                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: malecolor,
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 50.0,

                        ),
                        Text('MALE',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0,

                          ),)
                      ],
                    ),






                ),
              ),


          ),

        ),
        //padding 25.0,borderradius 30.0




        Expanded(
          child: Padding(
              padding: EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    updatecolor(Gender.female);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: femalecolor,
                      borderRadius: BorderRadius.circular(30.0)
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.female,
                        size: 50.0,

                      ),
                      Text('FEMALE',
                        style: TextStyle(

                          fontWeight: FontWeight.w900,
                          fontSize: 20.0,

                        ),)
                    ],
                  ),
                ),
              )
          ),

        )
        //padding 25.0,borderradius 30.0
      ],
    );
  }
}

