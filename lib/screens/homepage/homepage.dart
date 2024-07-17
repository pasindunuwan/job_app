import 'package:flutter/material.dart';
import 'package:job_app/screens/homepage/widget/app_bar.dart';
import 'package:job_app/screens/homepage/widget/categary_bar.dart';
import 'package:job_app/screens/homepage/widget/popular_raw.dart';
import 'package:job_app/screens/homepage/widget/recent_column.dart';
import 'package:job_app/screens/homepage/widget/searchbar.dart';
import 'package:job_app/screens/homepage/widget/title_text.dart';
import 'package:job_app/service/get_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Custom_app_bar(),
                const SizedBox(
                  height: 15,
                ),
                const titleText(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Find Your \nCreative Job",
                  style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.bold, height: 0.8),
                ),
                const SizedBox(
                  height: 10,
                ),
                searchbar(size: size),
                const SizedBox(
                  height: 10,
                ),
                const categary_bar(
                  title: 'Popular Jobs',
                ),
                const SizedBox(height: 10),
                popular_raw(data: data, size: size),
                const categary_bar(
                  title: 'Recent Jobs',
                ),
                recent_column(data: data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
