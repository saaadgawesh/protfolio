# Protfolio

A responsive Flutter portfolio web app for showcasing profile details, resume highlights, featured projects, and contact links in one place.

## Live Demo

GitHub Pages:

`https://saaadgawesh.github.io/protfolio/`

## Features

- Responsive portfolio layout built with Flutter Web
- Bottom navigation for About, Resume, Portfolio, and Contact sections
- Project showcase with screenshots, technologies, and highlights
- CV, GitHub, LinkedIn, email, WhatsApp, and other contact shortcuts
- Optimized deployment flow for GitHub Pages

## Tech Stack

- Flutter
- Dart
- flutter_screenutil
- url_launcher
- smooth_page_indicator
- syncfusion_flutter_pdfviewer
- timeline_tile

## Included Project Screenshots

The portfolio currently includes screenshots for projects such as:

- AI Chat App
- RouteX Fleet Management
- IT Legend Task
- TamTam
- E-Commerce App
- News App
- Doctor Appointment App
- Insta App Clone
- Real Estate App
- Portfolio Website App

## Run Locally

Install dependencies:

```bash
flutter pub get
```

Run on Chrome:

```bash
flutter run -d chrome
```

Build web locally:

```bash
flutter build web --release
```

Build for GitHub Pages:

```bash
flutter build web --release --base-href "/protfolio/"
```

## GitHub Pages Deployment

This repository uses GitHub Actions to build and deploy Flutter Web to GitHub Pages.

Workflow file:

`/.github/workflows/deploy_pages.yml`

Important notes:

- In GitHub repository settings, set `Pages > Source` to `GitHub Actions`
- Push changes to the default branch
- The workflow builds the app using:

```bash
flutter build web --release --base-href "/protfolio/"
```

## Project Structure

```text
lib/
  core/
  feature/
    navBar/
    tabs/
    widget/
screen_shots/
.github/workflows/
```

## Author

Saad Gawesh

- GitHub: `https://github.com/saaadgawesh`
- LinkedIn: `https://www.linkedin.com/in/mohamed-gawish-flutter-developer`

