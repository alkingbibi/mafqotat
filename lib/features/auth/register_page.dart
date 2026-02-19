import 'package:flutter/material.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/custom_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

    @override
      Widget build(BuildContext context) {
          final emailController = TextEditingController();
              final passwordController = TextEditingController();

                  void register() {
                        ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                          content: Text(
                                                        'Register clicked\nEmail: ${emailController.text}\nPassword: ${passwordController.text}'),
                                                                ),
                                                                      );
                                                                          }

                                                                              return Scaffold(
                                                                                    appBar: AppBar(title: const Text('Register')),
                                                                                          body: Padding(
                                                                                                  padding: const EdgeInsets.all(20),
                                                                                                          child: Column(
                                                                                                                    children: [
                                                                                                                                CustomTextField(controller: emailController, hint: 'Email'),
                                                                                                                                            const SizedBox(height: 20),
                                                                                                                                                        CustomTextField(controller: passwordController, hint: 'Password'),
                                                                                                                                                                    const SizedBox(height: 20),
                                                                                                                                                                                CustomButton(text: 'Register', onPressed: register),
                                                                                                                                                                                          ],
                                                                                                                                                                                                  ),
                                                                                                                                                                                                        ),
                                                                                                                                                                                                            );
                                                                                                                                                                                                              }
                                                                                                                                                                                                              }