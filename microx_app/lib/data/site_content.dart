import 'package:flutter/material.dart';

import '../core/constants/app_assets.dart';
import '../core/routes/app_routes.dart';
import 'models/nav_item_model.dart';
import 'models/process_step_model.dart';
import 'models/service_model.dart';
import 'models/team_member_model.dart';
import 'models/work_model.dart';

/// All text below is copied from microxtechcompany.com.
class SiteContent {
  SiteContent._();

  // ---------- General ----------
  static const String announcement =
      'MicroX November Hackathon · Planned after 9 November. Early registration is open.';
  static const String announcementUrl =
      'https://microxtechcompany.com/community/microx-november-hackathon';
  static const String submitProjectUrl =
      'https://microxtechcompany.com/submit-project?event=microx-november-hackathon';
  static const String linkedInUrl = 'https://www.linkedin.com/in/micro-x-106521444/';
  static const String githubUrl = 'https://github.com/microx-tech-company';
  static const String email = 'mailto:info@microx.tech';
  static const String footerTagline = 'Good ideas deserve great engineering.';
  static const String footerLocation = 'Remote · Working across time zones';
  static const String copyright = '© 2026 MicroX. Built with purpose.';

  // ---------- Navigation ----------
  static const List<NavItemModel> navItems = [
    NavItemModel(label: 'Home', route: AppRoutes.home),
    NavItemModel(label: 'Services', route: AppRoutes.services),
    NavItemModel(label: 'Work', route: AppRoutes.work),
    NavItemModel(label: 'Studio', route: AppRoutes.studio),
    NavItemModel(label: 'Team', route: AppRoutes.team),
    NavItemModel(label: 'Community', route: AppRoutes.community),
    NavItemModel(label: 'Careers', route: AppRoutes.careers),
    NavItemModel(label: 'Insights', route: AppRoutes.insights),
    NavItemModel(label: 'Submit your project ↗', externalUrl: submitProjectUrl),
  ];

  static const List<NavItemModel> footerExplore = [
    NavItemModel(label: 'Services', route: AppRoutes.services),
    NavItemModel(label: 'Our work', route: AppRoutes.work),
    NavItemModel(label: 'The studio', route: AppRoutes.studio),
    NavItemModel(label: 'Our team', route: AppRoutes.team),
  ];

  static const List<NavItemModel> footerConnect = [
    NavItemModel(label: 'Community', route: AppRoutes.community),
    NavItemModel(label: 'Careers', route: AppRoutes.careers),
    NavItemModel(label: 'Contact us', route: AppRoutes.contact),
    NavItemModel(label: 'Verify a certificate', route: AppRoutes.verify),
  ];

  // ---------- Home: hero ----------
  static const String heroEyebrow = 'MICROX / WEB, APPS & AI';
  static const String heroTitle = 'Small team. Extraordinary possibilities.';
  static const String heroText =
      'We turn ambitious ideas into thoughtful digital products. From your first website to your next big leap in AI.';

  // ---------- Home: building blocks ----------
  static const String stripLine1 = 'INDEPENDENT MINDS. SHARED AMBITION.';
  static const String stripLine2 = 'DESIGN. ENGINEER. EVOLVE.';
  static const List<String> buildingBlocks = [
    'React',
    'Node.js',
    'Firebase',
    'Python',
    'Cloud',
  ];

  // ---------- Team portal promo ----------
  static const String portalEyebrow = 'FOR THE MICROX TEAM';
  static const String portalTitle = 'Your work. Your team. One workspace.';
  static const String portalText =
      'Review your assigned tasks, share progress and stay connected. Sign in with your admin-approved email and password.';

  // ---------- Services ----------
  static const String servicesEyebrow = 'WHAT WE DO';
  static const String servicesPreviewTitle = 'The right expertise.';
  static const String servicesPreviewHighlight = 'All in one place.';
  static const String servicesPreviewText =
      'Design and engineering that connect the dots between your idea and your next step.';

  static const String servicesPageTitle = 'Ambitious ideas. Thoughtfully built.';
  static const String servicesPageText =
      'A connected set of capabilities, from the first sketch to the infrastructure behind it.';

  static const String somethingElse =
      'Have something else in mind? Let’s figure out the right starting point together.';

  static const List<ServiceModel> services = [
    ServiceModel(
      number: '01',
      title: 'Web development',
      description:
          'Fast, accessible websites and platforms built around your business, not a template.',
      icon: Icons.code_rounded,
      url: 'https://microxtechcompany.com/services/web-development',
    ),
    ServiceModel(
      number: '02',
      title: 'App development',
      description:
          'Useful, intuitive mobile experiences that make everyday things a little easier.',
      icon: Icons.smartphone_rounded,
      url: 'https://microxtechcompany.com/services/app-development',
    ),
    ServiceModel(
      number: '03',
      title: 'AI & machine learning',
      description:
          'Put intelligence to work with practical automation, assistants and data products.',
      icon: Icons.auto_awesome_rounded,
      url: 'https://microxtechcompany.com/services/ai-machine-learning',
    ),
    ServiceModel(
      number: '04',
      title: 'Cloud & DevOps',
      description:
          'Reliable infrastructure, smoother releases and room to grow without the chaos.',
      icon: Icons.cloud_outlined,
      url: 'https://microxtechcompany.com/services/cloud-devops',
    ),
    ServiceModel(
      number: '05',
      title: 'Cybersecurity',
      description:
          'Build trust into your product with security reviews and thoughtful safeguards.',
      icon: Icons.shield_outlined,
      url: 'https://microxtechcompany.com/services/cybersecurity',
    ),
  ];

