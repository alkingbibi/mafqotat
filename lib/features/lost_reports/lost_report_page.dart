import 'package:flutter/material.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/custom_button.dart';

class LostReportPage extends StatefulWidget {
  const LostReportPage({super.key});

    @override
      _LostReportPageState createState() => _LostReportPageState();
      }

      class _LostReportPageState extends State<LostReportPage> {
        final nameController = TextEditingController();
          final descriptionController = TextEditingController();

            void submitReport() {
                ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                              content: Text(
                                          'Lost report submitted\nName: ${nameController.text}\nDescription: ${descriptionController.text}'),
                                                ),
                                                    );
                                                        Navigator.pop(context);
                                                          }

                                                            @override
                                                              Widget build(BuildContext context) {
                                                                  return Scaffold(
                                                                        appBar: AppBar(title: const Text('Report Lost Item')),
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