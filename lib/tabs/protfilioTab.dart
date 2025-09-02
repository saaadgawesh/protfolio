import 'package:flutter/material.dart';
import 'package:protfolio/tabs/widget/_buildProfileCard.dart';

class PortfolioTab extends StatelessWidget {
  const PortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header Card
              buildProfileCard(),

              const SizedBox(height: 16),

              // About Me Section
            ],
          ),
        ),
      ),
    );
  }
}
