// lib/screens/home_page.dart
import 'package:flutter/material.dart';
import '../models/tv_series.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular TV Series'),
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: tvSeriesList.length,
        itemBuilder: (context, index) {
          final series = tvSeriesList[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(series: series),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    series.image,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      series.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}