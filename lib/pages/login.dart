import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ufuluapp/pages/home.dart';
import 'package:ufuluapp/pages/navigation.dart';
import 'package:ufuluapp/widgets/ButtonWidget.dart';
import 'package:ufuluapp/widgets/MyTextBox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            SizedBox(
              height: 30,
            ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                MyTextBox(
                    placeholder: "Email",
                    icon: Iconsax.user,
                    obscureText: false,
                    controller: emailController),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                MyTextBox(
                    placeholder: "Password",
                    icon: Iconsax.lock,
                    obscureText: true,
                    controller: passwordController),
                SizedBox(
                  height: 16,
                ),
                ButtonWidget(
                  text: "Login",
                  icon: Iconsax.arrow_right_1,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Navigation()));
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Center(child: Text("Or")),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
