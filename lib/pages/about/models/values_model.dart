class ContentData {
  final String iconPath;
  final String title;
  final String description;

  ContentData({
    required this.iconPath,
    required this.title,
    required this.description,
  });
}

final List<ContentData> contentList = [
  ContentData(
    iconPath: 'assets/image/svg1.svg',
    title: 'Commitment to Excellence',
    description:
        'Our school is dedicated to fostering a culture of excellence where students are encouraged to reach their highest potential. ',
  ),
  ContentData(
    iconPath: 'assets/image/element.svg',
    title: 'Inclusive Community',
    description:
        'To support the ongoing learning, development and growth of our community through continued opportunities to practice designing for good.',
  ),
  ContentData(
    iconPath: 'assets/image/math.svg',
    title: 'Holistic Education',
    description:
        'We believe in the power of diversity and inclusivity. Our community is built on respect, empathy, and understanding, creating a welcoming environment for students from all backgrounds.',
  ),
  ContentData(
    iconPath: 'assets/image/arroe.svg',
    title: 'Community Engagement',
    description:
        'We emphasize the importance of giving back to the community. Our students are involved in various service projects and partnerships with local organizations. ',
  ),
];
