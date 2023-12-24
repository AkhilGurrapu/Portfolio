import 'package:akhilgurrapu/app/sections/portfolio/widgets/project_card.dart';
import 'package:flutter/material.dart';
import 'package:akhilgurrapu/app/utils/project_utils.dart';
import 'package:sizer/sizer.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Replace the following list with your actual list of projects
    List<ProjectUtils> projects = [
    ProjectUtils(
     banners: 'assets/imgs/powerbiproject.png',
    icons: 'assets/imgs/powerbi.png',
    titles: 'PowerBI Resume Dashboard',
    description:
        'My professional journey with the Power BI Resume Dashboard. This dynamic visualization offers a concise overview of my skills, achievements, and career highlights',
    links: 'https://app.powerbi.com/view?r=eyJrIjoiOTkwODk5NzMtMmJjYy00OWRiLTk2MDAtYWQ1NzE3MGY3ZDA3IiwidCI6IjdlYzIwMTdjLWYzOWYtNGQwOC05YmY1LThmNjYzNDM2YmJkYiIsImMiOjZ9',
  ),
    ProjectUtils(
    banners: 'assets/imgs/textAI.png',
    icons: 'assets/imgs/replit.png',
    titles: 'Capital Asset Pricing Model',
    description:
        'AI Text Summarizer App! This app leverages the power of Artificial Intelligence APIs to provide concise summaries of long texts. Whether you have a lengthy article, research paper, or any other text document that you want to summarize quickly, this app can assist you.',
    links: 'https://ai-powered-text-summarization-application.akhilgur123.repl.co/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/streamlit.png',
    titles: 'Capital Asset Pricing Model',
    description:
        'The CAPM Calculator is a powerful financial tool developed using Streamlit and Python that enables users to quickly and intuitively calculate expected returns for their investment portfolios ',
    links: 'https://capitalassestpricingmodel.streamlit.app/',
  ),
  ProjectUtils(
     banners: 'assets/imgs/DA1.png',
    icons: 'assets/imgs/jupyter.png',
    titles: 'Exploratory Data Analysis',
    description:
        'This project focuses on exploring a sales dataset from a supermarket retail chain and performing Exploratory Data Analysis (EDA) using Python and Pandas.',
    links: 'https://akhilgurrapu.github.io/EDA_Python/',
  ),
  ProjectUtils(
     banners: 'assets/imgs/Tableau1.png',
    icons: 'assets/imgs/Tableau.jpg',
    titles: 'IBM Electronics Sales Report',
    description:
        'Interactive visualization to provide a comprehensive view of IBMs electronic product sales landscape. Within the vibrant visualizations lies a treasure  of valuable business insights that redefine the approach in the electronics industry.',
    links: 'https://akhilgurrapu.github.io/IBM-Electroni-Sales-Report-Tableau/index.html/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/DA2.png',
    icons: 'assets/imgs/jupyter.png',
    titles: 'Marketing Analytics',
    description:
        'Statistical Analysis and Visualization for Marketing Analytics using Python and Pandas',
    links: 'https://akhilgurrapu.github.io/Marketing_Analytics-DataScience-Project/',
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
    banners: 'assets/imgs/bamboofresh.png',
    icons: 'assets/imgs/BambooFreshLogo.png',
    titles: 'BambooFresh App',
    description:
        'BambooFresh: Your ultimate green grocery Flutter app. Shop fresh, locally sourced produce while enjoying seamless operations, all driven by the innovative spirit of community-focused development.',
    links: 'https://play.google.com/store/apps/details?id=in.bamboofresh.bamboofresh&pli=1',
  ),

      // Add more projects as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'List of Projects:',
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
                      (e) => ProjectCard(project: e.value),
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