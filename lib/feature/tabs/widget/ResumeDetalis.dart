import 'package:flutter/material.dart';
import 'package:protfolio/core/Appthem.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';
import 'package:protfolio/feature/tabs/widget/default_circle_avatar.dart';
import 'package:protfolio/feature/tabs/widget/pdf.dart';
import 'package:protfolio/feature/tabs/widget/rowItemInSkills.dart';

class Buildresumedetalis extends StatelessWidget {
  const Buildresumedetalis({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Resume Details',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          defaultdivider(3, 0, 130),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.bookmark, color: PortfolioColors.golden),
              SizedBox(width: 25),
              Expanded(
                child: Text(
                  'Professional Experience',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              IconButton(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => PdfButton()));
                },
                icon: Icon(Icons.download, color: PortfolioColors.golden),
              ),
              SizedBox(width: 8),
              Text('Cv', style: TextStyle(color: PortfolioColors.golden)),
            ],
          ),
          SizedBox(height: 15),
          defaultitemskills(
            context,
            'Statemanagement',
            ' Provider',
            ' Bloc_cubit',
            ' ',
          ),

          SizedBox(height: 15),
          defaultitemskills(context, 'APIs', ' RESTful', ' ', ' '),

          SizedBox(height: 15),
          defaultitemskills(
            context,
            'Local storage',
            ' Hive ',
            ' Shared preferences',
            ' ',
          ),

          SizedBox(height: 15),
          defaultitemskills(
            context,
            'Firebase',
            ' Authentication',
            ' cloud firestore',
            ' Storage',
          ),

          SizedBox(height: 15),
          defaultitemskills(
            context,
            'Flutter Developer',
            ' Flutter Developer',
            ' Flutter Developer',
            ' Flutter Developer',
          ),

          SizedBox(height: 15),
          defaultitemskills(
            context,
            'Flutter Developer',
            ' Flutter Developer',
            ' Flutter Developer',
            ' Flutter Developer',
          ),

          SizedBox(height: 15),
          onlyrowiteminskills(context, 'Themes'),
          SizedBox(height: 15),
          onlyrowiteminskills(context, 'localization'),
          SizedBox(height: 15),
          onlyrowiteminskills(context, 'responsive design'),
          SizedBox(height: 15),
          onlyrowiteminskills(context, 'animations'),
          SizedBox(height: 15),
          onlyrowiteminskills(context, 'agile'),
          SizedBox(height: 15),
          onlyrowiteminskills(context, 'data structure'),
          SizedBox(height: 15),
          onlyrowiteminskills(context, 'solid'),

          SizedBox(height: 15),
          onlyrowiteminskills(context, 'clean code'),

          SizedBox(height: 15),
          onlyrowiteminskills(context, 'ci/cd'),
        ],
      ),
    );
  }
}
