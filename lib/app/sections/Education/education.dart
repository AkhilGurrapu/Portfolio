//import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:akhilgurrapu/app/utils/education_utils.dart';
import 'package:akhilgurrapu/app/widgets/custom_text_heading.dart';
import 'package:akhilgurrapu/changes/strings.dart';
import 'package:akhilgurrapu/core/color/colors.dart';
import 'package:akhilgurrapu/core/res/responsive.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';
import 'package:sizer/sizer.dart';

part 'education_desktop.dart';
part 'education_mobile.dart';
part 'widgets/_education_card.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: EducationMobile(),
      tablet: EducationMobile(),
      desktop: EducationDesktop(),
    );
  }
}
