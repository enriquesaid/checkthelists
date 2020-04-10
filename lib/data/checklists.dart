import 'package:checkthelists/models/checklist.dart';

List<Checklist> dataList = [
  Checklist(
    id: 0,
    category: 0,
    title: 'Web developer checklist',
    description: 'The ultimate checklist for all serious web developers building modern websites.',
    url: 'https://www.toptal.com/developers/webdevchecklist',
    difficulty: 'easy',
    completed: false
  ),
  Checklist(
    id: 1,
    category: 1,
    title: 'SaaS Startup Checklist',
    description: 'The SaaS Startup Checklist',
    url: 'https://github.com/slashdotdash/saas-startup-checklist/blob/master/README.md',
    difficulty: 'medium',
    completed: false
  ),
  Checklist(
    id: 2,
    category: 5,
    title: 'Conversion Checklist',
    description: 'A 41 point checklist to make sure you have everything covered to make your website convert as well as possible.',
    url: 'https://www.conversionchecklist.org/',
    difficulty: 'medium/hard',
    completed: false
  ),
  Checklist(
    id: 3,
    category: 0,
    title: 'The SaaS CTO Security Checklist',
    description: 'Security shouldn’t feel like a chore. This second edition of the SaaS CTO Security Checklist provides actionable security best practices for CTOs or developers.',
    url: 'https://www.sqreen.com/checklists/saas-cto-security-checklist',
    difficulty: 'medium/hard',
    completed: false
  )
];
