import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/widget/default_item_skills.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';
import 'package:protfolio/feature/tabs/widget/pdf.dart';
import 'package:protfolio/feature/tabs/widget/row_Item_In_skills.dart';

class Buildresumedetalis extends StatelessWidget {
  const Buildresumedetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isNarrow = constraints.maxWidth < 520;
        final bool isWide = constraints.maxWidth > 900;
        final double horizontalPadding =
            isNarrow ? AppSizes.w12 : AppSizes.w16;
        final double verticalSpacing =
            isNarrow ? AppSizes.h12 : AppSizes.h15;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(horizontalPadding),
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
              Text(
                'Resume Details',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              defaultdivider(
                AppSizes.h3,
                0,
                isWide ? AppSizes.w160 : AppSizes.w130,
              ),
              SizedBox(height: isNarrow ? AppSizes.h6 : AppSizes.h8),
              isNarrow
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.bookmark,
                              color: PortfolioColors.golden,
                              size: AppSizes.icon24,
                            ),
                            SizedBox(width: AppSizes.w12),
                            Expanded(
                              child: Text(
                                'Professional Experience',
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.h12),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: AppSizes.w8,
                          runSpacing: AppSizes.h8,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PdfButton(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.download,
                                color: PortfolioColors.golden,
                                size: AppSizes.icon24,
                              ),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              visualDensity: VisualDensity.compact,
                            ),
                            Text(
                              'Cv',
                              style: TextStyle(
                                color: PortfolioColors.golden,
                                fontSize: AppSizes.sp16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bookmark,
                          color: PortfolioColors.golden,
                          size: AppSizes.icon24,
                        ),
                        SizedBox(width: AppSizes.w16),
                        Expanded(
                          child: Text(
                            'Professional Experience',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: AppSizes.w4,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => PdfButton(),
                                  ),
                                );
                              },
                              icon: Icon(
                                Icons.download,
                                color: PortfolioColors.golden,
                                size: AppSizes.icon24,
                              ),
                            ),
                            Text(
                              'Cv',
                              style: TextStyle(
                                color: PortfolioColors.golden,
                                fontSize: AppSizes.sp16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                'Statemanagement',
                ' Provider',
                ' Bloc_cubit',
                ' ',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(context, 'APIs', ' RESTful', ' ', ' '),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                'Local storage',
                ' Hive ',
                ' Shared preferences',
                ' ',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                'Firebase',
                ' Authentication',
                ' cloud firestore',
                ' Storage',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                'Flutter Developer',
                ' Flutter Developer',
                ' Flutter Developer',
                ' Flutter Developer',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                'Flutter Developer',
                ' Flutter Developer',
                ' Flutter Developer',
                ' Flutter Developer',
              ),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'Themes'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'localization'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'responsive design'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'animations'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'agile'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'data structure'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'solid'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'clean code'),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, 'ci/cd'),
            ],
          ),
        );
      },
    );
  }
}
