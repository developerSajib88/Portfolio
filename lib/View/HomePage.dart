
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:url_launcher/url_launcher.dart';



import '../Model/FirstProjectModel.dart';
import '../Styles/styles.dart';
import 'SoftwareSkill.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String,dynamic>> Projects = [];


  Future<void> _launchUrl(String fileLink) async {
    final Uri _url = Uri.parse(fileLink);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }


  Future getProjects()async{
    FirebaseFirestore.instance
        .collection("Project")
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        Projects.add({
          "thumnail" : doc["thumnail"],
          "title" : doc["Name"],
          "description" : doc["Description"],
          "projectLink" : doc["projectLink"],
        });
        setState(() {});
      });
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProjects();
  }


  @override
  Widget build(BuildContext context) {
    //getProjects();
    print("$Projects");
    var getWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          return Scaffold(
            body: Visibility(
              visible: constraints.maxWidth > 1000.0,
              replacement: Container(
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


                    Positioned(
                      right: -150,
                      bottom: -150,
                      child: Container(
                        width: 400.0,
                        height: 400.0,
                        child: Image.asset("assets/images/extradesign1.png",width: double.infinity,height: double.infinity,),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           CircularProgressIndicator(color: customGreen,),
                           const SizedBox(height: 20.0,),
                          Text("Required Desktop Mode",style: textStyle2,),
                          Text("Please! Your browser is not Desktop Mode....",style: textStyle2,),
                        ],
                      ),
                    )


                  ],
                ),
              ),
              child: Container(
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


                    Positioned(
                      left: -400.0,
                      top: -320.0,
                      child: Container(
                        width: 1200.0,
                        height: 1200.0,
                        child: Image.asset("assets/images/extradesign2.png",width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
                      ),
                    ),



                    Positioned(
                      right: -150,
                      bottom: -150,
                      child: Container(
                        width: 400.0,
                        height: 400.0,
                        child: Image.asset("assets/images/extradesign1.png",width: double.infinity,height: double.infinity,),
                      ),
                    ),





                    Column(
                      children: [

                        Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: customBlack,
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
                              Image.asset("assets/images/smarter_logo.png",height: 40,),
                              const Spacer(),
                              HoverContainer(
                                hoverHeight: 35.0,
                                hoverWidth: 35.0,
                                child: InkWell(
                                    onTap: () {
                                      _launchUrl("https://web.facebook.com/developerSajib88");
                                    },
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
                                    onTap: () {
                                      _launchUrl("https://github.com/developerSajib88");
                                    },
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
                                    onTap: () {
                                      _launchUrl("https://www.linkedin.com/in/sajib-hasan-2b89bb202/");
                                    },
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

                                              const SizedBox(height: 35.0,),


                                              HoverContainer(
                                                hoverWidth: 205,
                                                hoverHeight: 50,
                                                child: SizedBox(
                                                  width: 200.0,
                                                  height: 45.0,
                                                  child: ElevatedButton(
                                                    onPressed: ()async{

                                                      FirebaseFirestore.instance
                                                          .collection("Resume")
                                                          .get()
                                                          .then((QuerySnapshot querySnapshot) {
                                                        querySnapshot.docs.forEach((doc) {
                                                          _launchUrl(doc["resumeLink"]);
                                                        });
                                                      });


                                                    },
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

                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                child: Text("What Project I have",style: textStyle3,),
                              ),

                              const SizedBox(height: 10.0,),


                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 110.0),
                                child: Wrap(
                                  spacing: 0.0,
                                  children: [
                                    for (int i =0; i<Projects.length; i++)
                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: FirstProjectModel(thumLink: Projects[i]["thumnail"], title: Projects[i]["title"], description: Projects[i]["description"],projectLink: Projects[i]["projectLink"],)
                                      )

                                  ],
                                ),
                              ),


                              const SizedBox(height: 20.0,),


                              Container(
                                width: double.infinity,
                                color: customGreen,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      FittedBox(
                                        child: Text("2023. Sajib Hasan - All rights reserved.",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              )
                                          ),
                                        ),
                                      ),

                                      const Spacer(),

                                      const Icon(Icons.phone_iphone,color: Colors.white,size: 15,),
                                      const SizedBox(width: 5.0,),
                                      Text("01923285988",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12
                                            )
                                        ),
                                      ),


                                      const SizedBox(width: 10.0,),


                                      const Icon(Icons.mail_outline_rounded,color: Colors.white,size: 15,),
                                      const SizedBox(width: 5.0,),
                                      Text("developersajib88@gmail.com",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                            )
                                        ),
                                      ),



                                      const SizedBox(width: 10.0,),

                                      const Icon(Icons.location_on_outlined,color: Colors.white,size: 15,),
                                      const SizedBox(width: 5.0,),
                                      Text("Mymensingh, Dhaka, Bangladesh",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: Colors.white,
                                            )
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              )






                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}







