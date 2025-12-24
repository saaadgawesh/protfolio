import 'package:flutter/material.dart';
import 'package:protfolio/feature/tabs/widget/ProfileCard.dart';
import 'package:protfolio/feature/tabs/widget/ResumeDetalis.dart';
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
              ProfileCard(),

              const SizedBox(height: 16),
              Buildresumedetalis(),
            ],
          ),
        ),
      ),
    );
  }
}
