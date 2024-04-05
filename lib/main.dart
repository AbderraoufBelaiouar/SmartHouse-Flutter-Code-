import 'package:flutter/material.dart';
import 'package:smart1/pages/Sign_in.dart';
// import 'package:smart1/pages/Sign_in.dart';
void main() {
  runApp(Sign_in());
}

// Import necessary libraries

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   // Text field controllers for username and password
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   bool _obscureText = true; // Variable to control password visibility
//     @override
//   Widget build(BuildContext context) {
//     return const  MaterialApp(
//       home: Scaffold(
//       body: Column(
//       children: [
//       // paddingTop : 55,
//       // paddingBottom: 55,
//       // horizontalAlignment :start[
//       //   {
//         Stack(
//         alignment: Alignment.centerLeft,
//         marginLeft :14,
//         height : 190,
//         ),
//       ]
      

//       ),  
//       ),
//     );
//   }
/*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home : Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.0), // Add padding to all sides
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Smart Home logo
              // Image.asset(
              //   'assets/images/smart_home_logo.png', // Replace with your logo path
              //   height: 100.0, // Set logo height
              // ),
              SizedBox(height: 24.0), // Add spacing after logo

              // Text field for username
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Enter your username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    , // Set border radius
                  ),
                ),
              ),
              SizedBox(height: 16.0), // Add spacing between text fields

              // Text field for password with toggle for visibility
              TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 12.0), // Add spacing after password field

              // Forgot password button
              TextButton(
                onPressed: () {}, // Handle forgot password functionality
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 24.0), // Add spacing before login button

              // Login button
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  // Handle login button press
                  // You can add logic to validate username and password
                  // and perform authentication here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set button color
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), // Set button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Set button corner radius
                  ),
                ),
              ),
              SizedBox(height: 16.0), // Add spacing after login button

              // Don't have an account text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account yet?'),
                  SizedBox(width: 8.0), // Add spacing between text and button
                  TextButton(
                    onPressed: () {}, // Handle sign up button press
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
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
}*/
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Assuming validation functions for username and password
  // bool _validateUsername(String username) => ...;
  // bool _validatePassword(String password) => ...;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   home : Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo and Image section
                 const  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                       Text(
                        "SmartHouse",
                        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      // Positioned(
                      //   right: 0.0,
                      //   // child: Image.asset(
                      //   //   "assets/images/app_logo.png",
                      //   //   height: 190.0,
                      //   // ),
                      // ),
                    ],
                  ),
                  const SizedBox(height: 20.0),

                  // Username field
                  const Text(
                    "Username",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  // CustomTextFormField(
                  //   controller: _usernameController,
                  //   decoration: etxtGradientBlueGrayToGray,
                  //   // validator: (value) => _validateUsername(value!) ? null : "Invalid username",
                  // ),
                  SizedBox(height: 10.0),

                  // Password field
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  // CustomTextFormField(
                  //   controller: _passwordController,
                  //   // decoration: etxtGradientBlueGrayToGray,
                  //   // validator: (value) => _validatePassword(value!) ? null : "Invalid password",
                  //   obscureText: true,
                  // ),
                  SizedBox(height: 20.0),

                  // Login Button
                  // CustomButton(
                  //   text: "Login",
                  //   // decoration:btnGradientBlueGrayToGray,
                  //   onPressed: () {
                  //     // if (_formKey.currentState!.validate()) {
                  //     //   // Handle login logic with username and password
                  //     //   print("Username: ${_usernameController.text}");
                  //     //   print("Password: ${_passwordController.text}");
                  //     // }
                  //   },
                  // ),
                  const SizedBox(height: 20.0),

                  // Confirmation and Sign In Text (assuming Sign In is a navigation action)
                  Row(
                    children: [
                      const Text("Don't have an account?"),
                      const Spacer(),
                      TextButton(
                        onPressed: (){},
                        child: const Text("Sign In"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    )
    );
  }
}
