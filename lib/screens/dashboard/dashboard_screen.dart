import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 56),
            Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                  text: const TextSpan(
                    text: "Good Morning,\n",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Jane",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w700
                        ),
                      )
                    ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }

}