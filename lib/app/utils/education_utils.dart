class EducationUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
  final String title;

  EducationUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.title,
      required this.tool});
}

List<EducationUtils> educationUtils = [
  EducationUtils(
    name: 'Southern Illinois University Edwardsville',
    title: 'Master of Science in Management Information Systems (with a Specialization in Project Management)',
    icon: 'assets/imgs/siue.png',
    description:
        "Grade: 3.88",
    tool: ['Managing the Cloud', 'Software Systems Design', 'Database Design', 'Project Management', 'ERP', 'Quantitative Analysis', 'Information Systems & Technology'],
  ),
  EducationUtils(
    name: 'Kakatiya Institute of Technology and Science',
    title: 'Bachelor of Technology in Electrical and Electronics Engineering',
    icon: 'assets/imgs/kitsw.jpeg',
    description:
        "Grade: 8.12",
    tool: ['Programming in C', 'Object Oriented Programming through C++', 'Entrepreneurship Development', 'Data Structures', 'AI Technologies', 'Smart Electric Grid'],
  ),
];
