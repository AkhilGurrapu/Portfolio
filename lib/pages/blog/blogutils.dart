import 'package:flutter/material.dart';
import 'package:akhilgurrapu/core/color/colors.dart';
import 'package:akhilgurrapu/core/configs/configs.dart';
import 'package:akhilgurrapu/core/res/responsive.dart';
// import 'package:akhilgurrapu/core/util/constants.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:sizer/sizer.dart';

import '../../app/utils/blog_util.dart';



class BlogCard extends StatefulWidget {
  final BlogUtils project;

  const BlogCard({Key? key, required this.project}) : super(key: key);

  @override
  BlogCardState createState() => BlogCardState();
}

class BlogCardState extends State<BlogCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => openBlogFile(widget.project.markdowfile, widget.project.titles),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        width: Responsive.isDesktop(context) ? 30.w : 70.w,
        height: 36.h,
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : grayBack,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: isHover ? const EdgeInsets.all(20) : EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.project.icons,
                    height: height * 0.05,
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    widget.project.titles,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    widget.project.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.1 : 1.0,
              child: Container(
                width: Responsive.isDesktop(context) ? 30.w : 70.w,
                height: 36.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(widget.project.banners),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


void openBlogFile(String markdownFilePath, String blogTitle) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => BlogPostPage(
        markdownFilePath: markdownFilePath,
        blogTitle: blogTitle,
      ),
    ),
  );
}
}


class BlogPostPage extends StatelessWidget {
  final String markdownFilePath;
  final String blogTitle;

  const BlogPostPage({
    Key? key,
    required this.markdownFilePath,
    required this.blogTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blogTitle),  // Set the title dynamically
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString(markdownFilePath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Markdown(data: snapshot.data.toString());
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
