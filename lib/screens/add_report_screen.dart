import 'package:flutter/material.dart';

class AddReportScreen extends StatelessWidget {
    const AddReportScreen({super.key});

      @override
        Widget build(BuildContext context) {
              return Scaffold(
                      backgroundColor: Colors.white,
                            appBar: AppBar(
                                      title: const Text("➕ إضافة بلاغ"),
                                              centerTitle: true,
                            ),
                                  body: Padding(
                                            padding: const EdgeInsets.all(20),
                                                    child: Column(
                                                                children: [
                                                                              TextField(
                                                                                              decoration: InputDecoration(
                                                                                                                labelText: "عنوان البلاغ",
                                                                                                                                border: OutlineInputBorder(),
                                                                                              ),
                                                                              ),
                                                                                          const SizedBox(height: 15),
                                                                                                      TextField(
                                                                                                                      maxLines: 4,
                                                                                                                                    decoration: InputDecoration(
                                                                                                                                                      labelText: "تفاصيل البلاغ",
                                                                                                                                                                      border: OutlineInputBorder(),
                                                                                                                                    ),
                                                                                                      ),
                                                                                                                  const SizedBox(height: 20),
                                                                                                                              ElevatedButton.icon(
                                                                                                                                              onPressed: () {},
                                                                                                                                                            icon: Icon(Icons.send),
                                                                                                                                                                          label: Text("إرسال البلاغ"),
                                                                                                                              )
                                                                ],
                                                    ),
                                  ),
              );
        }
}