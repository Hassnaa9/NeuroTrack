import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nurtotrack/Core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  static const route = '/Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const Text(
              "Mohsin",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),

            // Autism Level Slider Card
            _buildAutismLevelCard(),

            const SizedBox(height: 20),

            // Therapy Goals Card
            _buildFeatureCard(
              title: "Therapy Goals",
              imagePath: AssetsData.therapy,
              color: const Color(0xFFFFF4DA), // Light Yellow
            ),

            const SizedBox(height: 12),

            // Daily Activities Card
            _buildFeatureCard(
              title: "Daily Activities",
              imagePath: AssetsData.actvts,
              color: const Color(0xFFFFEDED), // Light Pink
            ),

            const SizedBox(height: 12),

            // Development Milestones Card
            _buildFeatureCard(
              title: "Development Milestones",
              imagePath: AssetsData.milestone,
              color: const Color(0xFFE6F5E9), // Light Green
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  // Autism Level Slider Widget
  Widget _buildAutismLevelCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFDFA8F6), // Purple
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Autism Level",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Slider(
                  value: 1,
                  min: 0,
                  max: 10,
                  onChanged: null, // Disabled for now
                  activeColor: Colors.white,
                  inactiveColor: Colors.white30,
                ),
              ),
              const Text(
                "1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Feature Card Widget
  Widget _buildFeatureCard({required String title, required String imagePath, required Color color}) {
    return Container(
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

  // Bottom Navigation Bar
  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.black54,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Progress"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Calendar"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }
}
