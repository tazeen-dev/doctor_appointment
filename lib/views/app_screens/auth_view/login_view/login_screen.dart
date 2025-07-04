import 'package:flutter/material.dart';

import '../../../../core/controller/components/textfield/textfield.dart';
import '../signup_view/signup_view.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth < 600 ? 24 : screenWidth * 0.2,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  label: "Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => value != null && value.contains("@")
                      ? null
                      : "Enter a valid email",
                  onSaved: (value) => email = value!,
                ),
                CustomTextFormField(
                  label: "Password",
                  obscureText: _obscure,
                  validator: (value) => value != null && value.length >= 6
                      ? null
                      : "Password too short",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  ),
                  onSaved: (value) => password = value!,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // TODO: Login logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Logged in")),
                        );
                      }
                    },
                    child: const Text("Login"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                   Navigator.pushNamed(context, '/signup');
                  },
                  child: const Text("Don't have an account? Sign up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

