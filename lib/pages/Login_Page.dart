import 'package:flutter/material.dart';

// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // Spacer(flex: 1,),
            SizedBox(height: 120.0),
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
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Text(
                      "        house",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
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
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Pacifico', fontSize: 15),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Password ",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontSize: 15),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  width: 53,
                ),
                Text(
                  "forget Password ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                      fontSize: 15),
                  textAlign: TextAlign.start,
                ),
                // TextButton(onPressed: (){}, child: Text("forget Password ?",style: TextStyle(
                // fontFamily: 'Pacifico',
                // // backgroundColor: Color.fromARGB(255, 101, 108, 119),
                // fontSize: 15

                // ),),),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
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
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    // backgroundColor: Color.fromARGB(255, 101, 108, 119),
                    fontSize: 25),
              ),
            ),
            // TextButton(
            //   onPressed: () {},
            //   child:
            // ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Don't have an account yet ?",
                  style: TextStyle(fontFamily: 'Pacifico', fontSize: 16),
                ),
                const SizedBox(
                  width: 10,
                ),
                // Textbutton("Sign in",style: TextStyle(
                // color: Colors.blue,
                // fontFamily: 'Pacifico'

                // ),
                // ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/signup"),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.blue,
                        fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
