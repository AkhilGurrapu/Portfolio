class CertificationsUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  CertificationsUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });

  static asMap() {}
}

List<CertificationsUtils> certificationsUtils = [
     CertificationsUtils(
     banners: 'assets/imgs/MicrosoftFabricCerti.png',
    icons: 'assets/imgs/FabricCertiLogo.jpg',
    titles: 'Microsoft Certified: Fabric Analytics Engineer Associate ',
    description:'',
    links: 'https://learn.microsoft.com/en-us/users/akhilgurrapu-2344/credentials/8e058fde541c2ff0?ref=https%3A%2F%2Fwww.linkedin.com%2F',
  ),
  CertificationsUtils(
    banners: 'assets/imgs/powerbicerti.png',
    icons:  'assets/imgs/PowerBICertiLogo.jpg',
    titles: 'Microsoft Certified: Power BI Data Analyst Associate',
    description:'',
    links: 'https://learn.microsoft.com/en-us/users/akhilgurrapu-2344/credentials/bcd5dd0281214915?ref=https%3A%2F%2Fwww.linkedin.com%2F',
  ),
  CertificationsUtils(
    banners: 'assets/imgs/AzureAIassociate.png',
    icons: 'assets/imgs/AzureAILogo.png',
    titles: 'Microsoft Certified: Azure AI Engineer Associate',
    description:'',
    links: 'https://learn.microsoft.com/en-us/users/akhilgurrapu-2344/credentials/96968328e08e3f23?ref=https%3A%2F%2Fwww.linkedin.com%2F',
  ),
  CertificationsUtils(
     banners: 'assets/imgs/DataBricks.png',
    icons: 'assets/imgs/databricksLogo.png',
    titles: 'Academy Accreditation - Databricks Lakehouse Fundamentals',
    description:'',
    links: 'https://credentials.databricks.com/9e32eff3-5f0f-49c3-b845-f7b72c56a0e4#gs.bouqls',
  ),
  CertificationsUtils(
    banners: 'assets/imgs/AWSCCP.png',
    icons: 'assets/imgs/AWSCCPLogo.png',
    titles: 'AWS Certified Cloud Practitioner',
    description: '',
    links: 'https://www.credly.com/badges/8d665a61-1320-4330-afd0-ad5d0ff64ab4/linked_in_profile',
  ),
  CertificationsUtils(
    banners: 'assets/imgs/AzureAI.png',
    icons: 'assets/imgs/AzureAIFundLogo.png',
    titles: 'Microsoft Certified: Azure AI Fundamentals',
    description:'',
    links: 'https://learn.microsoft.com/en-us/users/akhilgurrapu-2344/credentials/930bbd2c03840a7a?ref=https%3A%2F%2Fwww.linkedin.com%2F',
  ),
  CertificationsUtils(
    banners: 'assets/imgs/sql.png',
    icons: 'assets/imgs/sqllogo.png',
    titles: 'SQL (Intermediate) Skills Certification',
    description:'',
    links: 'https://www.hackerrank.com/certificates/4f8386a017b0',
  ),
];
