import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 216, 97, 29))),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 216, 97, 29))),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _contactController,
              obscureText: false,
              decoration: const InputDecoration(
                labelText: 'Contact no.',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 216, 97, 29))),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _passwordController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 216, 97, 29))),
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: _confirmpasswordController,
              obscureText: _obscureText1,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 216, 97, 29))),
                suffixIcon: IconButton(
                  icon: Icon(
                      _obscureText1 ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _obscureText1 = !_obscureText1;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: SizedBox(
                width: 400.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 30, 28, 27),
                  ),
                  onPressed: () {
                    // Handle registration logic here
                    String username = _usernameController.text;
                    String email = _emailController.text;
                    String contact = _contactController.text;
                    String password = _passwordController.text;

                    // Perform registration, e.g., send data to server
                    print(
                        'Username: $username, Email: $email,Contact:$contact, Password: $password');
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
