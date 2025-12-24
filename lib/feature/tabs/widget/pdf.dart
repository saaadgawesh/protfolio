import 'package:flutter/material.dart';
import 'package:protfolio/core/appthemCloude.dart';
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
        title: const Text(" CV"),
        titleTextStyle: TextStyle(color: PortfolioColors.golden, fontSize: 18),
        // leading: Icon(Icons.arrow_back_ios, color: PortfolioColors.goldenAlt),
      ),
      body: SfPdfViewer.asset('assets/m.pdf', key: _pdfKey),
    );
  }
}
