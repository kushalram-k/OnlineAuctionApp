import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Set status bar color to white
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 255, 255, 255), // Make status bar transparent
      statusBarIconBrightness: Brightness.dark, // Ensure status bar icons are visible
    ));

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 254, 255),
      extendBodyBehindAppBar: true, // Allow contents to enter status bar area
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0), // Add padding to top
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/login.jpg',
                    // height: 380.0,
                    scale: 1.2,
                    fit: BoxFit.fill,
                  ),
                ),
                const Text(
                  'Log-in',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 8.0),
                TextField(
                  controller: emailController,
                  cursorColor: Color.fromARGB(255, 216, 97, 29),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 30, 28, 27)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 216, 97, 29)),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  controller: passwordController,
                  cursorColor: Color.fromARGB(255, 216, 97, 29),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Make sure there is no one behind 🧐',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 216, 97, 29)),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 30, 28, 27),
                  ),
                  onPressed: () {
                    // Replace this with authentication logic
                    final email = emailController.text;
                    final password = passwordController.text;
                    print('Email: $email, Password: $password');
                  },
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    GestureDetector(
                      onTap: () {
                        // Add your button onPressed logic here
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Color.fromARGB(255, 243, 108, 31),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}