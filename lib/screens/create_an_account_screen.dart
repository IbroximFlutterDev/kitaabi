import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitaabi/screens/register_screen.dart';

import 'login_screen.dart';

class CreateAnAccountScreen extends StatelessWidget {
  const CreateAnAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/account.png',
              height: 277,
              width: 305,
            ),
            Image.asset(
              'images/text.png',
              height: 277,
              width: 305,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ),
                );
              },
              child: Text('Create an account'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Have an account',style: TextStyle(fontWeight: FontWeight.w500),),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text('Log in'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
