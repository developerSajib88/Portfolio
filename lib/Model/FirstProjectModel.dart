import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Styles/styles.dart';

class FirstProjectModel extends StatefulWidget {

  String thumLink;
  String title;
  String description;
  String projectLink;

   FirstProjectModel({
    super.key,
    required this.thumLink,
    required this.title,
    required this.description,
    required this.projectLink,
  });

  @override
  State<FirstProjectModel> createState() => _FirstProjectModelState();
}

class _FirstProjectModelState extends State<FirstProjectModel> {

  Future<void> _launchUrl(String fileLink) async {
    final Uri _url = Uri.parse(fileLink);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: Duration(seconds: 1),
      animationDuration: Duration(milliseconds: 2500),
      curve: Curves.bounceIn,
      direction: Direction.horizontal,
      offset: -1,
      child: HoverContainer(
        hoverWidth: 362,
        hoverHeight: 392.0,
        hoverColor: customGreen,


        child: InkWell(
          onTap: (){
            _launchUrl(widget.projectLink);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 300.0,
                height: 330,
                child: Column(
                  children: [

                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        child: ClipRRect(
                            borderRadius: BorderRadius
                                .circular(10.0),
                            child: Image.network(
                              widget.thumLink,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,)),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                          width: double.infinity,
                          child: Column(
                            children: [

                              const SizedBox(height: 10.0,),

                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  widget.title,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.poppins(textStyle: TextStyle(color: customGreen,fontSize: 15,fontWeight: FontWeight.bold)),),
                              ),

                              const SizedBox(height: 5.0,),

                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  widget.description,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: projectDetailsStyles,),
                              ),


                            ],
                          )
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}