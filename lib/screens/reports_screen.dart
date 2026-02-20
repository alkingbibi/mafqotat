import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
    const ReportsScreen({super.key});

      @override
        Widget build(BuildContext context) {
              // مثال بيانات بلاغات (مؤقت)
                  final reports = [
                          {"title": "حقيبة مدرسية", "type": "مفقود"},
                                {"title": "هاتف أيفون", "type": "موجود"},
                                      {"title": "مفاتيح السيارة", "type": "مفقود"},
                  ];

                      return Scaffold(
                              appBar: AppBar(
                                        title: const Text("عرض البلاغات"),
                              ),
                                    body: Padding(
                                              padding: const EdgeInsets.all(16),
                                                      child: ListView.builder(
                                                                  itemCount: reports.length,
                                                                            itemBuilder: (context, index) {
                                                                                          final report = reports[index];
                                                                                                      return GestureDetector(
                                                                                                                      onTap: () {
                                                                                                                                        Navigator.pushNamed(context, '/details');
                                                                                                                      },
                                                                                                                                    child: Container(
                                                                                                                                                      margin: const EdgeInsets.symmetric(vertical: 8),
                                                                                                                                                                      padding: const EdgeInsets.all(20),
                                                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                                                          color: Colors.white,
                                                                                                                                                                                                                            borderRadius: BorderRadius.circular(18),
                                                                                                                                                                                                                                              boxShadow: [
                                                                                                                                                                                                                                                                    BoxShadow(
                                                                                                                                                                                                                                                                                            color: Colors.grey.withOpacity(0.08),
                                                                                                                                                                                                                                                                                                                  blurRadius: 15,
                                                                                                                                                                                                                                                                                                                                        offset: const Offset(0, 8),
                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                              ],
                                                                                                                                                                                      ),
                                                                                                                                                                                                      child: Row(
                                                                                                                                                                                                                          children: [
                                                                                                                                                                                                                                                Icon(
                                                                                                                                                                                                                                                                        report["type"] == "مفقود"
                                                                                                                                                                                                                                                                                                  ? Icons.search
                                                                                                                                                                                                                                                                                                                            : Icons.inventory,
                                                                                                                                                                                                                                                                                                                                                  color: report["type"] == "مفقود"
                                                                                                                                                                                                                                                                                                                                                                            ? Colors.red
                                                                                                                                                                                                                                                                                                                                                                                                      : Colors.green,
                                                                                                                                                                                                                                                                                                                                                                                                                            size: 28,
                                                                                                                                                                                                                                                ),
                                                                                                                                                                                                                                                                    const SizedBox(width: 16),
                                                                                                                                                                                                                                                                                        Text(
                                                                                                                                                                                                                                                                                                                report["title"]!,
                                                                                                                                                                                                                                                                                                                                      style: const TextStyle(fontSize: 18),
                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                            const Spacer(),
                                                                                                                                                                                                                                                                                                                                Text(
                                                                                                                                                                                                                                                                                                                                                        report["type"]!,
                                                                                                                                                                                                                                                                                                                                                                              style: TextStyle(
                                                                                                                                                                                                                                                                                                                                                                                                        color: report["type"] == "مفقود"
                                                                                                                                                                                                                                                                                                                                                                                                                                    ? Colors.red
                                                                                                                                                                                                                                                                                                                                                                                                                                                                : Colors.green,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                                                                                                )
                                                                                                                                                                                                                          ],
                                                                                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                      );
                                                                            },
                                                      ),
                                    ),
                      );
        }
}