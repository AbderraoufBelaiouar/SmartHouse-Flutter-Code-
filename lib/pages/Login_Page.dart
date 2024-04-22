// ignore_for_file: file_names, camel_case_types

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:smart1/pages/HomePage.dart';
import 'package:smart1/pages/Sign_up.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});
  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<void> _loginUser(String? email, String? password) async {
    final Uri loginUrl = Uri.parse('http://192.168.1.5:3000/users/login');
    try {
      final response = await http.post(
        loginUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );
      if (response.statusCode == 200) {
        // Handle successful login (e.g., navigate to a home screen)
        jsonDecode(response.body);
        // Process login data (e.g., JWT token) if applicable
      } else {
        setState(() {});
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle the error (e.g., show an error dialog)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Spacer(flex: 1,),
          const SizedBox(height: 120.0),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  Smart ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                    ),
                  ),
                  Text(
                    "        house",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "images/logoimage.png",
                height: 110,
                width: 170,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            alignment:
                Alignment.lerp(Alignment.topLeft, Alignment.center, 0.21),
            child: const Text(
              "User Name ",
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  hintText: "Enter your username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            // child: TextField(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                "Password ",
                style: TextStyle(color: Colors.black, fontSize: 15),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            // child: TextField(),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 20),
            child: ElevatedButton(
              onPressed: () {
                // _loginUser(_usernameController.text, _passwordController.text);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          // TextButton(
          //   onPressed: () {},
          //   child:
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 30.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "forgot password ?",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Don't have an account yet ?",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ),
              // Textbutton("Sign in",style: TextStyle(
              // color: Colors.blue,
              // fontFamily: 'Pacifico'

              // ),
              // ),
              // GestureDetector(
              //   onTap: () {
              //   },
              // child:
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Sign_up(),
                    ),
                  );
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
