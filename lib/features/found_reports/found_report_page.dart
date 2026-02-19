import 'package:flutter/material.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/custom_button.dart';

class FoundReportPage extends StatefulWidget {
  const FoundReportPage({super.key});

    @override
      _FoundReportPageState createState() => _FoundReportPageState();
      }

      class _FoundReportPageState extends State<FoundReportPage> {
        final nameController = TextEditingController();
          final descriptionController = TextEditingController();

            void submitReport() {
                ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                              content: Text(
                                          'Found report submitted\nName: ${nameController.text}\nDescription: ${descriptionController.text}'),
                                                ),
                                                    );
                                                        Navigator.pop(context);
                                                          }

                                                            @override
                                                              Widget build(BuildContext context) {
                                                                  return Scaffold(
                                                                        appBar: AppBar(title: const Text('Report Found Item')),
                                                                              body: Padding(
                                                                                      padding: const EdgeInsets.all(20),
                                                                                              child: Column(
                                                                                                        children: [
                                                                                                                    CustomTextField(controller: nameController, hint: 'Item Name'),
                                                                                                                                const SizedBox(height: 20),
                                                                                                                                            CustomTextField(controller: descriptionController, hint: 'Description'),
                                                                                                                                                        const SizedBox(height: 20),
                                                                                                                                                                    CustomButton(text: 'Submit', onPressed: submitReport),
                                                                                                                                                                              ],
                                                                                                                                                                                      ),
                                                                                                                                                                                            ),
                                                                                                                                                                                                );
                                                                                                                                                                                                  }
                                                                                                                                                                                                  }