import 'package:flutter/material.dart';

import '../../../../../core/user_app_color.dart';
import '../home/home_screen.dart';
import '../signup/signup_screen.dart';
class LoginScreen extends StatefulWidget {
  static String routeName = "/login_success";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // SizedBox(height: 20.0),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),

              SizedBox(height: 20.0),
                Text(
                  'Welcome Back to BIZ PLUG',
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Kindly proceed, to login into your account',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: _emailController,
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
                    // You can add additional email validation here
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Implement your "Forgot Password" functionality here
                      },
                      child: Text('Forgot Password?', style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Implement your login logic here
                      setState(() {
                        _isLoading = true;
                      });

                      // Navigate to HomeScreen() when the form is validated
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(secondaryColor),
                    minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)), // Make the button big
                  ),
                  child: _isLoading
                      ? CircularProgressIndicator()
                      : Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                      fontSize: 18, // Set the text size to your preferred size
                    ),
                  ),
                ),


                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Are you a new user?"),
                    TextButton(
                      onPressed: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen()),
                        );
                        // Navigate to the signup screen
                      },
                      child: Text("Create account", style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}