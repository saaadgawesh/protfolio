import 'package:protfolio/feature/tabs/model/work_experience_model.dart';

const List<WorkExperienceModel> workExperiences = [
  WorkExperienceModel(
    company: 'HumaVolve',
    employmentType: 'Part Time',
    duration: '4 Months',
    status: 'Completed',
    projectTitle: 'Clinic Appointment Booking App',
    description:
        'Worked on a clinic appointment booking project with integrated payment workflows and Google Maps support to help users find clinics and manage bookings smoothly.',
    highlights: [
      'Built and refined booking flows for clinic appointments',
      'Integrated payment-related user journeys',
      'Supported maps and location experience with Google Maps',
    ],
  ),
  WorkExperienceModel(
    company: 'Elevated Tech',
    employmentType: 'Part Time',
    duration: '4 Months - Present',
    status: 'Current',
    projectTitle: 'Online Exams App for Teachers',
    description:
        'Contributed to an online exams platform designed for teachers, covering the end-to-end app delivery and helping ship the product while continuing with the company.',
    highlights: [
      'Delivered the main teacher-focused online examination workflow',
      'Collaborated on completing and launching the application',
      'Currently continuing as a part-time Flutter developer',
    ],
  ),
];
