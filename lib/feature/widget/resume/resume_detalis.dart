import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';
import 'package:protfolio/core/shared_widgets/default_item_skills.dart';
import 'package:protfolio/core/shared_widgets/open_link_widgets.dart';
import 'package:protfolio/core/shared_widgets/row_item_in_skills.dart';

class Buildresumedetalis extends StatelessWidget {
  const Buildresumedetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isNarrow = constraints.maxWidth < 520;
        final bool isWide = constraints.maxWidth > 900;
        final bool useStackedHeader = constraints.maxWidth < 650;
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
                AppStrings.resumeTitle,
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
              useStackedHeader
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
                                AppStrings.resumeExperienceTitle,
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
                        InkWell(
                          onTap: () {
                            openLink(AppStrings.cvUrl);
                          },
                          borderRadius: BorderRadius.circular(AppSizes.r8),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.w4,
                              vertical: AppSizes.h4,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: PortfolioColors.golden,
                                  size: AppSizes.icon24,
                                ),
                                SizedBox(width: AppSizes.w8),
                                Text(
                                  AppStrings.resumeCvLabel,
                                  style: TextStyle(
                                    color: PortfolioColors.golden,
                                    fontSize: AppSizes.sp16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: AppSizes.h12),
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
                            AppStrings.resumeExperienceTitle,
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
                                openLink(AppStrings.cvUrl);
                              },
                              icon: Icon(
                                Icons.download,
                                color: PortfolioColors.golden,
                                size: AppSizes.icon24,
                              ),
                            ),
                            Text(
                              AppStrings.resumeCvLabel,
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
                AppStrings.skillStateManagement,
                AppStrings.skillProvider,
                AppStrings.skillBlocCubit,
                ' ',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                AppStrings.skillApis,
                AppStrings.skillRestful,
                ' ',
                ' ',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                AppStrings.skillLocalStorage,
                AppStrings.skillHive,
                AppStrings.skillSharedPreferences,
                ' ',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                AppStrings.skillFirebase,
                AppStrings.skillAuthentication,
                AppStrings.skillCloudFirestore,
                AppStrings.skillStorage,
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                AppStrings.skillFlutterDeveloper,
                ' ${AppStrings.skillFlutterDeveloper}',
                ' ${AppStrings.skillFlutterDeveloper}',
                ' ${AppStrings.skillFlutterDeveloper}',
              ),
              SizedBox(height: verticalSpacing),
              defaultitemskills(
                context,
                AppStrings.skillFlutterDeveloper,
                ' ${AppStrings.skillFlutterDeveloper}',
                ' ${AppStrings.skillFlutterDeveloper}',
                ' ${AppStrings.skillFlutterDeveloper}',
              ),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillThemes),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillLocalization),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillResponsiveDesign),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillAnimations),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillAgile),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillDataStructure),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillSolid),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillCleanCode),
              SizedBox(height: verticalSpacing),
              onlyrowiteminskills(context, AppStrings.skillCiCd),
            ],
          ),
        );
      },
    );
  }
}
