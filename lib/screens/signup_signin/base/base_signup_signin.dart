import 'dart:ui';
import 'package:at/theme/colors/AppColors.dart';
import 'package:flutter/material.dart';

class BaseSignupSignIn extends StatelessWidget {
  final Widget child;

  const BaseSignupSignIn({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(gradient: AppGradients.signUpBg),
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Positioned(
                  left: 20,
                  top: 240,
                  child: Image(
                    width: 67,
                    height: 36,
                    image: AssetImage("assets/s1.png"),
                    colorBlendMode: BlendMode.color,
                  )),
              const Positioned(
                  top: 61,
                  left: 196,
                  child: Image(
                      width: 221,
                      height: 206,
                      image: AssetImage("assets/s2.png"))),
              const Positioned(
                top: 336,
                left: -140,
                child: Image(
                    width: 475, height: 442, image: AssetImage("assets/s3.png")),
              ),
              const Align(
                  alignment: Alignment.bottomRight,
                  child: Image(
                    image: AssetImage("assets/s4.png"),
                    colorBlendMode: BlendMode.color,
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Glass panel
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(36, 58, 36, 0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.tertiaryColor.withAlpha(64),
                                  border: Border.all(
                                      color: AppColors.tertiaryColor, width: 1),
                                  borderRadius: BorderRadius.circular(16)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: child,
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 28.5,
                            left: 21,
                            child: Image(
                              width: 105,
                              height: 57,
                              image: AssetImage("assets/s1.png"),
                              colorBlendMode: BlendMode.color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          )),
    );
  }
}
