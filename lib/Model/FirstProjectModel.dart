import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:show_up_animation/show_up_animation.dart';

import '../Styles/styles.dart';

class FirstProjectModel extends StatelessWidget {
  const FirstProjectModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShowUpAnimation(
      delayStart: Duration(seconds: 1),
      animationDuration: Duration(milliseconds: 2500),
      curve: Curves.bounceIn,
      direction: Direction.horizontal,
      offset: -1,
      child: InkWell(
        onTap: (){},
        splashColor: customGreen,
        highlightColor: customGreen,
        hoverColor: customGreen,
        focusColor: customGreen,
        borderRadius: BorderRadius.circular(5.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 330,
              child: Row(
                children: [

                  Expanded(
                    child: Container(
                        width: double.infinity,
                        height: 300,
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "Breaking News - World News Today",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: animtatedTextStyle2,),
                            ),

                            SizedBox(
                              width: double.infinity,
                              height: 200,
                              child: Text(
                                "I am a Flutter Developer (IOS & Android and Web) platform. "
                                    "I have been working on Flutter development in last year and I have been 1+ years of"
                                    " development Experience and I have also a basic knowledge XD/Figma. "
                                    "Future I will learn Machine learning/Artificial Intelligence.",
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                style: textStyle2,),
                            ),


                          ],
                        )
                    ),
                  ),

                  const SizedBox(width: 20.0,),

                  Expanded(
                    child: HoverContainer(
                      hoverWidth: double.infinity,
                      hoverHeight: 320.0,
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        child: InkWell(
                          onTap: (){},
                          child: ClipRRect(
                              borderRadius: BorderRadius
                                  .circular(10.0),
                              child: Image.asset(
                                "assets/images/project_thumnail.png",
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}