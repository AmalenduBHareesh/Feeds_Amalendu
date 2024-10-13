import 'package:flutter/material.dart';
import 'package:pd_main/follow.dart';
import 'package:pd_main/topwriters/topwr.dart';

class TopOpen1 extends StatefulWidget {
  const TopOpen1({super.key});

  @override
  _TopOpen1State createState() => _TopOpen1State();
}

class _TopOpen1State extends State<TopOpen1> {
  bool isFollowing = false; // State to track follow status

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing; // Toggle follow state
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 64,
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TopWriter(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xff260446),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share_rounded),
              color: const Color(0xff414ECA),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: const Color(0xff414ECA),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Profile Info
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/ello.png',
                              width: 50, height: 50),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'James Hok',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'UIUX Designer at Google',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff8B8B8B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                              onPressed: () {
                                toggleFollow(); // Change the state when clicked
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isFollowing
                                    ? const Color.fromARGB(255, 255, 255, 255)
                                    : const Color(0xff414ECA),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Color(0xff414ECA),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      30), // Rounded corners
                                ),
                                minimumSize: const Size(
                                    90, 32), // Set minimum size for the button
                              ),
                              child: Text(
                                isFollowing
                                    ? "Following"
                                    : "Follow", // Change text based on state
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: isFollowing
                                      ? const Color(0xff414ECA)
                                      : const Color.fromARGB(
                                          255, 255, 255, 255),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // Separator
                Divider(color: const Color(0xff8B8B8B)),
                const SizedBox(height: 20),
                // Stats
                Container(
                  height: 60, // Set a fixed height as needed
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatsColumn(count: "12", label: "articles"),
                      VerticalDivider(
                          color: const Color(0xff8B8B8B), thickness: 1),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Follow()),
                            );
                          },
                          child: StatsColumn(count: "125", label: "following")),
                      VerticalDivider(
                          color: const Color(0xff8B8B8B), thickness: 1),
                      StatsColumn(count: "12.3K", label: "followers"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Separator
                Divider(color: const Color(0xff8B8B8B)),
                const SizedBox(height: 20),
                // TabBar
                const TabBar(
                  labelColor: Color(0xff414ECA),
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  unselectedLabelColor: Color(0xff8B8B8B),
                  indicatorColor: Color(0xff414ECA),
                  indicatorWeight: 2,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(text: "Articles"),
                    Tab(text: "About"),
                  ],
                ),
                const SizedBox(height: 10),
                // TabBarView content
                SizedBox(
                  height: 500, // Set a fixed height for the TabBarView
                  child: TabBarView(
                    children: [
                      // First tab content: Articles
                      ListView.builder(
                        itemCount: articles.length,
                        itemBuilder: (context, index) {
                          return ArticleCard(
                            title: articles[index]['title']!,
                            date: articles[index]['date']!,
                            imageAssetPath: articles[index]['image']!,
                          );
                        },
                      ),
                      // Second tab content: About
                      const AboutSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Dummy article data
final List<Map<String, String>> articles = [
  {
    'title': "10 tips for Boosting your Productivity Gaining in Workspace",
    'date': "5 Days Ago",
    'image': 'assets/images/three.png',
  },
  {
    'title': "10 tips for Boosting your Productivity Gaining in Workspace",
    'date': "5 Days Ago",
    'image': 'assets/images/five.png',
  },
  {
    'title': "10 tips for Boosting your Productivity Gaining in Workspace",
    'date': "5 Days Ago",
    'image': 'assets/images/three.png',
  },
  {
    'title': "10 tips for Boosting your Productivity Gaining in Workspace",
    'date': "5 Days Ago",
    'image': 'assets/images/one.png',
  },
  {
    'title': "10 tips for Boosting your Productivity Gaining in Workspace",
    'date': "5 Days Ago",
    'image': 'assets/images/three.png',
  },
  {
    'title': "10 tips for Boosting your Productivity Gaining in Workspace",
    'date': "5 Days Ago",
    'image': 'assets/images/four.png',
  },
];

class StatsColumn extends StatelessWidget {
  final String count;
  final String label;

  const StatsColumn({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff414ECA),
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xff6C6262),
          ),
        ),
      ],
    );
  }
}

class ArticleCard extends StatefulWidget {
  final String title;
  final String date;
  final String imageAssetPath;

  const ArticleCard({
    required this.title,
    required this.date,
    required this.imageAssetPath,
    Key? key,
  }) : super(key: key);

  @override
  _ArticleCardState createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  bool isBookmarked = false; // State to track bookmark status

  void toggleBookmark() {
    setState(() {
      isBookmarked = !isBookmarked; // Toggle the bookmark state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      height: 125,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 115,
            height: 115,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.imageAssetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff414ECA),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        widget.date,
                        style: const TextStyle(
                          color: Color(0xff8B8B8B),
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: toggleBookmark, // Toggle bookmark on tap
                        child: Icon(
                          isBookmarked
                              ? Icons.bookmark // Filled icon when bookmarked
                              : Icons
                                  .bookmark_outline_outlined, // Outline icon when not bookmarked
                          color: const Color(0xff414ECA),
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.more_vert,
                        size: 20,
                        color: Color(0xff8B8B8B),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  constraints: BoxConstraints(
                    maxHeight: constraints.maxHeight * 0.3, // Limit height
                  ),
                  child: Text(
                    "A UI/UX designer is the mastermind behind the scenes of the digital products you use every day, ensuring they are not only visually appealing but also functional and enjoyable to use. They bridge the gap between the technical aspects and the user experience,considering both the aesthetics and the usability.",
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B),
                      height: 1.5,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            // Separator
            Divider(color: const Color(0xff8B8B8B)),
            const SizedBox(height: 20),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Social Media",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/link.png',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 5),
                const Text("Linkedin",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/git.png',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 5),
                const Text("Github",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/beh.png',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 5),
                const Text("Behance",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/drib.png',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(width: 5),
                const Text("Dribble",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Separator
            Divider(color: const Color(0xff8B8B8B)),
            const SizedBox(height: 20),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("More Info",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    )),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.circle_outlined),
                SizedBox(width: 5),
                Text("www.jameshok.com",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.assistant_navigation),
                SizedBox(width: 5),
                Text("Banglore India",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.bubble_chart_outlined),
                SizedBox(width: 5),
                Text("Joined since Aug,2024",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.analytics_outlined),
                SizedBox(width: 5),
                Text("124887 Readers",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8B8B),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
