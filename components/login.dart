import 'package:calculator/components/drawer.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerSection(),
      body: Container(
        color: const Color.fromRGBO(39, 24, 16, 1.0), // Chocolate color background
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "LOGIN",
              style: TextStyle(
                color: Color.fromRGBO(244, 233, 210, 1.0), // Light chocolate color
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              "Enter your Email and Password",
              style: TextStyle(
                color: Color.fromRGBO(244, 233, 210, 1.0), // Light chocolate color
                fontSize: 18,
                fontFamily: 'Georgia',
              ),
            ),
            const SizedBox(height: 24),

            // Email
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 233, 210, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(39, 24, 16, 1.0),
                    fontFamily: 'Georgia',
                  ),
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(39, 24, 16, 1.0),
                  fontSize: 18,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Password
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 233, 210, 1.0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Your Password',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(39, 24, 16, 1.0),
                    fontFamily: 'Georgia',
                  ),
                ),
                style: const TextStyle(
                  color: Color.fromRGBO(39, 24, 16, 1.0),
                  fontSize: 18,
                  fontFamily: 'Georgia',
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 12),

            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot password!",
                style: TextStyle(
                  color: Color.fromRGBO(134, 15, 170, 1.0), // Accent color
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Georgia',
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Sign in button
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(134, 15, 170, 1.0), // Accent color
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Georgia',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Sign up link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 16,
                    fontFamily: 'Georgia',
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color.fromRGBO(134, 15, 170, 1.0), // Accent color
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Georgia',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
