class Experience {
  Experience({
    required this.date,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  factory Experience.mangoByte() {
    return Experience(
      date: 'August 2018 - March 2021',
      title: 'Junior - Mid Mobile Application Developer',
      subtitle: '@ Mango-Byte Technology Co, Ltd.',
      description: [
        '- Application Development',
        '- Basic to Advanced Programming Skills',
        '- Version Control Systems',
        '- User Interface Design',
        '- Debugging and Testing',
        '- Build and Deployment',
      ].join('\n'),
    );
  }

  factory Experience.wonderpass() {
    return Experience(
      date: 'March 2022 - Present',
      title: 'Mid - Senior Mobile Application Developer',
      subtitle: '@ Wonderpass Technology Co, Ltd.',
      description: [
        '- Application Development',
        '- Code Review and Quality Assurance',
        '- Collaboration and Leadership',
        '- Optimization and Performance Tuning',
        '- Continuous Improvement',
        '- Documentation',
        '- Problem Solving',
        '- Deployment and Maintenance',
      ].join('\n'),
    );
  }

  factory Experience.freelancer() {
    return Experience(
      date: 'No Specific Date',
      title: 'Freelancer',
      subtitle: 'Android Kotlin-Java & Flutter Dart',
      description: [
        '- Technical Skills',
        '- Project Management',
        '- UX/UI Design',
        '- Version Control',
        '- Testing and Debugging',
        '- Deployment and Maintenance',
        '- Performance Optimization',
        '- Database Management',
      ].join('\n'),
    );
  }

  final String date;
  final String title;
  final String subtitle;
  final String description;
}
