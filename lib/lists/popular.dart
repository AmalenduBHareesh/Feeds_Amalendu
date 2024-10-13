import 'package:flutter/material.dart';
import 'package:pd_main/discover.dart';
import 'package:pd_main/search.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  // List of dummy data (you can replace this with your real data)
  final List<Map<String, String>> PopularItems = [
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

  List<bool> _isBookmarked = [false];

  @override
  void initState() {
    super.initState();
    // Initialize bookmark state to false for all items
    _isBookmarked = List<bool>.filled(PopularItems.length, false);
  }

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
          'Most Popular',
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
              color: const Color(0xff414ECA),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: screenHeight * 0.02,
          top: screenHeight * 0.02,
        ),
        child: ListView.builder(
          itemCount: PopularItems.length,
          itemBuilder: (context, index) {
            final item = PopularItems[index];
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
                height: 128,
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
                          item['image']!, // Use the image from the item map
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
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
                              padding: const EdgeInsets.only(top: 10),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item[
                                      'date']!, // Use the date from the item map
                                  style: const TextStyle(
                                      fontFamily: 'Nunito',
                                      color: Color(0xff8B8B8B),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        _isBookmarked[index]
                                            ? Icons.bookmark
                                            : Icons.bookmark_outline,
                                        color: const Color(0xff414ECA),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isBookmarked[index] =
                                              !_isBookmarked[index];
                                        });
                                      },
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
