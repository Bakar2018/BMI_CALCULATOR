import 'dart:math';

import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';


import '../widgets/custome_button.dart';
import '../widgets/icon_content.dart';
import '../widgets/reausable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/round_button.dart';

enum Gender{
  Female,Male
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  double height = 180;
  int weight = 65;
  int age = 25;
  Gender selectedGender = Gender.Male; 

  void goToResult(){

   double _result = weight / pow(height / 100, 2) ;

   String _comment;

   if (_result < 18.5 ){
    _comment = 'UnderWeight';
    
   }else if(_result > 18.5 && _result < 24.9){

    _comment = 'Normal';

   }
    else if(_result > 25.0 && _result < 29.9){

    _comment = 'Overweight';

   }
   else{
    _comment = 'Obese';
   }


   


    Navigator.push(context, MaterialPageRoute(builder: (context){


      return Result(
        result: _result,
        comment: _comment,
      );

    }));

  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [

        
           Expanded(
             child: Row(
               children: [
                 Expanded(
                   child:  ReasubleCard(
                    selected: selectedGender == Gender.Male ? true : false,
                    onPressed: (){

                      setState(() {
                        selectedGender = Gender.Male;
                      });
                      print('Male Selected');
                    },
                    child: iconContent(
                      icon: FontAwesomeIcons.mars,
                      title: 'Male',
                    ),
                   ),
                 ),
                 Expanded(
                   child:  ReasubleCard(
                    selected: selectedGender == Gender.Female ? true : false,
                    onPressed: (){
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                      print('Female Selected');
                    },
                    child: iconContent(
                      icon: FontAwesomeIcons.venus,
                      title: 'Female',
                    ), 
                   )
                 ),
               ],
             ),
           ),

            Expanded(
             child: ReasubleCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text('Height', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                      Text(
                        height.round().toString(),style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'cm'
                      ),
                    ]
                  ),

                  SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: Colors.white 
                    ),
                    child: Slider(
                      min: 0,
                      max: 300,
                      value: height, 
                      onChanged: (newVal){                      
                        setState(() {
                          height = newVal;
                          
                        });
                      }
                    ),
                  )
                ],
              ),
             ),
           ), 

             Expanded(
             child: Row(
               children: [
                 Expanded(
                   child:  ReasubleCard(
                    child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text('WEIGHT', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                      Text(
                        weight.toString(),style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'kg'
                      ),
                     
                    ]
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedButton(
                        iconData:Icons.remove,
                        onPressed: (){

                          setState(() {
                            weight--;
                          });                    
                        },

                      ),

                      SizedBox(width: 10,),
                    RoundedButton(
                      iconData:Icons.add,
                      onPressed: (){

                        setState(() {
                            weight++;
                          }); 
                          
                        },
                      
                    )
                    ],
                   )
                  

                 
                ],
              ),
                   )
                 ),
                 Expanded(
                   child:ReasubleCard(
                    child: Column(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text('Age', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children:[
                      Text(
                        age.toString(),style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Yrs'
                      ),
                     
                    ]
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RoundedButton(
                        iconData:Icons.remove,
                        onPressed: (){

                          setState(() {
                            age--;
                          }); 
                          
                        },

                      ),

                      SizedBox(width: 10,),
                    RoundedButton(
                      iconData:Icons.add,
                      onPressed: (){
                        setState(() {
                            age++;
                          }); 
                        
                        },
                      
                    )
                    ],
                   )
                  

                 
                ],
              ),
                   )
                 ),
               ],
             ),
           ), 

           CustomeButton(onPressed: goToResult, 
           
           ), 

         
          
         

        ],
      ),
    );

    
  }

  
}






