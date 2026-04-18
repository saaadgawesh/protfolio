class WorkExperienceModel {
  const WorkExperienceModel({
    required this.company,
    required this.employmentType,
    required this.duration,
    required this.status,
    required this.projectTitle,
    required this.description,
    required this.highlights,
  });

  final String company;
  final String employmentType;
  final String duration;
  final String status;
  final String projectTitle;
  final String description;
  final List<String> highlights;
}
