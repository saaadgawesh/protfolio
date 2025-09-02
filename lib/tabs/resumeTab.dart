import 'package:flutter/material.dart';
import 'package:protfolio/apptheme/appthemCloude.dart';
import 'package:protfolio/tabs/widget/_buildProfileCard.dart';
import 'package:protfolio/tabs/widget/default_circle_avatar.dart';
import 'package:protfolio/tabs/widget/pdf.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Resumetab extends StatefulWidget {
  const Resumetab({super.key});

  @override
  State<Resumetab> createState() => _ResumetabState();
}

class _ResumetabState extends State<Resumetab> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
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
              _buildresumedetalis(context),

              // About Me Section
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildresumedetalis(BuildContext context) {
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
          Divider(
            color: PortfolioColors.golden,
            thickness: 5,
            indent: 2,
            endIndent: 250,
          ),
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
            ' Riverpod',
          ),

          SizedBox(height: 15),
          defaultitemskills(context, 'APIs', ' REST', ' GraphQL', ' SOAP'),

          SizedBox(height: 15),
          defaultitemskills(
            context,
            'Local storage',
            ' Hive ',
            ' Shared preferences',
            ' Get_storage',
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
