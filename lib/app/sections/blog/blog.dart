import 'package:flutter/material.dart';
import 'blog_desktop.dart';
import 'blog_mobile.dart';
import 'package:akhilgurrapu/core/res/responsive.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: BlogMobileTab(),
      tablet: BlogMobileTab(),
      desktop: BlogDesktop(),
    );
  }
}
