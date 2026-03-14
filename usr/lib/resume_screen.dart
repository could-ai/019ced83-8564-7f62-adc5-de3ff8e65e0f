import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate a responsive width for the "A4" page look
    final screenWidth = MediaQuery.of(context).size.width;
    final pageWidth = screenWidth > 850 ? 800.0 : screenWidth * 0.95;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('IIT SURE Program Resume'),
        backgroundColor: const Color(0xFF1A365D),
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.print),
            tooltip: 'Print to PDF (Use Browser Print)',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Use your browser\\'s Print feature (Ctrl+P / Cmd+P) to save as PDF.'),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: Center(
          child: Container(
            width: pageWidth,
            padding: const EdgeInsets.all(48.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 24),
                _buildSectionTitle('OBJECTIVE & RESEARCH INTERESTS'),
                _buildBodyText(
                  'Highly motivated computer science student seeking a research internship through the IIT SURE program. Passionate about software architecture, backend systems, and algorithmic problem-solving. Eager to contribute to innovative research projects while leveraging my strong foundation in full-stack development and system design.',
                ),
                const SizedBox(height: 24),
                _buildSectionTitle('EDUCATION'),
                _buildEducationItem(
                  degree: 'Bachelor of Technology in Computer Science',
                  institution: 'Anurag University', // Inferred from IEEE CS Chapter
                  duration: 'Expected Graduation: 202X',
                  details: 'Relevant Coursework: Data Structures, Algorithms, Database Management Systems, Web Technologies.',
                ),
                const SizedBox(height: 24),
                _buildSectionTitle('ACADEMIC & TECHNICAL PROJECTS'),
                _buildProjectItem(
                  title: 'Smart Grocery Management System',
                  techStack: 'Spring Boot, Java, REST APIs, MySQL/H2, HTML, JavaScript',
                  points: [
                    'Developed a robust backend system for an online grocery management platform using Spring Boot.',
                    'Designed and implemented RESTful APIs for users, products, carts, and orders.',
                    'Implemented seamless database integration using JPA/Hibernate for efficient data management.',
                    'Tested APIs rigorously using Postman and browser endpoints to ensure reliability.',
                    'Demonstrated scalable backend architecture suitable for modern e-commerce systems.',
                  ],
                ),
                const SizedBox(height: 16),
                _buildProjectItem(
                  title: 'Task Manager / To-Do List Application',
                  techStack: 'JavaScript, HTML, CSS',
                  points: [
                    'Developed a dynamic task management application to create, update, and delete daily tasks.',
                    'Implemented dynamic DOM manipulation using vanilla JavaScript for real-time UI updates.',
                    'Designed a responsive and intuitive user interface for seamless task tracking.',
                    'Demonstrated a strong understanding of front-end development and user interaction logic.',
                  ],
                ),
                const SizedBox(height: 24),
                _buildSectionTitle('COMPETITIONS & TECHNICAL PARTICIPATION'),
                _buildBulletPoint('TCS CodeVita Season 13 (2025) – Secured Global Rank 938, demonstrating strong algorithmic problem-solving skills under time constraints.'),
                _buildBulletPoint('Tata Crucible Campus Quiz (2025) – Participated in the prestigious national-level knowledge and business competition.'),
                _buildBulletPoint('PyChamp Python Coding Competition – Actively participated in the coding event organized by IEEE CS Chapter, Anurag University.'),
                _buildBulletPoint('Let Us C Compile Event – Competed in the IEEE technical coding event focusing on C programming fundamentals and logic.'),
                const SizedBox(height: 24),
                _buildSectionTitle('CERTIFICATIONS'),
                _buildBulletPoint('Python Programming Certification – Cisco Networking Academy'),
                _buildBulletPoint('Cybersecurity Essentials Certification – Cisco Networking Academy'),
                _buildBulletPoint('HTML, CSS, JavaScript Certification – Infosys Springboard'),
                _buildBulletPoint('SQL Certification – Infosys Springboard'),
                _buildBulletPoint('C Programming (30 Hours) – ITDesk Hyderabad'),
                const SizedBox(height: 24),
                _buildSectionTitle('TECHNICAL SKILLS'),
                _buildSkillsList('Languages', 'Java, Python, C, JavaScript, HTML, CSS, SQL'),
                _buildSkillsList('Frameworks & Tools', 'Spring Boot, Hibernate/JPA, REST APIs, Postman'),
                _buildSkillsList('Databases', 'MySQL, H2 Database'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SelectableText(
          '[YOUR NAME]',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            fontFamily: 'Georgia',
            color: Color(0xFF1A365D),
          ),
        ),
        const SizedBox(height: 8),
        SelectableText(
          'City, State | +91-XXXXXXXXXX | your.email@example.com',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 4),
        SelectableText(
          'LinkedIn: linkedin.com/in/yourprofile | GitHub: github.com/yourusername',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
          ),
        ),
        const SizedBox(height: 16),
        const Divider(thickness: 2, color: Color(0xFF1A365D)),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A365D),
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(height: 4),
        const Divider(thickness: 1, color: Colors.grey),
        const SizedBox(height: 12),
      ],
    );
  }

  Widget _buildBodyText(String text) {
    return SelectableText(
      text,
      style: const TextStyle(fontSize: 14, height: 1.5),
      textAlign: TextAlign.justify,
    );
  }

  Widget _buildEducationItem({
    required String degree,
    required String institution,
    required String duration,
    required String details,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SelectableText(
                degree,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            SelectableText(
              duration,
              style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
          ],
        ),
        const SizedBox(height: 4),
        SelectableText(
          institution,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 4),
        SelectableText(
          details,
          style: TextStyle(fontSize: 13, color: Colors.grey[700]),
        ),
      ],
    );
  }

  Widget _buildProjectItem({
    required String title,
    required String techStack,
    required List<String> points,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 2),
        SelectableText(
          'Tech Stack: $techStack',
          style: const TextStyle(fontSize: 13, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        ...points.map((point) => Padding(
              padding: const EdgeInsets.only(bottom: 4.0, left: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SelectableText('• ', style: TextStyle(fontSize: 14)),
                  Expanded(
                    child: SelectableText(
                      point,
                      style: const TextStyle(fontSize: 14, height: 1.4),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SelectableText('• ', style: TextStyle(fontSize: 14)),
          Expanded(
            child: SelectableText(
              text,
              style: const TextStyle(fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsList(String category, String skills) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: SelectableText(
              '$category:',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: SelectableText(
              skills,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
