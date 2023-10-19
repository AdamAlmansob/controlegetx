import 'package:controlgetx/core/constant/imgaeasset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
        radius: 70,
        backgroundColor: Colors.purple,
        backgroundImage: AssetImage(
          AppImageAsset.logo,
        ),
        child: Padding(
          padding: EdgeInsets.all(0), // Border radius
          /*
          child: ClipOval(
            child: Image.asset(
              AppImageAsset.logo,
            ),
          ),
          */
        ));
  }
}
