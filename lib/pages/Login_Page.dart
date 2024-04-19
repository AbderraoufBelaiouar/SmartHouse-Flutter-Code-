import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:smart1/pages/Sign_in.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;
  //   bool _validateUsername(String username) => ...; // Implement username validation
  // bool _validatePassword(String spassword) => ...;
  // Future<void> _loginUser(String? email, String? password) async {
  //   final Uri loginUrl = Uri.parse('http://127.0.0.1:3000/users/login');
  //   print("befor");
  //   // Replace with your actual URL
  //   final response = await http.post(loginUrl,
  //       headers: {'Content-Type': 'application/json'},
  //       body: jsonEncode({'email': email, 'password': password}));
  //   print("after");

  //   if (response.statusCode == 200) {
  //     // Handle successful login (e.g., navigate to a home screen)
  //     final data = jsonDecode(response.body);
  //     // Process login data (e.g., JWT token) if applicable
  //     print('Login successful!');
  //   } else {
  //     print('Login not successful!');
  //     setState(() {
  //       _errorMessage = ' ${response.body}';
  //     });
  //   }
  // }
  Future<void> _loginUser(String? email, String? password) async {
    final Uri loginUrl = Uri.parse('http://192.168.1.5:3000/users/login');
    print("before");

    try {
      // final response = await http.post(
      //   loginUrl,
      //   headers: {'Content-Type': 'application/json'},
      //   body: jsonEncode({'email': email, 'password': password}),
      // );
      final response = await http.get(loginUrl);
      print("after");

      if (response.statusCode == 200) {
        // Handle successful login (e.g., navigate to a home screen)
        final data = jsonDecode(response.body);
        // Process login data (e.g., JWT token) if applicable
        print('Login successful!');
      } else {
        print('Login not successful! Status code: ${response.statusCode}');
        setState(() {
          _errorMessage = ' ${response.body}';
        });
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle the error (e.g., show an error dialog)
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: GestureDetector(
            onTap: () {},
            child: Scaffold(
              // key: scaffoldKey,
              backgroundColor: Colors.white,
              body: SafeArea(
                top: true,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 70),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  ' Smart ',
                                  style: TextStyle(
                                    fontSize: 28,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '        House',
                                  style: TextStyle(
                                    fontSize: 28,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  'images/logoimage.png',
                                  width: 219,
                                  height: 154,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 250, 0),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16, 16, 16, 16),
                            child: TextFormField(
                              controller: _usernameController,
                              // focusNode: _model.textFieldFocusNode1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                // labelText: 'Label here...',
                                labelStyle: const TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                                hintStyle: const TextStyle(
                                  letterSpacing: 0,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0,
                              ),
                              // validator: _model.textController1Validator
                              // .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 100, 0),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 17,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "forgot password ?",
                                  style: TextStyle(
                                    fontSize: 10,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(1, 1),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16, 16, 16, 16),
                            child: TextFormField(
                              controller: _passwordController,
                              // focusNode: _model.textFieldFocusNode2,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: const TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                                hintStyle: const TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).alternate,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).primary,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(
                                    // color: FlutterFlowTheme.of(context).error,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              style: const TextStyle(
                                fontFamily: 'Readex Pro',
                                // color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0,
                              ),
                              // validator: _model.textController2Validator
                              //     .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // print("button pressed");
                            print(
                                "Username ${_usernameController.text} \n password : ${_passwordController.text}");
                            _loginUser(_usernameController.text,
                                _passwordController.text);
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 17,
                              letterSpacing: 0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                'Don\'t have an account yet ? ',
                                style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10, 0, 0, 0),
                              child: TextButton(
                                onPressed: () {
                                  // if (_formKey.currentState!.validate()) {
                                  //   // Handle login logic with username and password (e.g., authentication)
                                  //   print(
                                  //       "Username: ${_usernameController.text}");
                                  //   print(
                                  //       "Password: ${_passwordController.text}");

                                  //   // Navigation to Sign_in page (assuming Sign_in is a route):
                                  //   Navigator.pushNamed(context,
                                  //       "/sign_in"); // Replace with your actual route name
                                  // }
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Sign_in(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
