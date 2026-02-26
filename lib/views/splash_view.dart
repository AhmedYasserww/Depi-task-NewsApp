import 'dart:async';
import 'package:depi_task7/views/home_view.dart';
import 'package:depi_task7/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState
    extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();

    Timer(

      const Duration(seconds: 3),

          () {

        Navigator.pushReplacement(

          context,

          MaterialPageRoute(

            builder: (_) =>
            const HomeScreen(),

          ),

        );

      },

    );

  }

  @override
  Widget build(BuildContext context) {

    return const Scaffold(

      backgroundColor: Color(0xFFE9EEFA),

      body: SplashViewBody(),

    );

  }

}