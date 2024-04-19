import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  // ignore: non_constant_identifier_names
  String? Username;
  // ignore: non_constant_identifier_names
  String? e_mail;
  String? password;
  late File image;
  late ImageProvider provider;
  final imagepicker = ImagePicker();
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
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  // image == null ? Text("Not found") Image.file(image),
                  backgroundColor: Colors.amber,
                  radius: 45,
// ignore: unnecessary_null_comparison
// image == null ? const Text("Not found") : provider=FileImage(image)
//               backgroundImage: provider,
                  // child: ElevatedButton(onPressed: uploadImage, child:Text("upload")),
                ),
              ],
            ),
            Container(
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
                decoration: InputDecoration(
                    // hintText: "Enter your username",
                    prefixIcon: const Icon(Icons.account_circle_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              // child: TextField(),
            ),
            const Text(
              "Email-Adress",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    // hintText: "Enter your username",
                    prefixIcon: const Icon(Icons.mail),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              // child: TextField(),
            ),
            const Text(
              "Password",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
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
            const Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
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
                Username = "";
                e_mail = "";
                password = "";
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
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
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
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      color: Colors.grey,
    );
  }

  void pickImage() {
    // var image=ImagePicker.
  }
}
