import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/about/recommendations_list.dart';
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
          padding: EdgeInsets.only(left: AppSizes.w4, bottom: AppSizes.h12),
          child: Text(
            AppStrings.recommendationTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: AppSizes.h180,
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
                margin: EdgeInsets.only(right: AppSizes.w8),
                padding: EdgeInsets.all(AppSizes.r16),
                decoration: BoxDecoration(
                  color: PortfolioColors.cardDark,
                  borderRadius: BorderRadius.circular(AppSizes.r15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: AppSizes.r8,
                      offset: Offset(0, AppSizes.h4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: AppSizes.r20,
                          backgroundColor: PortfolioColors.golden,
                          child: Text(
                            recommendation['name']![0],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: AppSizes.sp16,
                            ),
                          ),
                        ),
                        SizedBox(width: AppSizes.w12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommendation['name']!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppSizes.sp16,
                                ),
                              ),
                              Text(
                                recommendation['position']!,
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: AppSizes.sp12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.h12),
                    Expanded(
                      child: Text(
                        recommendation['text']!,
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: AppSizes.sp14,
                          height: 1.4,
                        ),
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
        SizedBox(height: AppSizes.h16),
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
              dotHeight: AppSizes.h8,
              dotWidth: AppSizes.w8,
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
