import 'package:flutter/material.dart';
import 'screens/add_report_screen.dart';
import 'screens/reports_screen.dart';
import 'screens/report_details_screen.dart';
import 'screens/about_screen.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

      @override
        Widget build(BuildContext context) {
              return MaterialApp(
                      debugShowCheckedModeBanner: false,
                            title: 'مفقوداتي',
                                  theme: ThemeData(
                                            scaffoldBackgroundColor: Colors.white,
                                                    primaryColor: Colors.black,
                                                            fontFamily: 'Cairo',
                                                                    appBarTheme: const AppBarTheme(
                                                                                backgroundColor: Colors.white,
                                                                                          elevation: 0,
                                                                                                    centerTitle: true,
                                                                                                              iconTheme: IconThemeData(color: Colors.black),
                                                                                                                        titleTextStyle: TextStyle(
                                                                                                                                      color: Colors.black,
                                                                                                                                                  fontSize: 20,
                                                                                                                                                              fontWeight: FontWeight.bold,
                                                                                                                        ),
                                                                    ),
                                                                            elevatedButtonTheme: ElevatedButtonThemeData(
                                                                                        style: ElevatedButton.styleFrom(
                                                                                                      backgroundColor: Colors.black,
                                                                                                                  foregroundColor: Colors.white,
                                                                                                                              padding: const EdgeInsets.symmetric(
                                                                                                                                              horizontal: 24,
                                                                                                                                                            vertical: 14,
                                                                                                                              ),
                                                                                                                                          shape: RoundedRectangleBorder(
                                                                                                                                                          borderRadius: BorderRadius.circular(18),
                                                                                                                                          ),
                                                                                        ),
                                                                            ),
                                  ),

                                        // 🔥 Routes جاهزة
                                              routes: {
                                                        '/add': (context) => const AddReportScreen(),
                                                                '/reports': (context) => const ReportsScreen(),
                                                                        '/details': (context) => const ReportDetailsScreen(),
                                                                                '/about': (context) => const AboutScreen(),
                                              },

                                                    home: const HomePage(),
              );
        }
}

class HomePage extends StatelessWidget {
    const HomePage({super.key});

      @override
        Widget build(BuildContext context) {
              return Scaffold(
                      body: SafeArea(
                                child: Padding(
                                            padding: const EdgeInsets.all(20),
                                                      child: Column(
                                                                    children: [

                                                                                    const SizedBox(height: 40),

                                                                                                  // 🔥 هوية التطبيق
                                                                                                                const Text(
                                                                                                                                  "مفقوداتي",
                                                                                                                                                  style: TextStyle(
                                                                                                                                                                      fontSize: 28,
                                                                                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                                                  ),
                                                                                                                ),

                                                                                                                              const SizedBox(height: 8),

                                                                                                                                            const Text(
                                                                                                                                                              "نظام البلاغات الذكي",
                                                                                                                                                                              style: TextStyle(
                                                                                                                                                                                                  color: Colors.grey,
                                                                                                                                                                                                                    fontSize: 16,
                                                                                                                                                                              ),
                                                                                                                                            ),

                                                                                                                                                          const SizedBox(height: 60),

                                                                                                                                                                        _buildCard(
                                                                                                                                                                                          context,
                                                                                                                                                                                                          title: "إضافة بلاغ",
                                                                                                                                                                                                                          icon: Icons.add_circle_outline,
                                                                                                                                                                                                                                          route: '/add',
                                                                                                                                                                        ),

                                                                                                                                                                                      const SizedBox(height: 20),

                                                                                                                                                                                                    _buildCard(
                                                                                                                                                                                                                      context,
                                                                                                                                                                                                                                      title: "عرض البلاغات",
                                                                                                                                                                                                                                                      icon: Icons.list_alt,
                                                                                                                                                                                                                                                                      route: '/reports',
                                                                                                                                                                                                    ),

                                                                                                                                                                                                                  const SizedBox(height: 20),

                                                                                                                                                                                                                                _buildCard(
                                                                                                                                                                                                                                                  context,
                                                                                                                                                                                                                                                                  title: "عن التطبيق",
                                                                                                                                                                                                                                                                                  icon: Icons.info_outline,
                                                                                                                                                                                                                                                                                                  route: '/about',
                                                                                                                                                                                                                                ),

                                                                                                                                                                                                                                              const Spacer(),

                                                                                                                                                                                                                                                            const Text(
                                                                                                                                                                                                                                                                              "Developed by Alnbrass Albadani",
                                                                                                                                                                                                                                                                                              style: TextStyle(
                                                                                                                                                                                                                                                                                                                  color: Colors.grey,
                                                                                                                                                                                                                                                                                                                                    fontSize: 13,
                                                                                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                                                            ),

                                                                                                                                                                                                                                                                          const SizedBox(height: 10),
                                                                    ],
                                                      ),
                                ),
                      ),
              );
        }

          Widget _buildCard(
                  BuildContext context,
                        {required String title,
                              required IconData icon,
                                    required String route}) {
                                          return GestureDetector(
                                                  onTap: () {
                                                            Navigator.pushNamed(context, route);
                                                  },
                                                        child: Container(
                                                                  padding: const EdgeInsets.all(22),
                                                                          decoration: BoxDecoration(
                                                                                      color: Colors.white,
                                                                                                borderRadius: BorderRadius.circular(22),
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
                                                                                                            Icon(icon, size: 28, color: Colors.black),
                                                                                                                        const SizedBox(width: 18),
                                                                                                                                    Text(
                                                                                                                                                    title,
                                                                                                                                                                  style: const TextStyle(
                                                                                                                                                                                    fontSize: 18,
                                                                                                                                                                  ),
                                                                                                                                    ),
                                                                                              ],
                                                                                  ),
                                                        ),
                                          );
                                    }
}