import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:hovering/hovering.dart';
import 'package:show_up_animation/show_up_animation.dart';

class SoftwareSkill extends StatelessWidget {
  const SoftwareSkill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Container(
          width: double.infinity,
          height: 65.0,
        ),

        Positioned(
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 300),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverWidth: 65.0,
                  hoverHeight: 65.0,
                  child: Image.asset(
                    "assets/icons/flutter.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 45.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 400),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/dart.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 90.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 600),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/firebase.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 135.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 800),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/git.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 180.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 1000),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/github.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),



        Positioned(
            left: 225.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 1500),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/postman.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 270.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 2000),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/android.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 315.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 2500),
              curve: Curves.bounceIn,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/xd.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),


        Positioned(
            left: 360.0,
            child: ShowUpAnimation(
              delayStart: Duration(seconds: 1),
              animationDuration: Duration(milliseconds: 3500),
              curve: Curves.bounceInOut,
              direction: Direction.horizontal,
              offset: -1,
              child: Bounce(
                duration: const Duration(milliseconds: 500),
                onPressed: (){},
                child: HoverContainer(
                  hoverHeight: 65.0,
                  hoverWidth: 65.0,
                  child: Image.asset(
                    "assets/icons/figma.png",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
              ),
            )
        ),





      ],
    );
  }
}