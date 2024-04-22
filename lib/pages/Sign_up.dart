// ignore: file_names
// ignore_for_file: non_constant_identifier_names, unused_element
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  late File image;
  late ImageProvider provider;
  final imagepicker = ImagePicker();
  Future<void> _signupuser(String username, String email, String password,
      String confirmpassword) async {
    final Uri loginUrl = Uri.parse('http://192.168.1.5:3000/users/signup');

    try {
      final response = await http.post(
        loginUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': username,
          'email': email,
          'password': password,
          'passwordConfirm': confirmpassword
        }),
      );
      if (response.statusCode == 200) {
        // Handle successful login (e.g., navigate to a home screen)
        jsonDecode(response.body);
        // Process login data (e.g., JWT token) if applicable
      } else {
        print('Sign up successful! Status code: ${response.body}');
        setState(() {
          // _errorMessage = ' ${response.body}';
        });
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle the error (e.g., show an error dialog)
    }
  }

  uploadImage() async {
    var pickedImage = await imagepicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  bool _isSecuredPassword = true;
  bool _isSecuredconfirmedPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),

              // const Padding(
              //   padding: EdgeInsets.only(top: 20.0, bottom: 8.0),
              // child:

              // ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                // image == null ? Text("Not found") Image.file(image),
                backgroundColor: Colors.amber,
                radius: 45,
// ignore: unnecessary_null_comparison
                // image == null ? const Text("Not found") : provider = FileImage(image),
                // backgroundImage: provider,
                // child:
                // ElevatedButton(
                // onPressed: uploadImage, child: Text("upload")
                // ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            alignment: Alignment.center,
            child: const Text(
              "Username",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  // hintText: "Enter your username",
                  prefixIcon: const Icon(Icons.account_circle_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            // child: TextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Email-Adress",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  // hintText: "Enter your username",
                  prefixIcon: const Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            // child: TextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              controller: _passwordController,
              obscureText: _isSecuredPassword,
              decoration: InputDecoration(
                  // hintText: "Enter your username",
                  suffixIcon: togglePassword(),
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            // child: TextField(),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              controller: _confirmPasswordController,
              obscureText: _isSecuredconfirmedPassword,
              decoration: InputDecoration(
                  // hintText: "Enter your username",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: toggleConfirmedPassword(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            // child: TextField(),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              //     "\n username : ${_usernameController.text} \n email :${_EmailController.text} \n password :${_passwordController.text} \n confirm ${_ConfirmPasswordController.text}");
              _signupuser(_usernameController.text, _emailController.text,
                  _passwordController.text, _confirmPasswordController.text);
            },
            child: const Text(
              "Sign in ",
              style: TextStyle(

                  // backgroundColor: Color.fromARGB(255, 101, 108, 119),
                  fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecuredPassword = !_isSecuredPassword;
        });
      },
      icon: _isSecuredPassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }

  Widget toggleConfirmedPassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _isSecuredconfirmedPassword = !_isSecuredconfirmedPassword;
        });
      },
      icon: _isSecuredconfirmedPassword
          ? const Icon(Icons.visibility)
          : const Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }

  void pickImage() {
    // var image=ImagePicker.
  }
}
