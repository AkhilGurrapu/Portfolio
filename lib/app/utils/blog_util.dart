class BlogUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String markdowfile;
  BlogUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.markdowfile,
  });

}

 List<BlogUtils> blogUtils = [
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