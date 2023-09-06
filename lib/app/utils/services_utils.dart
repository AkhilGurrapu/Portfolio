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
    title: 'Graduate Assistant',
    icon: 'assets/imgs/siue.png',
    description:
        "I worked on Microsoft Power BI, Excel, and Access to develop a range of reports related to enrollment and admissions. Using these tools, I was responsible for creating dynamic and visually appealing reports that provided insights into key metrics such as enrollment numbers, admissions trends, and retention rates. I also worked closely with various departments across the university to gather data and ensure that the reports were accurate and up-to-date.",
    tool: ['Power BI', 'Excel', 'Access', 'AWS','Cloud Computing', 'SQL', 'Python', 'R','Data Visualization', 'Data Analysis'],
  ),
  ServicesUtils(
    name: 'UniBuddy',
    title: 'Student Ambassador',
    icon: 'assets/imgs/unibuddy.png',
    description:
        "The role involves representing the Southern Illinois University and the Management Information Systems department, in a positive and professional manner to share the experience of learning at the university. - Responding to questions from prospective students, parents, and other interested individuals in a professional and timely manner.- Providing accurate and up-to-date information about the University and its courses, facilities, and student life.- Ensure effective communication between the university and the prospective students. ",
    tool: ['Time Management', 'Communication', 'Leadership', 'Teamwork', 'Interpersonal Skills'],
  ),
  ServicesUtils(
    name: 'Tata Consultancy Services',
    title: 'Software Engineer',
    icon: 'assets/icons/tcs.png',
    description:
        "As a Salesforce administrator and developer, I worked on the development of an HR management app on the Salesforce platform. My responsibilities included: Configuring and setting up the Salesforce platform, including creating and managing users, setting up security and data access controls, and maintaining data integrity. Designing and building custom objects and fields, creating workflows and automation rules, and integrating with other systems and tools. Writing code using Apex, creating custom Lightning components and Visualforce pages, and integrating with other systems and tools using APIs.",
    tool: ['Salesforce', 'Apex', 'Cloud Computing', 'SQL', 'Python', 'Customer Relationship Management', 'Salesforce Developer','Salesforce Administrator'],
  ),
  ServicesUtils(
    name: 'BambooFresh',
    title: 'Founder',
    icon: 'assets/icons/bamboo.png',
    description:
        "As the founder of a small online green grocery-selling site in our locality, my role likely involves a wide range of responsibilities. These include developing and maintaining the website and development and accompanying android application, managing the day-to-day operations of the business, handling customer inquiries and complaints, managing inventory and supplies, and working to grow and promote the business. I have played a key role in developing and implementing strategies for the company, such as identifying target markets, setting pricing and sales goals, and determining the best ways to reach and serve customers.",
    tool: ['Flutter', 'Google Cloud Platform','Leadership', 'Customer Service', 'Problem Solving', 'Decision Making',],
  ),
];
