 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildFeatureCard({required String title, required String imagePath,required double height, required Color color}) {
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SvgPicture.asset(imagePath, width: 50, height: 50), // Use SvgPicture.asset for SVG images
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }