class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
  final String title;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.title,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Southern Illinois University Edwardsville',
    title: 'Data Analytics Engineer',
    icon: 'assets/imgs/siue.png',
    description:
        "Implemented Microsoft Fabric from scratch, integrating Azure data services to support comprehensive data analytics projects. Led ETL processes for data extraction, transformation, and loading into the data warehouse, ensuring data accuracy and completeness. Responsible for gathering requirements for the new projects and creating the data flow model of the business requirement. Led the implementation of Medallion architecture in creating and developing the Lakehouse and Data Warehouse in the Microsoft Fabric. Connected to different appliances like Oracle, MySQL etc. Managed data extraction, transformation, and loading (ETL) using SQL and Azure Data Factory, improving data accuracy by 20%.",
    tool: ['Microsoft Fabric', 'Power BI', 'Azure Data Factory','Azure Synapse Analytics', 'SQL', 'Python', 'Microsoft Purview','Data science', 'Data Analytics', 'Data Engineering', 'Data Science'],
  ),
  ServicesUtils(
    name: 'Southern Illinois University Edwardsville',
    title: 'Graduate Assistant',
    icon: 'assets/imgs/siue.png',
    description:
        "•	I have led the Design and development of visually appealing analytical dashboards and reports using Microsoft Power BI, Excel, and Access which enhanced data visibility, resulting in a 20% increase in timely decision-making based on enrollment numbers and admission trends. Utilized SQL and data management techniques to extract, transform, and load data from university databases, Improved data accuracy by 15% through data cleansing and transformation processes. Collaborated with stakeholders to define data requirements and specifications, built strong relationships, fostering a data-driven culture and leading to a 30% increase in data-driven decisions.",
    tool: ['Power BI', 'Excel', 'Access', 'AWS','Cloud Computing', 'SQL', 'Python', 'R','Data Visualization', 'Data Analysis'],
  ),
  ServicesUtils(
    name: 'UniBuddy',
    title: 'Student Ambassador (SIUE)',
    icon: 'assets/imgs/unibuddy.png',
    description:
        "The role involves representing the Southern Illinois University and the Management Information Systems department, in a positive and professional manner to share the experience of learning at the university. - Responding to questions from prospective students, parents, and other interested individuals in a professional and timely manner.- Providing accurate and up-to-date information about the University and its courses, facilities, and student life.- Ensure effective communication between the university and the prospective students. ",
    tool: ['Time Management', 'Communication', 'Leadership', 'Teamwork', 'Interpersonal Skills'],
  ),
  ServicesUtils(
    name: 'Tata Consultancy Services',
    title: 'Senior Data Engineer - Analytics',
    icon: 'assets/imgs/tcs.png',
    description:
        " Lead dashboard development/Analytics initiatives – including data prep by extracting data from different databases like AWS, SQL Server, and used Python to build out predictive models and used Tableau for developing presentation layer in customer facing dashboards to ensure data integrity and improve data quality, resulting in a 15% enhancement in data reliability. Conducted advanced statistical analyses, driving data-driven decision-making and contributing to a 12% increase in operational efficiency. Crafted compelling data visualizations using Tableau and Power BI, enhancing data-driven storytelling and achieving a 10% rise in stakeholder engagement.",
    tool: ['Power BI', 'Microsoft Azure', 'AWS', 'Cloud Computing', 'SQL', 'Python', 'Docker', 'Rest APIs','Oracle', 'Oralce Data Integrator', 'Data Engineering', 'Data Science', 'Data Analytics'],
  ),
  ServicesUtils(
    name: 'BambooFresh',
    title: 'Founder',
    icon: 'assets/imgs/BambooFreshLogo.png',
    description:
        "As the founder of a small online green grocery-selling site in our locality, my role likely involves a wide range of responsibilities. These include developing and maintaining the website and development and accompanying android application, managing the day-to-day operations of the business, handling customer inquiries and complaints, managing inventory and supplies, and working to grow and promote the business. I have played a key role in developing and implementing strategies for the company, such as identifying target markets, setting pricing and sales goals, and determining the best ways to reach and serve customers.",
    tool: ['Flutter', 'Google Cloud Platform','Leadership', 'Customer Service', 'Problem Solving', 'Decision Making',],
  ),
];
