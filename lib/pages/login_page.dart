import 'package:deliveryapp/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/components/my_textfield.dart';
import 'package:deliveryapp/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();

  void login() async {
    final _authService = AuthService();
    try{
      await _authService.signInWithEmailPassword(emailController.text, passwordController.text);
    }
    catch(e){
      showDialog(context: context, builder: (context) => AlertDialog(
        title: Text(e.toString()),
      ));
    }
    // Navigator.push(context, 
    // MaterialPageRoute(builder: (context) => const HomePage(),
    // ), );
  }
  void forgotPw(){
    showDialog(context: context, builder: (context) => AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: const Text("User tapped forgot password"),
    ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            Text(
              "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(height: 25),

            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyButton(text: "Sign In",  onTap: (){
            login();
            // Navigator.pop(context);
          }
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text("Not a member?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: 
                Text("Register Now",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ),
                const SizedBox(width: 4),

              ],
            )
          ],
        )
      )
    );
  }
}
