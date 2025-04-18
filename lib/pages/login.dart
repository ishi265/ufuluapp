import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/pages/navigation.dart';
import 'package:ufuluapp/widgets/ButtonWidget.dart';
import 'package:ufuluapp/widgets/MyTextBox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Login Successful"),
          content: const Text("You have successfully logged in!"),
          actions: [
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Navigation()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "uFulu",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 30),
              const Text(
                "Login",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 6),
                  MyTextBox(
                    placeholder: "Email",
                    icon: Iconsax.user,
                    obscureText: false,
                    controller: emailController,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 6),
                  MyTextBox(
                    placeholder: "Password",
                    icon: Iconsax.lock,
                    obscureText: true,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 16),
                  ButtonWidget(
                    text: "Login",
                    icon: Iconsax.arrow_right_1,
                    onTap: () {
                      // First show the success dialog
                      _showSuccessDialog(context);
                    },
                  ),
                  const SizedBox(height: 16),
                  const Center(child: Text("Or")),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          // Add your register navigation here
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
