import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen image
            Image.asset(
              'assets/images/splash.png',
              width: 200,
              height: 200,
            ),
            // Add your list view
            Container(
              height: 300, // Adjust the height as needed
              child: ListView(
                children: const [
                  ListTile(title: Text('Item 1')),
                  ListTile(title: Text('Item 2')),
                  ListTile(title: Text('Item 3')),
                  // Add more list items as needed
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add code to navigate to the next screen when the button is pressed
                // Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
