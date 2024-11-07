import 'dart:ui';
import 'package:at/theme/colors/AppColors.dart';
import 'package:flutter/material.dart';

class BaseSignupSignin extends StatelessWidget {
  final Widget child;

  const BaseSignupSignin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                left: -200,
                child: Image(
                    width: 475,
                    height: 442,
                    image: AssetImage("assets/s3.png"))),
            const Align(
                alignment: Alignment.bottomRight,
                child: Image(
                  image: AssetImage("assets/s4.png"),
                  colorBlendMode: BlendMode.color,
                )),
            Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor),
                              borderRadius: BorderRadius.circular(16)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: child,
                          ),
                        ),
                      ),
                    )),
              ],
            )
          ],
        ));
  }
}
