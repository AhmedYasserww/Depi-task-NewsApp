import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {

  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Center(

      child: TweenAnimationBuilder(

        tween:
        Tween(begin: -200.0, end: 0.0),

        duration:
        const Duration(seconds: 2),

        builder: (context, value, child) {

          return Transform.translate(

            offset: Offset(0, value),

            child: child,
          );
        },

        child: const Text(

          "My News",

          style: TextStyle(

            fontSize: 48,

            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}