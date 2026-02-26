import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {

  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(

      child: TweenAnimationBuilder(

        tween: Tween(begin: 0.0,end:1.0),

        duration: const Duration(seconds:2),

        curve: Curves.easeInOut,

        builder:(context,value,child){

          return Opacity(

            opacity:value,

            child: Transform.scale(

              scale:value,

              child: child,

            ),

          );

        },

        child: const Text(

          "News",

          style: TextStyle(

            fontSize:64,

            fontWeight:FontWeight.w600,

            color: Color(0xFF2D5BD0),

          ),

        ),

      ),

    );

  }

}