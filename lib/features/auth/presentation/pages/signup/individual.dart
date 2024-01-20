import 'package:flutter/material.dart';

import '../../../../../core/user_app_color.dart';

class IndividualSignupPage extends StatelessWidget {
  const IndividualSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Individual Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Text(
                'Complete the Personal Profile',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implement the submission logic for individual signup
                },
                child: Text('Create an account', style: TextStyle(
                  color: Colors.white, // Set text color to white
                  fontSize: 18, // Set the text size to your preferred size
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(secondaryColor),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
              )),
            ],
          ),
        ),
      ),
    );
  }
}