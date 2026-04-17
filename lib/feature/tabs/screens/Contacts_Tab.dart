import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/contact/contact_tab_widgets.dart';

class Contacttab extends StatelessWidget {
  const Contacttab({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor:AppColors.cardDark,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.w16,
          vertical: AppSizes.h16,
        ),
        child: Center(
          child: Column(
            children: [
              const ContactContentSection(
               
              ),

            ],
          ),
        ),
      ),
    );
  }
}
