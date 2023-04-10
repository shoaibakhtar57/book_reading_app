import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            alignment: Alignment(1.2, -1.1),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 234, 149, 178),
              radius: 90.0,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const Text(
                      'What are you reading today?',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
