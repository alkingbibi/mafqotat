import 'package:flutter/material.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/custom_button.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

    @override
      Widget build(BuildContext context) {
          final emailController = TextEditingController();
              final passwordController = TextEditingController();

                  void login() {
                        ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                          content: Text(
                                                        'Login clicked\nEmail: ${emailController.text}\nPassword: ${passwordController.text}'),
                                                                ),
                                                                      );
                                                                          }

                                                                              return Scaffold(
                                                                                    appBar: AppBar(title: const Text('Login')),
                                                                                          body: Padding(
                                                                                                  padding: const EdgeInsets.all(20),
                                                                                                          child: Column(
                                                                                                                    children: [
                                                                                                                                CustomTextField(controller: emailController, hint: 'Email'),
                                                                                                                                            const SizedBox(height: 20),
                                                                                                                                                        CustomTextField(controller: passwordController, hint: 'Password'),
                                                                                                                                                                    const SizedBox(height: 20),
                                                                                                                                                                                CustomButton(text: 'Login', onPressed: login),
                                                                                                                                                                                            const SizedBox(height: 20),
                                                                                                                                                                                                        TextButton(
                                                                                                                                                                                                                      onPressed: () {
                                                                                                                                                                                                                                      Navigator.push(
                                                                                                                                                                                                                                                        context,
                                                                                                                                                                                                                                                                          MaterialPageRoute(builder: (_) => const RegisterPage()),
                                                                                                                                                                                                                                                                                          );
                                                                                                                                                                                                                                                                                                        },
                                                                                                                                                                                                                                                                                                                      child: const Text('Go to Register'),
                                                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                                                            ],
                                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                                                                                                                                              );
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                }