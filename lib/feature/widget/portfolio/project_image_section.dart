import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/model/project_model.dart';
import 'package:protfolio/feature/widget/portfolio/project_image_fallback.dart';

class ProjectImageSection extends StatefulWidget {
  const ProjectImageSection({super.key, required this.project});

  final ProjectModel project;

  @override
  State<ProjectImageSection> createState() => _ProjectImageSectionState();
}

class _ProjectImageSectionState extends State<ProjectImageSection> {
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final images = widget.project.imagePaths;

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.r14),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child:
            images.isNotEmpty
                ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: images.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          errorBuilder:
                              (_, __, ___) => ProjectImageFallback(
                                title: widget.project.title,
                                category: widget.project.category,
                              ),
                        );
                      },
                    ),
                    if (images.length > 1)
                      Positioned(
                        top: AppSizes.h12,
                        right: AppSizes.w12,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.45),
                            borderRadius: BorderRadius.circular(AppSizes.r24),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.w8,
                              vertical: AppSizes.h4,
                            ),
                            child: Text(
                              '${_currentIndex + 1}/${images.length}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: AppSizes.sp11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                )
                : ProjectImageFallback(
                  title: widget.project.title,
                  category: widget.project.category,
                ),
      ),
    );
  }
}
