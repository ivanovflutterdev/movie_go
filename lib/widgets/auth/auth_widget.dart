import 'package:flutter/material.dart';
import 'package:movie_go/Theme/button_style.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to Movie Go'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: const [
          _HeaderWidget(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: _FormWidget(),
          ),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 25),
          const Text(
            'Welcome to Movie Go',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Please login to continue',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
const _FormWidget();

  @override
State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {

final _loginTextController = TextEditingController(text: "admin");
final _passwordTextController = TextEditingController(text: "admin");
String? errorText = null;

 void _auth() {
  final login = _loginTextController.text;
  final password = _passwordTextController.text;
  if (login == "admin" && password == "admin") {
    errorText = null;
    Navigator.of(context).pushReplacementNamed("/main_screen");
  } else {
    errorText = "Invalid login or password";
    setState(() {}); 
  }
 }

 void _resetPassword() {
  print("reset password");
 }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(
            errorText!,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 15),
        ],
        const SizedBox(height: 25),
        TextField(
          controller: _loginTextController,
          decoration: InputDecoration(
            labelText: 'Username',
            hintStyle: textStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 15),
        TextField(
          controller: _passwordTextController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintStyle: textStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _auth,
              style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 90, 150, 255)),
    foregroundColor: WidgetStateProperty.all(Colors.white),
    textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 25, vertical: 5)),
            ),
              child: const Text('Login'),
            ),
            SizedBox(width: 20),
            TextButton(
              onPressed: _resetPassword,
              style: AppButtonStyle.linkButton,
              child: const Text('Reset Password'),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            TextButton(
              onPressed: () {
                print("Go to registration");
              },
              style: AppButtonStyle.linkButton,
              child: const Text('Register'),
            ),
          ],
        )
      ],
    );
  }
}