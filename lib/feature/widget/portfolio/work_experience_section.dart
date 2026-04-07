import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/data/work_experience_data.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/tabs/model/work_experience_model.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.r20),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDark,
        borderRadius: BorderRadius.circular(AppSizes.r18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Experience',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontSize: AppSizes.sp22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppSizes.h10),
          Text(
            'Part-time roles where I shipped real products for healthcare and education use cases.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.grayLighter,
              fontSize: AppSizes.sp14,
              height: 1.6,
            ),
          ),
          SizedBox(height: AppSizes.h16),
          ...workExperiences.asMap().entries.map((entry) {
            final bool isLast = entry.key == workExperiences.length - 1;
            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : AppSizes.h16),
              child: _ExperienceCard(experience: entry.value),
            );
          }),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  const _ExperienceCard({required this.experience});

  final WorkExperienceModel experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.r16),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDarker,
        borderRadius: BorderRadius.circular(AppSizes.r16),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: AppSizes.w8,
            runSpacing: AppSizes.h8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                experience.company,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              _MetaChip(
                label: experience.employmentType,
                color: PortfolioColors.golden.withOpacity(0.18),
                textColor: PortfolioColors.golden,
              ),
              _MetaChip(
                label: experience.status,
                color:
                    experience.status == 'Current'
                        ? PortfolioColors.greenActive.withOpacity(0.18)
                        : Colors.white.withOpacity(0.08),
                textColor:
                    experience.status == 'Current'
                        ? PortfolioColors.greenActive
                        : PortfolioColors.grayLighter,
              ),
            ],
          ),
          SizedBox(height: AppSizes.h10),
          Text(
            experience.projectTitle,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: PortfolioColors.grayLighter,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: AppSizes.h8),
          Text(
            experience.description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.grayLighter,
              height: 1.6,
            ),
          ),
          SizedBox(height: AppSizes.h12),
          Wrap(
            spacing: AppSizes.w16,
            runSpacing: AppSizes.h8,
            children: [
              _InfoRow(icon: Icons.schedule, text: experience.duration),
              _InfoRow(icon: Icons.work_outline, text: 'Flutter Developer'),
            ],
          ),
          SizedBox(height: AppSizes.h12),
          ...experience.highlights.map(
            (highlight) => Padding(
              padding: EdgeInsets.only(bottom: AppSizes.h8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: AppSizes.h6),
                    child: Icon(
                      Icons.circle,
                      size: AppSizes.icon16 / 2,
                      color: PortfolioColors.golden,
                    ),
                  ),
                  SizedBox(width: AppSizes.w10),
                  Expanded(
                    child: Text(
                      highlight,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MetaChip extends StatelessWidget {
  const _MetaChip({
    required this.label,
    required this.color,
    required this.textColor,
  });

  final String label;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w10,
        vertical: AppSizes.h6,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSizes.r24),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: textColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: AppSizes.icon16, color: PortfolioColors.golden),
        SizedBox(width: AppSizes.w6),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: PortfolioColors.grayLighter,
          ),
        ),
      ],
    );
  }
}
