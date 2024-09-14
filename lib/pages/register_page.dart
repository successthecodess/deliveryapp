import 'package:deliveryapp/services/auth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  final  emailController =TextEditingController();
  final  passwordController =TextEditingController();
  final  confirmPasswordController =TextEditingController();

  void register() async {
    final _authService = AuthService();
    if(passwordController.text == confirmPasswordController.text){
      try{
        await _authService.signInWithEmailPassword(emailController.text, 
        passwordController.text);
      }
      catch (e) {
        showDialog(context: context, builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
        );
      }
    }

    else{
      
        showDialog(context: context, builder: (context) => const AlertDialog(
          title: Text("Passwords don't match"),
        ),
        );
      
    }
  
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
              "Let's create an account for you",
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
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),

              MyTextfield(
              controller: passwordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),
            const SizedBox(height: 10),

            MyButton(text: "Sign Up", onTap: (){
            register();
            // Navigator.pop(context);
          },
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text("Already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: 
                Text("Login Now",
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
