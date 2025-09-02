import 'package:flutter/material.dart';
import 'package:protfolio/apptheme/appthemCloude.dart';
import 'package:protfolio/tabs/widget/_buildProfileCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Abouttab extends StatefulWidget {
  const Abouttab({super.key});

  @override
  State<Abouttab> createState() => _AbouttabState();
}

class _AbouttabState extends State<Abouttab> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  final List<Map<String, String>> _recommendations = [
    {
      'name': 'John Doe',
      'position': 'Senior Developer at Tech Corp',
      'text':
          'Outstanding developer with excellent problem-solving skills. Delivered high-quality Flutter applications consistently.',
    },
    {
      'name': 'Sarah Smith',
      'position': 'Project Manager at StartupXYZ',
      'text':
          'Great team player and communicator. Always meets deadlines and produces clean, maintainable code.',
    },
    {
      'name': 'Mike Johnson',
      'position': 'Tech Lead at Innovation Inc',
      'text':
          'Highly skilled in Flutter development. Quick learner and adapts well to new technologies and frameworks.',
    },
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              buildProfileCard(),

              const SizedBox(height: 16),

              _buildAboutMeSection(),

              const SizedBox(height: 16),

              _buildSkillsSection(),

              const SizedBox(height: 16),

              _buildRecommendationsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutMeSection() {
    return Container(
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
          Text(
            'About Me',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Divider(
            color: PortfolioColors.golden,
            thickness: 5,
            indent: 2,
            endIndent: 250,
          ),
          const SizedBox(height: 12),
          Text(
            'Passionate Flutter developer with 6+ months of experience in mobile app development. '
            'I specialize in creating beautiful, performant cross-platform applications that deliver '
            'exceptional user experiences. My expertise includes state management, API integration, '
            'and implementing modern UI/UX designs.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey[300],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsSection() {
    final skills = [
      {
        'icon': Icons.phone_android,
        'title': 'Mobile Development',
        'subtitle': 'Flutter & Dart',
      },
      {'icon': Icons.api, 'title': 'API Integration', 'subtitle': 'REST '},
      {
        'icon': Icons.design_services,
        'title': 'UI/UX Design',
        'subtitle': 'Modern Interfaces',
      },
      {
        'icon': Icons.cloud,
        'title': 'Backend Services',
        'subtitle': 'Firebase',
      },
    ];

    return Container(
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
          Text(
            'Skills & Services',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Divider(
            color: PortfolioColors.golden,
            thickness: 5,
            indent: 2,
            endIndent: 250,
          ),
          const SizedBox(height: 16),
          ...skills
              .map(
                (skill) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: PortfolioColors.golden,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          skill['icon'] as IconData,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              skill['title'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              skill['subtitle'] as String,
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
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  Widget _buildRecommendationsSection() {
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
            itemCount: _recommendations.length,
            itemBuilder: (context, index) {
              final recommendation = _recommendations[index];
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
            count: _recommendations.length,
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
}
