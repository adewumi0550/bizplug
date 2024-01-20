import 'package:flutter/material.dart';

import '../../../../../core/user_app_color.dart';

class BusinessSignupPage extends StatelessWidget {
  const BusinessSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Business Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height*0.1),
              // SizedBox(height: 20.0),
              Text(
                'Complete your Business Profile',
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Business Name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                items: ["Barber", "Plumbing", "Nail Cutter"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},

                decoration: InputDecoration(
                  labelText: 'Business Category',
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
                  labelText: 'Address',
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
                  // Implement the submission logic for business signup
                },
                child: Text('Create an account', style: TextStyle(
                  color: Colors.white, // Set text color to white
                  fontSize: 18, // Set the text size to your preferred size
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(secondaryColor),
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)), // Make the button big
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
