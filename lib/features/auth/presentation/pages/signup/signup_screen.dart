

import 'package:flutter/material.dart';

import '../../../../../core/user_app_color.dart';
import '../login/loginScreen.dart';
import 'businesspage.dart';
import 'individual.dart';
class SignupScreen extends StatefulWidget {
  static String routeName = "/sign_up";
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedAccountType = '';
  bool agreedToTerms = false;

  void navigateToNextPage() {
    if (_formKey.currentState!.validate()) {
      if (selectedAccountType == "Business") {
        Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessSignupPage()));
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualSignupPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Create an Account'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),

                  const Text(
                    'CREATE AN ACCOUNT',
                    style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20.0),
                  const Text(
                    'Kindly proceed, Create your account',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your first name.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your last name.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address.';
                      }
                      // You can add email validation logic here
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password.';
                      }
                      // You can add additional password validation here
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  DropdownButtonFormField<String>(
                    value: selectedAccountType.isNotEmpty ? selectedAccountType : null,
                    items: ["Individual", "Business"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedAccountType = value!;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Account Type',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  CheckboxListTile(

                    value: agreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        agreedToTerms = value!;
                      });
                    },
                    title: Text('I agree to the Terms and Conditions'),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      if (selectedAccountType != null && agreedToTerms && _formKey.currentState!.validate()) {
                        navigateToNextPage();
                      }
                    },
                    child: Text('Next', style: TextStyle(
                      color: Colors.white, // Set text color to white
                      fontSize: 18, // Set the text size to your preferred size
                    ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(secondaryColor),
                      minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)), // Make the button big
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Already have an Account?"),
                      TextButton(
                        onPressed: () {

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                          // Navigate to the signup screen
                        },
                        child: Text("LOGIN", style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}