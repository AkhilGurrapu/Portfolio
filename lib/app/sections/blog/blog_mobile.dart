import 'package:akhilgurrapu/pages/blog/blogutils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:akhilgurrapu/app/widgets/custom_text_heading.dart';
import 'package:akhilgurrapu/app/utils/blog_util.dart';
import 'package:akhilgurrapu/changes/strings.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';

import 'package:sizer/sizer.dart';



class BlogMobileTab extends StatelessWidget {
  const BlogMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nBlogs"),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: blogSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: blogUtils.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: BlogCard(project: blogUtils[i]),
          ),
          options: CarouselOptions(
            height: height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
        Space.y(3.w)!,
        OutlinedButton(
          onPressed: () {
            // Add the navigation logic here
            Navigator.pushNamed(context, '/blog');
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'See More',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
      ],
    );
  }
}
