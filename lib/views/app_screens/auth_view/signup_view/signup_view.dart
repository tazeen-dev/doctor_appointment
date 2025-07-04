import 'package:flutter/material.dart';

import '../../../../core/controller/components/textfield/textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

  String name = '';
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
                  "Sign Up",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  label: "Full Name",
                  validator: (value) =>
                  value != null && value.isNotEmpty ? null : "Enter name",
                  onSaved: (value) => name = value!,
                ),
                CustomTextFormField(
                  label: "Email",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) =>
                  value != null && value.contains("@") ? null : "Invalid email",
                  onSaved: (value) => email = value!,
                ),
                CustomTextFormField(
                  label: "Password",
                  obscureText: _obscure,
                  validator: (value) => value != null && value.length >= 6
                      ? null
                      : "Minimum 6 characters",
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
                        // TODO: Signup logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Signed up")),
                        );
                      }
                    },
                    child: const Text("Sign Up"),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Already have an account? Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

