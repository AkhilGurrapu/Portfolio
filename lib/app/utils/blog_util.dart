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
        banners: 'assets/posts/microsoftfabricbig.png',
        icons: 'assets/imgs/msFabric.png',
        titles: 'What is Microsoft Fabric',
        description:
            'Explore Microsoft Fabric, an all-in-one analytics platform that simplifies data analytics for businesses and professionals. Discover its core features, including OneLake, and how it unifies various data tools, making data-driven decisions more accessible and cost-effective.',
        link: 'https://www.datasarva.com/microsoft_fabric/',
      ),
      BlogUtils(
        banners: 'assets/posts/purviewBig.png',
        icons: 'assets/imgs/msfabric.png',
        titles: 'Microsoft Purview',
        description:
            'Discover Microsoft Purview capabilities for data management and protection. This guide covers: Core components and features of Microsoft Purview, Data security, governance, and risk management solutions.',
        link: 'https://www.datasarva.com/microsoft-purview/',
      ),      
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
        banners: 'assets/posts/datamodelBig.jpg',
        icons: 'assets/posts/datamodelingIcon.jpg',
        titles: 'What is Data Modeling - Normalization, and Application in OLTP Systems',
        description:
            'Explore the essentials of Data Modeling in this article, which covers key types (Conceptual, Logical, Physical) and techniques like ER Modeling and Normalization. It highlights normalizations role in databases, particularly in OLTP systems',
        link: 'https://www.datasarva.com/datamodeling-normalization/',
      ),
      
      
      // Add more projects as needed
    ];