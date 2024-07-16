import 'package:akhilgurrapu/app/utils/certifications_utils.dart';
import 'package:flutter/material.dart';
import 'package:akhilgurrapu/app/utils/project_utils.dart';
import 'package:akhilgurrapu/app/widgets/custom_text_heading.dart';
import 'package:akhilgurrapu/changes/strings.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

import 'widgets/certification_card.dart';

class CertificationDesktop extends StatefulWidget {
  const CertificationDesktop({Key? key}) : super(key: key);

  @override
  State<CertificationDesktop> createState() => _CertificationDesktopState();
}

class _CertificationDesktopState extends State<CertificationDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nCertifications"),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: certificationSubHeading),
          Space.y(2.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: certificationsUtils
                .asMap()
                .entries
                .map(
                  (e) => CertificationCard(certification: e.value),
                )
                .toList(),
          ),
          Space.y(3.w)!,
          OutlinedButton(
            onPressed: () {
            // Add the navigation logic here
            Navigator.pushNamed(context, '/certifications');
          },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'See More',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
