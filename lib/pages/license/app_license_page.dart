import 'package:flutter/material.dart';

class AppLicensePage extends StatelessWidget {
  const AppLicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LicensePage(
      applicationName: 'AIのとも',
      applicationVersion: '1.0.0',
      applicationLegalese: 'This application is open source.',
    );
  }
}
