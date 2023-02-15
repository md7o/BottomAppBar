import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty) {
      return 'E-mail address is required.';
    }

    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty)
      return 'Password is required.';

    return null;
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      Navigator.of(context).pushNamed('/');
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191E2C),
      body: Form(
        key: _key,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextFormField(
                      controller: _emailController,
                      validator: validateEmail,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Email',
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextFormField(
                      controller: _passwordController,
                      validator: validatePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      validator: validatePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 25),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Confirm Password',
                        prefixIcon: const Icon(
                          Icons.lock_reset,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: GestureDetector(
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                          setState(() {
                            signUp();
                          });
                          signUp();
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Have account?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushReplacementNamed('login'),
                        child: const Text(
                          'Login now',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
