import 'package:akhilgurrapu/app/sections/Education/education.dart';
import 'package:akhilgurrapu/app/sections/blog/blog.dart';
import 'package:akhilgurrapu/app/sections/certification/certification.dart';
import 'package:flutter/material.dart';
import 'package:akhilgurrapu/app/sections/contact/contact.dart';
import 'package:akhilgurrapu/app/sections/home/home.dart';
import 'package:akhilgurrapu/app/sections/portfolio/portfolio.dart';
import 'package:akhilgurrapu/app/sections/services/services.dart';
import 'package:akhilgurrapu/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Education(),
    Certification(),
    Blog(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
