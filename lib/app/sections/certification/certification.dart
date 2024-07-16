import 'package:flutter/material.dart';
import 'certification_desktop.dart';
import 'certification_mobile.dart';
import 'package:akhilgurrapu/core/res/responsive.dart';

class Certification extends StatelessWidget {
  const Certification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: CertificationMobile(),
      tablet: CertificationMobile(),
      desktop: CertificationDesktop(),
    );
  }
}
