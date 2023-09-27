import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitaabi/screens/create_an_account_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            const SizedBox(height: 20),
            const Text(
              'Kitaabi',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                fontFamily: 'Inter',
              ),
            ),
            const SizedBox(height: 20),
            const Text('Online World Learners'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateAnAccountScreen(),
                  ),
                );
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
