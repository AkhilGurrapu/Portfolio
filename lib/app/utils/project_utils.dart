class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/streamlit.png',
    titles: 'Capital Asset Pricing Model',
    description:
        'The CAPM Calculator is a powerful financial tool developed using Streamlit and Python that enables users to quickly and intuitively calculate expected returns for their investment portfolios ',
    links: 'https://capitalassestpricingmodel.streamlit.app/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/bamboofresh.png',
    icons: 'assets/imgs/BambooFreshLogo.png',
    titles: 'BambooFresh App',
    description:
        'BambooFresh: Your ultimate green grocery Flutter app. Shop fresh, locally sourced produce while enjoying seamless operations, all driven by the innovative spirit of community-focused development.',
    links: 'https://play.google.com/store/apps/details?id=in.bamboofresh.bamboofresh&pli=1',
  ),
   ProjectUtils(
     banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Exercise App',
    description:
        'This is a just Fully function Exercise App by using flutter, source code is also available, check below.',
    links: 'https://app.powerbi.com/view?r=eyJrIjoiOGVmM2Q0YzgtNzFlYy00MzQ0LWFhNTAtZmQ5NTY1ZGI2MzE1IiwidCI6IjQwM2M2MDU5LWYyZWItNGFlZC1hMmFhLTdiY2IzOThiYTMzNyIsImMiOjZ9',
  ),
  // ProjectUtils(
  //   banners: 'assets/imgs/04.png',
  //   icons: 'assets/imgs/flutter.png',
  //   titles: 'Awesome Plant App UI',
  //   description:
  //       'This is a just Plant App UI by using flutter, source code is also available, check below.',
  //   links: 'https://github.com/sudeshnb/akhilgurrapu/',
  // ),
];
