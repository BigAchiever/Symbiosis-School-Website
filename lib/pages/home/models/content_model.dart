class Section {
  final String imageUrl;
  final String title;
  final String description;
  final double imageHeight;
  final double imageWidth;
  final double titleSize;
  final double descriptionSize;
  final String? imageUrl2;

  Section({
    required this.imageUrl,
    required this.imageUrl2,
    required this.title,
    required this.description,
    required this.imageHeight,
    required this.imageWidth,
    required this.titleSize,
    required this.descriptionSize,
  });
}

final List<Section> sections = [
  Section(
    imageUrl: "assets/image/tree.jpg",
    imageUrl2: null,
    title:
        "Cultivating Minds, Planting Futures: Nurturing Students Like Saplings",
    description: "Learn more about our institute",
    imageHeight: 0.4,
    imageWidth: 0.35,
    titleSize: 40,
    descriptionSize: 80,
  ),
  Section(
    imageUrl: "assets/image/kids.jpg",
    imageUrl2: null,
    title: "Fine-tuning children to become better individuals.",
    description: "Select your Interests to Explore",
    imageHeight: 0.5,
    imageWidth: 0.3,
    titleSize: 35,
    descriptionSize: 80,
  ),
  Section(
    imageUrl: "assets/image/kids2.jpg",
    imageUrl2: null,
    title: "Fostering Children's Creativity and Building Stronger Bonds.",
    description: "Select your Interests to Explore",
    imageHeight: 0.5,
    imageWidth: 0.3,
    titleSize: 35,
    descriptionSize: 80,
  ),
  Section(
    imageUrl: "assets/image/result1.jpeg",
    imageUrl2: "assets/image/result2.jpeg",
    title:
        "50+ STUDENTS TILL NOW FROM OUR SCHOOL HAVE RECIEVED RS. 25000/- SCHOLORSHIP FROM OUR honourable CHEIF MINISTER",
    description: "Be the next one to achieve this",
    imageHeight: 0.5,
    imageWidth: 0.18,
    titleSize: 45,
    descriptionSize: 80,
  ),
];
