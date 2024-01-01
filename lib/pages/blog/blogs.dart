import 'package:akhilgurrapu/app/utils/blog_util.dart';
import 'package:akhilgurrapu/pages/blog/blogutils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Replace the following list with your actual list of projects
    List<BlogUtils> projects = [
      BlogUtils(
        banners: 'assets/posts/hdfsA.png',
        icons: 'assets/posts/hadoop1.webp',
        titles: 'Introduction to Hadoop',
        description:
            'Unleashing the Power of Big Data Processing in a Nutshell.',
        markdowfile: 'lib/pages/blogposts/post1.md',
      ),
      // BlogUtils(
      //   banners: 'assets/imgs/textAI.png',
      //   icons: 'assets/imgs/replit.png',
      //   titles: 'Capital Asset Pricing Model',
      //   description:
      //       'AI Text Summarizer App! This app leverages the power of Artificial Intelligence APIs to provide concise summaries of long texts. Whether you have a lengthy article, research paper, or any other text document that you want to summarize quickly, this app can assist you.',
      //   markdowfile: 'lib/pages/blogposts/post1.md',
      // ),
      // Add more projects as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'List of Blogs:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 2.w), // Use SizedBox instead of Space.y
              Wrap(
                alignment: WrapAlignment.start,
                crossAxisAlignment: WrapCrossAlignment.start,
                runSpacing: 3.w,
                children: projects
                    .asMap()
                    .entries
                    .map(
                      (e) => BlogCard(project: e.value),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

