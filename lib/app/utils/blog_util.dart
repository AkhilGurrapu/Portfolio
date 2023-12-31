class BlogUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String link;
  BlogUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.link,
  });

}

 List<BlogUtils> blogUtils = [
      BlogUtils(
        banners: 'assets/posts/mapreduce.png',
        icons: 'assets/posts/hadoop1.webp',
        titles: 'Introduction to Hadoop',
        description:
            'Unleashing the Power of Big Data Processing in a Nutshell.',
        link: 'https://www.datasarva.com/hadoop/',
      ),
      BlogUtils(
        banners: 'assets/posts/hadoopeco.png',
        icons: 'assets/posts/hadoop1.webp',
        titles: 'Hadoop Ecosystem',
        description:
            'Explore key components categorized for easy understanding. From data storage to seamless workflows, machine learning discover how Hive, HBase, Flume, and more contribute to the world of big data.',
        link: 'https://www.datasarva.com/hadoopeco/',
      ),
      BlogUtils(
        banners: 'assets/posts/bayes.png',
        icons: 'assets/posts/bayes1.png',
        titles: 'Bayes Theorem in Data Science',
        description:
            'Imagine your job search during a recession 🧩. How likely are you to find a job given the economic downturn? 📉 Thats where Bayes Theorem comes in!',
        link: 'https://www.datasarva.com/bayes/',
      ),
      BlogUtils(
        banners: 'assets/posts/python2.jpeg',
        icons: 'assets/posts/python1.png',
        titles: 'Lists/Sets/Dictionaries/Tuples in Python',
        description:
            'Explore all the key concepts of Lists/Sets/Dictionaries/Tuples in Python related to Data Science',
        link: 'https://www.datasarva.com/pythonlist/',
      ),
      
      
      // Add more projects as needed
    ];