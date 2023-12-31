import 'package:akhilgurrapu/app/sections/blog/blogcard.dart';
import 'package:akhilgurrapu/app/utils/blog_util.dart';
import 'package:flutter/material.dart';
import 'package:akhilgurrapu/app/widgets/custom_text_heading.dart';
import 'package:akhilgurrapu/changes/strings.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogDesktop extends StatefulWidget {
  const BlogDesktop({Key? key}) : super(key: key);

  @override
  State<BlogDesktop> createState() => _BlogDesktopState();
}

class _BlogDesktopState extends State<BlogDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nBlogs"),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: protfolioSubHeading),
          Space.y(2.w)!,
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: blogUtils
                .asMap()
                .entries
                .map(
                  (e) => BlogCard(project: e.value),
                )
                .toList(),
          ),
          Space.y(3.w)!,
          OutlinedButton(
            onPressed: () {
            // Add the navigation logic here
            launch('https://www.datasarva.com');
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