  // ---------- Perspective banner ----------
  static const String perspectiveEyebrow = 'HUMAN AMBITION. ENGINEERED POSSIBILITIES.';
  static const String perspectiveTitle = 'A different perspective. A world of possibility.';

  // ---------- Work ----------
  static const String workEyebrow = 'SELECTED WORK';
  static const String workTitle = 'Ideas, made tangible.';

  static const List<WorkModel> works = [
    WorkModel(
      type: 'Web application',
      title: 'Orbit workspace',
      description:
          'A calmer way for distributed teams to plan, build and stay connected.',
      brandLabel: 'Workspace / Overview',
      previewHeadline: 'Let’s make progress.',
      gradient: [Color(0xFF2A1013), Color(0xFF101010)],
      url: 'https://microxtechcompany.com/work/orbit-workspace',
      stats: [WorkStat('In progress', '06'), WorkStat('Completed', '12')],
    ),
    WorkModel(
      type: 'AI & automation',
      title: 'Nexa intelligence',
      description:
          'Turning complex information into clear, actionable conversations.',
      brandLabel: 'nexa intelligence',
      previewHeadline: 'What will you discover?',
      gradient: [Color(0xFF1B1B24), Color(0xFF101010)],
      url: 'https://microxtechcompany.com/work/nexa-intelligence',
    ),
  ];

  // ---------- Process ("The way we work") ----------
  static const String processEyebrow = 'THE WAY WE WORK';
  static const String processTitle = 'A clear path.';
  static const String processHighlight = 'A shared ambition.';
  static const String processText =
      'We are a technology studio for people building something meaningful. Designers, developers and problem solvers working together to make complex things feel simple.';

  static const List<ProcessStepModel> processSteps = [
    ProcessStepModel(
      number: '01',
      title: 'Discover & define',
      description:
          'We listen, ask questions and shape your ambition into a focused plan.',
    ),
    ProcessStepModel(
      number: '02',
      title: 'Design & build',
      description:
          'You stay close to the process. We share progress, test ideas and improve together.',
    ),
    ProcessStepModel(
      number: '03',
      title: 'Launch & evolve',
      description:
          'A thoughtful handover and a clear foundation for your product’s next chapter.',
    ),
  ];

  // ---------- Why MicroX (collaboration) ----------
  static const String whyEyebrow = 'MADE THROUGH COLLABORATION';
  static const String whyTitle = 'Good ideas.';
  static const String whyHighlight = 'Better together.';
  static const String whyText =
      'Designers, engineers and curious minds. A shared workspace, thoughtful reviews and a clear path from the first idea to the final handoff.';

  static const List<ProcessStepModel> whyPoints = [
    ProcessStepModel(
      number: '',
      title: 'Build with care',
      description: '',
      icon: Icons.handyman_outlined,
    ),
    ProcessStepModel(
      number: '',
      title: 'Review together',
      description: '',
      icon: Icons.groups_outlined,
    ),
    ProcessStepModel(
      number: '',
      title: 'Move forward',
      description: '',
      icon: Icons.trending_up_rounded,
    ),
  ];

  // ---------- Team ----------
  static const String teamEyebrow = 'MEET OUR TEAM';
  static const String teamTitle = 'Independent minds.';
  static const String teamHighlight = 'One shared ambition.';
  static const String teamText =
      'The people behind the ideas. The team behind what comes next.';

  static const List<TeamMemberModel> team = [
    TeamMemberModel(
      index: '01',
      department: 'CEO',
      role: 'Chief Executive Officer',
      name: 'Mehmood ul Hassan',
      bio:
          'With 5 years of hands-on experience in Cybersecurity, our CEO is dedicated to building secure, resilient digital infrastructures and leading MicroX toward tech-driven innovation and growth',
      tag: 'Vision & direction',
      photoUrl: AppAssets.ceoPhoto,
    ),
    TeamMemberModel(
      index: '02',
      department: 'Management',
      role: 'Manager',
      name: 'Muhammad Ali Raza',
      bio:
          'Bringing 3 years of expertise in Artificial Intelligence and Machine Learning, our Manager drives smart technology solutions, streamlining workflows and empowering MicroX with data-driven innovation.',
      tag: 'People & delivery',
      photoUrl: AppAssets.managerPhoto,
    ),
    TeamMemberModel(
      index: '03',
      department: 'Engineering',
      role: 'Team Lead',
      name: 'Minahil Rani',
      bio:
          'Minahil Rani is a dedicated Team Lead at MicroX, committed to fostering collaboration, guiding team efforts, and ensuring effective project coordination. She brings leadership, technical insight, and problem-solving skills to the team, contributing to innovative ideas and successful project development.',
      tag: 'Build & collaborate',
      photoUrl: AppAssets.teamLeadPhoto,
    ),
  ];

  // ---------- CTA ----------
  static const String ctaEyebrow = 'YOUR NEXT CHAPTER STARTS HERE';
  static const String ctaTitle = 'A good idea deserves';
  static const String ctaHighlight = 'a great team.';
  static const String ctaText =
      'Tell us what you’re thinking. Let’s work out what’s next.';
  static const String ctaButton = 'Start a conversation';
}
