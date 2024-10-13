import 'package:flutter/material.dart';
import 'package:pd_main/bookmarks/booklist.dart';
import 'package:pd_main/feeds.dart';
import 'package:pd_main/search.dart';

class Bookgrid extends StatelessWidget {
  const Bookgrid({super.key});

  // Example list of articles
  final List<Map<String, String>> articles = const [
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/three.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/one.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/four.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/four.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/one.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': 'How to Stay Organized Effectively',
      'image': 'assets/images/five.png',
      'author': 'Linda Grey',
      'date': '1 Week Ago'
    },
    {
      'title': 'Mastering Time Management in 2024',
      'image': 'assets/images/three.png',
      'author': 'Sarah Smith',
      'date': '2 Weeks Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/three.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/three.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/four.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/one.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': 'How to Stay Organized Effectively',
      'image': 'assets/images/five.png',
      'author': 'Linda Grey',
      'date': '1 Week Ago'
    },
    {
      'title': 'Mastering Time Management in 2024',
      'image': 'assets/images/three.png',
      'author': 'Sarah Smith',
      'date': '2 Weeks Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/three.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/four.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/one.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': 'How to Stay Organized Effectively',
      'image': 'assets/images/five.png',
      'author': 'Linda Grey',
      'date': '1 Week Ago'
    },
    {
      'title': 'Mastering Time Management in 2024',
      'image': 'assets/images/three.png',
      'author': 'Sarah Smith',
      'date': '2 Weeks Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/three.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },

    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/three.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },
    {
      'title': '10 Tips for Boosting Your Productivity...',
      'image': 'assets/images/five.png',
      'author': 'James Hok',
      'date': '3 Days Ago'
    },

    // Add more articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Adjust number of columns dynamically based on screen size
    int columns = (screenWidth / 180).floor();
    if (columns < 1) columns = 1; // Minimum one column for very small screens

    // You can also adjust font sizes, padding, and other aspects based on screen size
    double titleFontSize = screenWidth < 350 ? 14 : 16;
    double authorFontSize = screenWidth < 350 ? 10 : 12;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Feeds()));
            },
            child: const Icon(Icons.arrow_back,
                size: 30, color: Color(0xff260446)),
          ),
        ),
        title: const Text(
          'My Bookmarks',
          style: TextStyle(
            color: Color(0xff260446),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Search()));
            },
            iconSize: 30,
            icon: const Icon(Icons.search_outlined),
            color: const Color(0xff8B8B8B),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Text(
                      '${articles.length} Articles',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    const Icon(Icons.apps, size: 25, color: Color(0xff414ECA)),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const Booklist(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              // Define a fade animation
                              const begin = 0.0; // Start from fully transparent
                              const end = 1.0; // End at fully opaque
                              const curve = Curves.easeInOut;

                              var tween = Tween<double>(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));
                              var fadeAnimation = animation.drive(tween);

                              return FadeTransition(
                                opacity: fadeAnimation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      child: const Icon(Icons.list_alt_outlined,
                          size: 25, color: Color(0xff8B8B8B)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              // Responsive GridView to display bookmarks
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];
                  return Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 160,
                                  child: Image.asset(
                                    article['image']!,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff414ECA),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.bookmark_outline,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  article['title']!.length > 30
                                      ? article['title']!.substring(0, 30) +
                                          '...'
                                      : article['title']!,
                                  style: TextStyle(
                                    fontSize: titleFontSize,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff414ECA),
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset('assets/images/ell.png', width: 20),
                            const SizedBox(width: 5),
                            Text(
                              article['author']!.length > 7
                                  ? article['author']!.substring(0, 7) + '...'
                                  : article['author']!,
                              style: TextStyle(
                                fontSize: authorFontSize,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff414ECA),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Spacer(),
                            Text(
                              article['date']!,
                              style: const TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Icon(
                              Icons.more_vert,
                              size: 15,
                              color: Color(0xff8B8B8B),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 27),
            ],
          ),
        ),
      ),
    );
  }
}
