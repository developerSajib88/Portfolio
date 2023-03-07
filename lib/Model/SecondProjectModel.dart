import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Styles/styles.dart';

class SecondProjectModel extends StatefulWidget {
  String thumLink;
  String title;
  String description;
  String projectLink;

  SecondProjectModel({
    super.key,
    required this.thumLink,
    required this.title,
    required this.description,
    required this.projectLink
  });

  @override
  State<SecondProjectModel> createState() => _SecondProjectModelState();
}

class _SecondProjectModelState extends State<SecondProjectModel> {

  Future<void> _launchUrl(String fileLink) async {
    final Uri _url = Uri.parse(fileLink);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: const Duration(seconds: 1),
      animationDuration: const Duration(milliseconds: 2500),
      curve: Curves.bounceIn,
      direction: Direction.horizontal,
      offset: 1,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 330,
            child: Row(
              children: [
                Expanded(
                  child: HoverContainer(
                    hoverWidth: double.infinity,
                    hoverHeight: 320.0,
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      child: InkWell(
                        onTap: (){
                          _launchUrl(widget.projectLink);
                        },
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
                  ),
                ),

                const SizedBox(width: 20.0,),

                Expanded(
                  child: Container(
                      width: double.infinity,
                      height: 300,
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              widget.title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: animtatedTextStyle2,),
                          ),

                          SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: Text(
                              widget.description,
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                              style: textStyle2,),
                          ),


                        ],
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}