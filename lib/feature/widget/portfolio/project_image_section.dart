import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/model/project_model.dart';
import 'package:protfolio/feature/widget/portfolio/project_image_fallback.dart';

class ProjectImageSection extends StatefulWidget {
  const ProjectImageSection({super.key, required this.project});

  final ProjectModel project;

  @override
  State<ProjectImageSection> createState() => _ProjectImageSectionState();
}

class _ProjectImageSectionState extends State<ProjectImageSection> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final images = widget.project.imagePaths;
    final hasImages = images.isNotEmpty;
    final currentImage =
        hasImages ? images[_currentIndex.clamp(0, images.length - 1)] : null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.r14),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child:
                hasImages
                    ? Stack(
                      fit: StackFit.expand,
                      children: [
                        ColoredBox(
                          color: Colors.black,
                          child: Image.asset(
                            currentImage!,
                            key: ValueKey(currentImage),
                            fit: BoxFit.cover,
                            errorBuilder:
                                (_, __, ___) => ProjectImageFallback(
                                  title: widget.project.title,
                                  category: widget.project.category,
                                ),
                          ),
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
                        if (images.length > 1)
                          Positioned(
                            left: AppSizes.w12,
                            right: AppSizes.w12,
                            bottom: AppSizes.h12,
                            child: Row(
                              children: [
                                _ImageNavButton(
                                  icon: Icons.chevron_left_rounded,
                                  onTap: () {
                                    setState(() {
                                      _currentIndex =
                                          (_currentIndex - 1 + images.length) %
                                          images.length;
                                    });
                                  },
                                ),
                                const Spacer(),
                                _ImageNavButton(
                                  icon: Icons.chevron_right_rounded,
                                  onTap: () {
                                    setState(() {
                                      _currentIndex =
                                          (_currentIndex + 1) % images.length;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                      ],
                    )
                    : ProjectImageFallback(
                      title: widget.project.title,
                      category: widget.project.category,
                    ),
          ),
        ),
        if (images.length > 1) ...[
          SizedBox(height: AppSizes.h12),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: AppSizes.w6,
            children: List.generate(
              images.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: index == _currentIndex ? AppSizes.w20 : AppSizes.w8,
                  height: AppSizes.h8,
                  decoration: BoxDecoration(
                    color:
                        index == _currentIndex
                            ? Colors.white
                            : Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(AppSizes.r24),
                  ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _ImageNavButton extends StatelessWidget {
  const _ImageNavButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.black.withOpacity(0.35),
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.r8),
            child: Icon(icon, color: Colors.white, size: AppSizes.icon24),
          ),
        ),
      ),
    );
  }
}
