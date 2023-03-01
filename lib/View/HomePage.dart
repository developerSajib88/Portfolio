import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/Model/SecondProjectModel.dart';
import 'package:portfolio/Styles/styles.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../Model/FirstProjectModel.dart';
import 'SoftwareSkill.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List mySkill = [1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,];

  @override
  Widget build(BuildContext context) {
    var getWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [

            Container(
              width: double.infinity,
              height: double.infinity,
              color: lightGreen,
              child: Image.asset("assets/images/main_bg.jpg",width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
            ),

            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white70,
            ),

            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white70,
            ),





            Column(
              children: [

                Container(
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        spreadRadius: 0.1,
                        color: customGrey
                      )
                    ]
                  ),
                  child: Row(
                    children: [

                      const SizedBox(width: 40.0,),

                      const Spacer(),
                      HoverContainer(
                        hoverHeight: 35.0,
                        hoverWidth: 35.0,
                        child: InkWell(
                            onTap: () {},
                            splashColor: customGreen,
                            highlightColor: customGreen,
                            hoverColor: customGreen,
                            focusColor: customGreen,
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              "assets/socialmedia/facebook.png",
                              width: 30.0,
                              height: 30.0,
                            )),
                      ),

                      const SizedBox(
                        width: 10.0,
                      ),

                      HoverContainer(
                        hoverHeight: 35.0,
                        hoverWidth: 35.0,
                        child: InkWell(
                            onTap: () {},
                            splashColor: customGreen,
                            highlightColor: customGreen,
                            hoverColor: customGreen,
                            focusColor: customGreen,
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              "assets/socialmedia/github.png",
                              width: 30.0,
                              height: 30.0,
                            )),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),


                      HoverContainer(
                        hoverHeight: 35.0,
                        hoverWidth: 35.0,
                        child: InkWell(
                            onTap: () {},
                            splashColor: customGreen,
                            highlightColor: customGreen,
                            hoverColor: customGreen,
                            focusColor: customGreen,
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              "assets/socialmedia/linkedin.png",
                              width: 30.0,
                              height: 30.0,
                            )),
                      ),
                      const SizedBox(width: 40.0,),

                    ],
                  ),
                ),

                Expanded(
                  child: ListView(
                    children: [

                     const SizedBox(height: 40.0,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200.0,
                                        child: Row(
                                          children: [
                                            Text("About",style: GoogleFonts.poppins(textStyle: TextStyle(color: customBlack,fontSize: 35.0,fontWeight: FontWeight.bold)),),
                                            const SizedBox(width: 10.0,),
                                            Text("Me",style: GoogleFonts.poppins(textStyle: TextStyle(color: customGreen,fontSize: 35.0,fontWeight: FontWeight.bold)),),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 10.0,),

                                      Container(
                                        width: double.infinity,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [

                                            AnimatedTextKit(
                                              totalRepeatCount: 1000,

                                              animatedTexts: [
                                                TypewriterAnimatedText(
                                                  "Hi, I am Sajib. I am passionate",
                                                  textStyle: animatedTextStyle1,
                                                  cursor: "|",
                                                  speed: const Duration(milliseconds: 25),
                                                ),
                                              ],
                                            ),


                                            AnimatedTextKit(
                                              totalRepeatCount: 1000,
                                                animatedTexts: [
                                                  TypewriterAnimatedText(
                                                      "Software Engineer",
                                                      textStyle: animtatedTextStyle2,
                                                      cursor: "|",
                                                  ),
                                                ]
                                            ),

                                          ],
                                        ),
                                      ),

                                      const SizedBox(height: 15.0,),

                                      Container(
                                        width: double.infinity,
                                        child: Text(
                                          "I am a Flutter Developer (IOS & Android and Web) platform. "
                                              "I have been working on Flutter development in last year and I have been 1+ years of"
                                              " development Experience and I have also a basic knowledge XD/Figma. "
                                              "Future I will learn Machine learning/Artificial Intelligence.",
                                          style: textStyle2,
                                        ),
                                      ),

                                      const SizedBox(height: 15.0,),

                                      const SoftwareSkill(),

                                      const SizedBox(height: 55.0,),


                                      HoverContainer(
                                        hoverWidth: 205,
                                        hoverHeight: 50,
                                        child: SizedBox(
                                          width: 200.0,
                                          height: 45.0,
                                          child: ElevatedButton(
                                            onPressed: (){},
                                            child: Text("DOWNLOAD RESUME",style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: customGreen
                                            ),

                                          ),
                                        ),
                                      )


                                    ],
                                  ),
                                ),

                              ),

                              const SizedBox(width: 60.0,),

                              Expanded(
                                flex: 1,
                                child: Bounce(
                                  duration: const Duration(milliseconds: 100),
                                  onPressed: (){},
                                  child: CircleAvatar(
                                    radius: 250.0,
                                    backgroundColor: customGreen,
                                    child: CircleAvatar(
                                      radius: 240.0,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 220.0,
                                        backgroundImage: AssetImage("assets/images/my_profile.png"),
                                      ),
                                    ),
                                  ),
                                )


                              )

                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 15.0,),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text("What Project I Have",style: textStyle3,),
                      ),



                     const SizedBox(height: 10.0,),


                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Wrap(
                          spacing: 0.0,
                          children: [
                            for (int i =0; i<mySkill.length; i++)
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Visibility(
                                    visible: i % 2 == 0,
                                    child:  FirstProjectModel(),
                                    replacement: SecondProjectModel(),
                                  )
                              )

                          ],
                        ),
                      ),






                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}






