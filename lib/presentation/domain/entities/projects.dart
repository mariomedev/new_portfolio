class Project {
  final String title;
  final String description;
  final String imagePath;
  final String linkGitRepo;
  final String? linkDemo;
  Project({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.linkGitRepo,
    this.linkDemo,
  });
}

List<Project> projectList = [
  Project(
      title: 'TrackStar',
      description:
          'TrackStar is a powerful inventory management app designed for small businesses, growing companies, and anyone looking for accurate stock tracking. It offers an intuitive and efficient way to organize incoming and outgoing inventory, helping you stay on top of your business operations with ease.',
      imagePath: 'assets/images/trackstar.png',
      linkGitRepo: 'https://github.com/marioflutterdev/trackStar.git',
      linkDemo: 'https://trackstarweb.netlify.app/'),
  Project(
      title: 'Portfolio',
      description:
          'This is my personal portfolio older, where I showcase my skills and the projects I’ve worked on. You can find the source code in my GitHub repository.',
      imagePath: 'assets/images/portfolio.png',
      linkGitRepo: 'https://github.com/marioflutterdev/trackStar.git',
      linkDemo: 'https://marioportafolio.netlify.app/'),
  Project(
    title: 'Newsify App',
    description:
        'Newsify is a mobile app that integrates with a news API to deliver up-to-date headlines from various sources around the world. It provides a smooth, customizable experience for users who want to stay informed with the latest news.',
    imagePath: 'assets/images/notiapp.png',
    linkGitRepo: 'https://github.com/marioflutterdev/Newsify-App.git',
  ),
  Project(
    title: 'Random Yes/No App',
    description:
        'Random Yes/No App is a fun and lightweight application that uses an API to deliver random "yes" or "no" answers. It’s perfect for quick decisions or simply having a little fun with unpredictable responses.',
    imagePath: 'assets/images/maybeapp.png',
    linkGitRepo: 'https://github.com/marioflutterdev/Random-Yes-No-App',
  ),
  Project(
    title: 'ClonTikTak',
    description:
        'ClonTikTak is a social media-style video app featuring a TikTok-like vertical scroll. It allows users to pause and play videos using the `flutter_video_player` package, closely replicating the user experience of short-form video platforms.',
    imagePath: 'assets/images/tick.png',
    linkGitRepo: 'https://github.com/marioflutterdev/ClonTikTak',
  ),
];
