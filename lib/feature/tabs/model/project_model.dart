class ProjectModel {
  const ProjectModel({
    required this.title,
    required this.shortDescription,
    required this.longDescription,
    required this.githubUrl,
    required this.technologies,
    required this.features,
    required this.imagePaths,
    required this.role,
    required this.duration,
    required this.status,
    required this.category,
    this.liveUrl,
  });

  final String title;
  final String shortDescription;
  final String longDescription;
  final String githubUrl;
  final String? liveUrl;
  final List<String> technologies;
  final List<String> features;
  final List<String> imagePaths;
  final String role;
  final String duration;
  final String status;
  final String category;
}

