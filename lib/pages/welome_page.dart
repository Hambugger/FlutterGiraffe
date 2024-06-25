// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:musicapp/widgets/custom_button.dart';

class WelomePage extends StatelessWidget {
  const WelomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(
        context,
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _backgroundGradient(
          context,
        ),
        _foregroundwidget(context),
      ],
    );
  }

  Widget _backgroundGradient(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.4, 0.4],
          colors: [
            Theme.of(context).primaryColor,
            Color.fromRGBO(
              255,
              255,
              255,
              1,
            ),
          ],
        ),
      ),
    );
  }

  Widget _foregroundwidget(
    BuildContext context,
  ) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _avatarImage(
              context,
            ),
            _infoContainer(
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _avatarImage(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      width: MediaQuery.sizeOf(context).width * 0.55,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              25,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Image.network(
              'https://ouch-cdn2.icons8.com/w-ZRy560WaIqsBvNwqwI9uvzN7kqYYznlSsPlwTq-4o/rs:fit:368:294/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjgy/L2E1Y2NhODlmLWE0/MzUtNGVlMS1iMzY0/LWY5NGQ3YjU5ZmM2/OS5wbmc.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoContainer(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.40,
      width: MediaQuery.sizeOf(context).width * 0.90,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          25,
        ),
        border: Border.all(
          color: Colors.black12,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _infoText(context),
          _infoSubText(context),
          CustomButton(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width * 0.70,
            isPrimary: true,
            text: "LOGIN",
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/login',
              );
            },
          ),
          CustomButton(
            height: MediaQuery.sizeOf(context).height * 0.06,
            width: MediaQuery.sizeOf(context).width * 0.70,
            isPrimary: false,
            text: "SIGN UP",
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _infoText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(text: "Find the"),
            TextSpan(
              text: " Students or Tutor ",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            TextSpan(text: "that fits your knowledge_"),
          ],
        ),
      ),
    );
  }

  Widget _infoSubText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: Text(
        "Where words fail, music speaks.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black38,
        ),
      ),
    );
  }
}
