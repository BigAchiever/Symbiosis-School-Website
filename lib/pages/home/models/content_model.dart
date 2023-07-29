class Section {
  final String imageUrl;
  final String title;
  final String description;

  Section({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

final List<Section> sections = [
  Section(
    imageUrl: "assets/image/rocket.svg",
    title: "Design your own solutions to impossible problems",
    description: "Select your Interests to Explore",
  ),
  Section(
    imageUrl: "assets/image/rocket.svg",
    title: "Design your own problems",
    description: "Select your Interests to Explore",
  ),
  Section(
    imageUrl: "assets/image/rocket.svg",
    title: "Rocket",
    description: "Select your Interests to Explore",
  ),
  Section(
    imageUrl: "assets/image/rocket.svg",
    title: "Social Impact",
    description: "Select your Interests to Explore",
  ),
];
