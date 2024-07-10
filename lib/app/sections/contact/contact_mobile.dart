import 'package:flutter/material.dart';
import 'package:akhilgurrapu/app/utils/contact_utils.dart';
import 'package:akhilgurrapu/app/widgets/custom_text_heading.dart';
import 'package:akhilgurrapu/changes/links.dart';
import 'package:akhilgurrapu/changes/strings.dart';
import 'package:akhilgurrapu/core/color/colors.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';
import 'package:akhilgurrapu/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Space.y(10.w)!,
        CustomSectionHeading(text: contactHeadding),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          // child: CustomSectionSubHeading(text: contactSubHeadding),
        ),
        Space.y(5.w)!,
        InkWell(
          onTap: () => openURL(facebook),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            decoration: BoxDecoration(
                gradient: buttonGradi, borderRadius: BorderRadius.circular(10)),
            child: const Text(
              'Connect',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
          ),
        ),
        Space.y(10.w)!,
        Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 50,
            children: contactUtils
                .asMap()
                .entries
                .map((e) => IconButton(
                      icon: Image.network(
                        e.value.icon,
                        color: theme.textColor,
                      ),
                      onPressed: () => openURL(e.value.url),
                      highlightColor: Colors.white54,
                      iconSize: 21,
                    ))
                .toList()),
        Space.y(5.w)!,
        Container(color: Colors.white.withOpacity(0.2), height: 1),
      ],
    );
  }
}
