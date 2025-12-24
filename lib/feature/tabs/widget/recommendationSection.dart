import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/tabs/widget/recommendationsList.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: camel_case_types
class RecomendationSection extends StatefulWidget {
  const RecomendationSection({super.key});

  @override
  State<RecomendationSection> createState() => _RecomendationSectionState();
}

// ignore: camel_case_types
class _RecomendationSectionState extends State<RecomendationSection> {
  final PageController _controller = PageController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            'Recommendations',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 180,

          child: PageView.builder(
            controller: _controller,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            physics: const BouncingScrollPhysics(),
            itemCount: recommendations.length,
            itemBuilder: (context, index) {
              final recommendation = recommendations[index];
              return Container(
                margin: const EdgeInsets.only(right: 8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: PortfolioColors.cardDark,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: PortfolioColors.golden,
                          child: Text(
                            recommendation['name']![0],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommendation['name']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                recommendation['position']!,
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: Text(
                        recommendation['text']!,
                        style: TextStyle(color: Colors.grey[300], height: 1.4),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: SmoothPageIndicator(
            controller: _controller,
            count: recommendations.length,
            onDotClicked: (index) {
              _controller.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            effect: WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: PortfolioColors.golden,
            ),
          ),
        ),
      ],
    );
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
