import 'package:flutter/material.dart';

class ReportDetailsScreen extends StatelessWidget {
    const ReportDetailsScreen({super.key});

      @override
        Widget build(BuildContext context) {
              return Scaffold(
                      appBar: AppBar(
                                title: const Text("تفاصيل البلاغ"),
                      ),
                            body: Padding(
                                      padding: const EdgeInsets.all(20),
                                              child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                                  const Text(
                                                                                                  "عنوان البلاغ",
                                                                                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                                                  ),
                                                                                              const SizedBox(height: 8),
                                                                                                          const Text(
                                                                                                                          "حقيبة مدرسية مفقودة في الحديقة العامة، اللون أزرق، عليها بطاقة الاسم.",
                                                                                                                                        style: TextStyle(fontSize: 16),
                                                                                                          ),
                                                                                                                      const SizedBox(height: 20),
                                                                                                                                  const Text(
                                                                                                                                                  "نوع البلاغ",
                                                                                                                                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                                                                                                  ),
                                                                                                                                              const SizedBox(height: 8),
                                                                                                                                                          const Text(
                                                                                                                                                                          "مفقود",
                                                                                                                                                                                        style: TextStyle(fontSize: 16, color: Colors.red),
                                                                                                                                                          ),
                                                                                                                                                                      const Spacer(),
                                                                                                                                                                                  Center(
                                                                                                                                                                                                  child: ElevatedButton.icon(
                                                                                                                                                                                                                    onPressed: () {},
                                                                                                                                                                                                                                    icon: const Icon(Icons.share),
                                                                                                                                                                                                                                                    label: const Text("مشاركة البلاغ"),
                                                                                                                                                                                                  ),
                                                                                                                                                                                  )
                                                                    ],
                                              ),
                            ),
              );
        }
}