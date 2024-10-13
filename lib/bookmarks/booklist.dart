import 'package:flutter/material.dart';
import 'package:pd_main/bookmarks/bookgrid.dart';
import 'package:pd_main/feeds.dart';
import 'package:pd_main/search.dart';

class Booklist extends StatelessWidget {
  const Booklist({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // List of dummy data (you can replace this with your real data)
    final List<Map<String, String>> BooklistItems = [
      {
        'title':
            '10 Effective Tips for Boosting Your Productivity in a Remote Work Environment',
        'author': 'James Hok',
        'date': '3 Days Ago',
        'image': 'assets/images/five.png'
      },
      {
        'title':
            'How to Boost Your Productivity: 10 Proven Strategies for Success',
        'author': 'James Hok',
        'date': '3 Days Ago',
        'image': 'assets/images/one.png'
      },
      {
        'title':
            'The Ultimate Guide to Work-Life Balance: Strategies for Remote Workers',
        'author': 'Sarah Lee',
        'date': '1 Week Ago',
        'image': 'assets/images/three.png'
      },
      {
        'title':
            'Maximizing Your Time: Effective Time Management Techniques for Remote Teams',
        'author': 'Michael Chen',
        'date': '2 Weeks Ago',
        'image': 'assets/images/three.png'
      },
      {
        'title':
            'Remote Work Essentials: Tools and Technologies to Enhance Productivity',
        'author': 'Anna Smith',
        'date': '1 Month Ago',
        'image': 'assets/images/four.png'
      },
      {
        'title':
            'Mindfulness and Focus: How to Maintain Mental Clarity While Working from Home',
        'author': 'David Brown',
        'date': '2 Months Ago',
        'image': 'assets/images/one.png'
      },
      {
        'title':
            'Collaboration in a Virtual World: Best Practices for Teamwork and Communication',
        'author': 'Linda Green',
        'date': '3 Months Ago',
        'image': 'assets/images/three.png'
      },
      {
        'title':
            'Building a Productive Home Office: Design Tips for Optimal Workflow',
        'author': 'Robert Johnson',
        'date': '6 Months Ago',
        'image': 'assets/images/one.png'
      },
      {
        'title':
            'Creating a Daily Routine: How to Structure Your Day for Maximum Efficiency',
        'author': 'Emily White',
        'date': '7 Months Ago',
        'image': 'assets/images/four.png'
      },
      {
        'title':
            'The Future of Work: Trends and Predictions for Remote Work in the Coming Years',
        'author': 'Chris Martin',
        'date': '1 Year Ago',
        'image': 'assets/images/five.png'
      }
    ];

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
        centerTitle: false, // Ensures the title is aligned to the left
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
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: screenHeight * 0.02,
          top: screenHeight * 0.01,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  '12 Articles',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const Bookgrid(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          // Create a fade transition
                          var fadeAnimation =
                              Tween<double>(begin: 0.0, end: 1.0).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeInOut,
                            ),
                          );

                          return FadeTransition(
                            opacity: fadeAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Icon(Icons.apps, size: 25, color: Color(0xff8B8B8B)),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Booklist()));
                  },
                  child: Icon(Icons.list_alt_outlined,
                      size: 25, color: Color(0xff414ECA)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: BooklistItems.map((item) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.02),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 0,
                            blurRadius: 3,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      height: 125,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            width: 125,
                            height: 125,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                item[
                                    'image']!, // Use the image from the item map
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item[
                                              'title']!, // Use the title from the item map
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff414ECA),
                                          ),
                                          overflow: TextOverflow
                                              .ellipsis, // Ensures text does not wrap
                                          maxLines:
                                              1, // Keeps the text on a single line
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/ello.png',
                                            width: 25),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text('James Hok',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff414ECA))),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.02, // Adjust the factor as needed
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item[
                                              'date']!, // Use the date from the item map
                                          style: const TextStyle(
                                              fontFamily: 'Nunito',
                                              color: Color(0xff8B8B8B),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.app_registration,
                                              color: Color(0xff8B8B8B),
                                              size: 20,
                                            ),
                                            SizedBox(width: 20),
                                            Icon(
                                              Icons.more_vert,
                                              size: 20,
                                              color: Color(0xff8B8B8B),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
