import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfButton extends StatefulWidget {
  const PdfButton({super.key});

  @override
  State<PdfButton> createState() => _PdfButtonState();
}

class _PdfButtonState extends State<PdfButton> {
  final GlobalKey<SfPdfViewerState> _pdfKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.pdfTitle),
        titleTextStyle: TextStyle(
          color: PortfolioColors.golden,
          fontSize: AppSizes.sp18,
        ),
      ),
      body: SfPdfViewer.asset('assets/m.pdf', key: _pdfKey),
    );
  }
}
