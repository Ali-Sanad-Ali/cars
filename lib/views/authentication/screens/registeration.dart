import 'package:cars_app/views/authentication/widgets/custom_button.dart';
import 'package:cars_app/views/authentication/widgets/custom_text_fields.dart';
import 'package:cars_app/utils/core/colors.dart';
import 'package:flutter/material.dart';

class Registeration extends StatelessWidget {
  const Registeration({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _emailController = TextEditingController();
    final _locationController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();

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
                      SizedBox(height: 50),
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
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Please enter your email';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                              .hasMatch(email)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        prefixIcon: Icon(Icons.email, color: Colors.grey),
                        hintText: 'Email',
                        controller: _emailController,
                      ),
                      SizedBox(height: 20),
                      CustomTextFields(
                        validator: (location) {
                          if (location == null || location.isEmpty) {
                            return 'Please enter your location';
                          }
                          return null;
                        },
                        prefixIcon: Icon(Icons.location_on, color: Colors.grey),
                        hintText: 'Location',
                        controller: _locationController,
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
                      CustomTextFields(
                        validator: (confirmPassword) {
                          if (confirmPassword == null ||
                              confirmPassword.isEmpty) {
                            return 'Please confirm your password';
                          } else if (confirmPassword !=
                              _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        prefixIcon: Icon(Icons.lock, color: Colors.grey),
                        hintText: 'Confirm Password',
                        controller: _confirmPasswordController,
                        isObscure: true,
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform registration action
                          }
                        },
                        btnColor: AppColors.btnColors1,
                        btnTextColor: Colors.white,
                        fontSize: 20,
                        btnText: 'Create Account',
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
                    Navigator.pop(context);
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
