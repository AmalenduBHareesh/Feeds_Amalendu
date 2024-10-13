// explore.dart
import 'package:flutter/material.dart';
import 'package:pd_main/discover.dart';
import 'package:pd_main/lists/topicselect.dart';
import 'package:pd_main/search.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Sample data for topics
    final List<Topic> topics = [
      Topic(
          title: "AI",
          subtitle: "100+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Data Science",
          subtitle: "200+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Machine Learning",
          subtitle: "150+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Web Development",
          subtitle: "300+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Mobile Development",
          subtitle: "120+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cloud Computing",
          subtitle: "80+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Blockchain",
          subtitle: "90+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cybersecurity",
          subtitle: "110+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Web Development",
          subtitle: "300+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Mobile Development",
          subtitle: "120+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cloud Computing",
          subtitle: "80+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Blockchain",
          subtitle: "90+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cybersecurity",
          subtitle: "110+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "AI",
          subtitle: "100+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Data Science",
          subtitle: "200+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Machine Learning",
          subtitle: "150+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Web Development",
          subtitle: "300+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Mobile Development",
          subtitle: "120+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cloud Computing",
          subtitle: "80+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Blockchain",
          subtitle: "90+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cybersecurity",
          subtitle: "110+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Web Development",
          subtitle: "300+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Mobile Development",
          subtitle: "120+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cloud Computing",
          subtitle: "80+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Blockchain",
          subtitle: "90+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cybersecurity",
          subtitle: "110+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "AI",
          subtitle: "100+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Data Science",
          subtitle: "200+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Machine Learning",
          subtitle: "150+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Web Development",
          subtitle: "300+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Mobile Development",
          subtitle: "120+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cloud Computing",
          subtitle: "80+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Blockchain",
          subtitle: "90+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cybersecurity",
          subtitle: "110+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Web Development",
          subtitle: "300+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Mobile Development",
          subtitle: "120+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cloud Computing",
          subtitle: "80+ Articles",
          imagePath: 'assets/images/three.png'),
      Topic(
          title: "Blockchain",
          subtitle: "90+ Articles",
          imagePath: 'assets/images/one.png'),
      Topic(
          title: "Cybersecurity",
          subtitle: "110+ Articles",
          imagePath: 'assets/images/one.png'),
    ];

    // Calculate the number of columns based on screen width
    int columns = (screenWidth / 180).floor(); // 180 is an estimated item width

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 40, // Reduce the width for the leading widget
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Discover()));
            },
            child: const Icon(Icons.arrow_back,
                size: 30, color: Color(0xff260446)),
          ),
        ),
        title: const Text(
          'Explore Topics',
          style: TextStyle(
            color: Color(0xff260446),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false, // Ensures the title is aligned to the left
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Search()));
              },
              iconSize: 30,
              icon: const Icon(Icons.search_outlined),
              color: const Color(0xff8B8B8B),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns, // Use the calculated number of columns
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 175 / 120, // Aspect ratio for items
          ),
          itemCount: topics.length, // Use the length of your topics list
          itemBuilder: (context, index) {
            final topic = topics[index]; // Get the current topic

            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopicSelect()));
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.asset(
                        topic.imagePath,
                        fit: BoxFit
                            .cover, // Changed to cover for better image fit
                        width:
                            double.infinity, // Use full width of the container
                        height:
                            double.infinity, // Use full height of the container
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(158, 86, 86, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity, // Full width
                        height: double.infinity, // Full height
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                topic.title.length > 10
                                    ? '${topic.title.substring(0, 10)}...'
                                    : topic.title,
                                style: TextStyle(
                                  fontSize: 18, // Responsive text size
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                topic.subtitle,
                                style: TextStyle(
                                  fontSize: 12, // Responsive text size
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// topic.dart
class Topic {
  final String title;
  final String subtitle;
  final String imagePath;

  Topic({required this.title, required this.subtitle, required this.imagePath});
}
