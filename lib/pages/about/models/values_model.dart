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
    iconPath: 'assets/image/rocket.svg',
    title: 'Mathematics',
    description:
        'To make a positive difference to the world around us, by collaborating to solve our shared challenges.',
  ),
  ContentData(
    iconPath: 'assets/image/rocket.svg',
    title: 'Science',
    description:
        'To support the ongoing learning, development and growth of our community through continued opportunities to practice designing for good.',
  ),
  ContentData(
    iconPath: 'assets/image/rocket.svg',
    title: 'Art & Design',
    description:
        'To help everyone see the value and power of design in the world around them.',
  ),
  ContentData(
    iconPath: 'assets/image/rocket.svg',
    title: 'Mathematics',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
  ContentData(
    iconPath: 'assets/image/rocket.svg',
    title: 'Mathematics',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ),
];
