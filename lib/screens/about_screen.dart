import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
    const AboutScreen({super.key});

      @override
        Widget build(BuildContext context) {
              return Scaffold(
                      appBar: AppBar(
                                title: const Text("عن التطبيق"),
                      ),
                            body: Padding(
                                      padding: const EdgeInsets.all(20),
                                              child: Column(
                                                          children: [
                                                                        const Text(
                                                                                        "النبراس البعداني",
                                                                                                      style: TextStyle(
                                                                                                                          fontSize: 24,
                                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                                                              color: Colors.black),
                                                                        ),
                                                                                    const SizedBox(height: 10),
                                                                                                const Text(
                                                                                                                "تطبيق مفقوداتي يساعدك على تسجيل الأشياء المفقودة والموجودة بطريقة سهلة وسريعة.",
                                                                                                                              style: TextStyle(fontSize: 16),
                                                                                                                                            textAlign: TextAlign.center,
                                                                                                ),
                                                                                                            const SizedBox(height: 30),
                                                                                                                        Container(
                                                                                                                                        padding: const EdgeInsets.all(20),
                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                        color: Colors.black,
                                                                                                                                                                                        borderRadius: BorderRadius.circular(18),
                                                                                                                                                      ),
                                                                                                                                                                    child: const Text(
                                                                                                                                                                                      "Developed by Alnbrass Albadani",
                                                                                                                                                                                                      style: TextStyle(
                                                                                                                                                                                                                          color: Colors.white,
                                                                                                                                                                                                                                            fontSize: 14,
                                                                                                                                                                                                      ),
                                                                                                                                                                    ),
                                                                                                                        )
                                                          ],
                                              ),
                            ),
              );
        }
}