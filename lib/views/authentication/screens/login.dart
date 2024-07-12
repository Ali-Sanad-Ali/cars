import 'package:cars_app/utils/core/colors.dart';
import 'package:cars_app/views/authentication/widgets/custom_button.dart';
import 'package:cars_app/views/authentication/widgets/custom_text_fields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 80),
                      CustomTextFields(
                        validator: (name) {
                          if (name == null || name.isEmpty) {
                            return 'Please enter your name';
                          } else if (name.length < 3) {
                            return 'Name should be at least 3 characters';
                          }
                          return null;
                        },
                        prefixIcon: Icon(Icons.person, color: Colors.grey),
                        hintText: 'Name',
                        controller: _nameController,
                      ),
                      SizedBox(height: 20),
                      CustomTextFields(
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Please enter your password';
                          } else if (password.length < 6) {
                            return 'Password should be at least 6 characters';
                          }
                          return null;
                        },
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        hintText: 'Password',
                        controller: _passwordController,
                        isObscure: true,
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/homePage');
                          }
                        },
                        btnColor: AppColors.btnColors1,
                        btnTextColor: Colors.white,
                        fontSize: 20,
                        btnText: 'Login',
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        child: Text('continue as guest'),
                        onTap: () {
                          Navigator.pushNamed(context, '/homePage');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Icon(Icons.arrow_circle_left_outlined, size: 30),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/optionPage');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
