import 'package:flutter/material.dart';
import 'package:pd_main/articles/articledet.dart';
import 'package:pd_main/lists/explore.dart';
import 'package:pd_main/feeds.dart';
import 'package:pd_main/articles/myartdr.dart';
import 'package:pd_main/articles/newarc.dart';
import 'package:pd_main/lists/popular.dart';
import 'package:pd_main/lists/recomm.dart';
import 'package:pd_main/lists/topicselect.dart';
import 'package:pd_main/search.dart';
import 'package:pd_main/topwriters/topwr.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  bool isBookmarked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 80,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 145,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Feeds()));
              },
              child: Row(
                children: [
                  Image.asset('assets/images/share.png'),
                  Text(
                    'Discover',
                    style: TextStyle(
                      color: Color(0xff3A0070),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Search()));
              },
              icon: const Icon(Icons.search_outlined),
              color: const Color(0xff414ECA),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyArt()));
                },
                icon: const Icon(Icons.style_outlined),
                color: const Color(0xff414ECA),
              ),
            ),
          ],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      // Wrap the Container with Expanded
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Search()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0x7fd9d9d9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 2, // Vertical padding for more height
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Color.fromARGB(126, 69, 69, 69),
                                  size: 25,
                                ),
                                SizedBox(width: 5),
                                Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:
                                          "Search feeds or writers here...",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color.fromARGB(174, 126, 125, 125),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

///////////////////////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      const Text(
                        'Most Popular',
                        style: TextStyle(
                            color: Color(0xff3A0070),
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Popular()));
                        },
                        child: const Icon(Icons.arrow_forward,
                            size: 20, color: Color(0xff8B8B8B)),
                      ),
                    ],
                  ),
                ),
                /////////////////////////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(images.length, (index) {
                      // Get the screen width
                      double screenWidth = MediaQuery.of(context).size.width;

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ArticDet()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors
                                .white, // Ensure containers have a background color
                          ),
                          height: 260,
                          width: 165,
                          margin: const EdgeInsets.only(
                              right: 20), // Space between containers
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 165,
                                height: 165,
                                child: Stack(
                                  children: [
                                    // Use a box with a background color while loading the image
                                    Container(
                                      color: Colors.grey[
                                          300], // Placeholder color while loading
                                      child: Image.asset(
                                        images[
                                            index], // Use the image from the list
                                        fit: BoxFit.cover,
                                        width: 165,
                                        height: 165,
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
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '10 tips for Boosting your Productivity...', // Default text
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(children: [
                              Image.asset('assets/images/ell.png', width: 20),
                              const SizedBox(width: 5),
                              Text(
                                authors[index].length > 8
                                    ? '${authors[index].substring(0, 8)}...' // Truncate and add ellipsis
                                    : authors[index], // Keep the full name
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA),
                                ),
                              ),
                              Spacer(),
                              Text(
                                '3 Days Ago', // This could also be dynamic if needed
                                style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Transform(
                                transform: Matrix4.identity()
                                  ..scale(1.3, 1.1), // Scale only the height
                                child: Icon(
                                  Icons.more_vert,
                                  size: 15, // Original size
                                  color: Color(0xff8B8B8B),
                                ),
                              ),
                            ]),
                          ]),
                        ),
                      );
                    }),
                  ),
                ),
                /////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    const Text(
                      'Explore by Topics',
                      style: TextStyle(
                          color: Color(0xff3A0070),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore()));
                      },
                      child: const Icon(Icons.arrow_forward,
                          size: 20, color: Color(0xff8B8B8B)),
                    ),
                  ],
                ),
/////////////////////////////////////////////
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Align to the left
                    children: List.generate(15, (index) {
                      // Example titles and article counts
                      final articles = [
                        {"title": "AI", "count": "100+"},
                        {"title": "Data Science", "count": "150+"},
                        {"title": "Machine Learning", "count": "120+"},
                        {"title": "Flutter Development", "count": "80+"},
                        {"title": "Web Development", "count": "200+"},
                        {"title": "AI", "count": "100+"},
                        {"title": "Data Science", "count": "150+"},
                        {"title": "Machine Learning", "count": "120+"},
                        {"title": "Flutter Development", "count": "80+"},
                        {"title": "Web Development", "count": "200+"},
                        {"title": "AI", "count": "100+"},
                        {"title": "Data Science", "count": "150+"},
                        {"title": "Machine Learning", "count": "120+"},
                        {"title": "Flutter Development", "count": "80+"},
                        {"title": "Web Development", "count": "200+"},
                      ];

                      return Padding(
                        padding: const EdgeInsets.only(
                            right: 20.0), // Adjust spacing
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TopicSelect(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: 165,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/one.png', // Use your desired image
                                    fit: BoxFit.fitHeight,
                                    width: 165,
                                    height: 120,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: const Color.fromARGB(
                                          158, 86, 86, 255),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    width: 165,
                                    height: 120,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            articles[index]['title']!,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "${articles[index]['count']} Articles",
                                            style: const TextStyle(
                                              fontSize: 11,
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
                        ),
                      );
                    }),
                  ),
                ),

                ///////////////////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  children: [
                    const Text(
                      'Top Writers',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Color(0xff3A0070),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TopWriter()));
                      },
                      child: const Icon(Icons.arrow_forward,
                          size: 20, color: Color(0xff8B8B8B)),
                    ),
                  ],
                ),
                /////////////////////////////////////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    width: 2000,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        articles.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              ClipOval(
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                    articles[index]['image']!,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                articles[index]['name']!,
                                style: const TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff3A0070),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),
                Row(
                  children: [
                    const Text(
                      'Our Recommendations',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Color(0xff3A0070),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Recommend()));
                      },
                      child: const Icon(Icons.arrow_forward,
                          size: 20, color: Color(0xff8B8B8B)),
                    ),
                  ],
                ),
                ///////////////////////
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(images.length, (index) {
                      // Get the screen width
                      double screenWidth = MediaQuery.of(context).size.width;

                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ArticDet()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors
                                .white, // Ensure containers have a background color
                          ),
                          height: 260,
                          width: 165,
                          margin: const EdgeInsets.only(
                              right: 20), // Space between containers
                          child: Column(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 165,
                                height: 165,
                                child: Stack(
                                  children: [
                                    // Use a box with a background color while loading the image
                                    Container(
                                      color: Colors.grey[
                                          300], // Placeholder color while loading
                                      child: Image.asset(
                                        images[
                                            index], // Use the image from the list
                                        fit: BoxFit.cover,
                                        width: 165,
                                        height: 165,
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
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      '10 tips for Boosting your Productivity...', // Default text
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(children: [
                              Image.asset('assets/images/ell.png', width: 20),
                              const SizedBox(width: 5),
                              Text(
                                authors[index].length > 8
                                    ? '${authors[index].substring(0, 8)}...' // Truncate and add ellipsis
                                    : authors[index], // Keep the full name
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA),
                                ),
                              ),
                              Spacer(),
                              Text(
                                '3 Days Ago', // This could also be dynamic if needed
                                style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Transform(
                                transform: Matrix4.identity()
                                  ..scale(1.3, 1.1), // Scale only the height
                                child: Icon(
                                  Icons.more_vert,
                                  size: 15, // Original size
                                  color: Color(0xff8B8B8B),
                                ),
                              ),
                            ]),
                          ]),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                Row(
                  children: [
                    const Text(
                      'Recent Articles',
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Color(0xff3A0070),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Newarc()));
                      },
                      child: const Icon(Icons.arrow_forward,
                          size: 20, color: Color(0xff8B8B8B)),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    var topic = topics[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(
                                  0.1), // Shadow color with opacity
                              spreadRadius: 1, // Spread radius
                              blurRadius:
                                  4, // Blur radius for a smoother effect
                              offset: const Offset(0,
                                  4), // Only vertical offset for bottom shadow
                            ),
                          ],
                        ),
                        height: 134,
                        width: double.infinity,
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
                                  topic['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      topic['title']!.length > 31
                                          ? topic['title']!.substring(0, 31) +
                                              '...'
                                          : topic['title']!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Image.asset('assets/images/ell.png',
                                            width: 20),
                                        const SizedBox(width: 5),
                                        Text(
                                          topic['author']!,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff414ECA)),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          topic['time']!,
                                          style: const TextStyle(
                                              color: Color(0xff8B8B8B),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(
                                                isBookmarked
                                                    ? Icons
                                                        .bookmark // Filled bookmark icon
                                                    : Icons
                                                        .bookmark_outline_outlined, // Outline bookmark icon
                                                color: Color(0xff414ECA),
                                                size: 20,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  isBookmarked =
                                                      !isBookmarked; // Toggle the bookmark state
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
                SizedBox(
                  height: 50,
                )
              ])),
        ));
  }
}

final List<String> images = [
  'assets/images/one.png',
  'assets/images/five.png',
  'assets/images/three.png',
  'assets/images/four.png',
  'assets/images/five.png',
  'assets/images/one.png',
  'assets/images/five.png',
  'assets/images/three.png',
  'assets/images/four.png',
  'assets/images/five.png',
  // Add more images as needed
];

final List<String> authors = [
  'James Hok',
  'James Hok',
  'James Hok',
  'James Hok',
  'Michael Brown',
  'James Hok',
  'James Hok',
  'James Hok',
  'James Hok',
  'Michael Brown',

  // Add more authors as needed
];

// You can also have a list for the titles or any other texts
List<Map<String, dynamic>> contentList = [
  {
    "image": "assets/images/one.png",
    "title": "10 tips for Boosting your Productivity...",
    "author": "James Hok",
    "date": "3 Days Ago"
  },
  {
    "image": "assets/images/four.png",
    "title": "10 tips for Boosting your Productivity...",
    "author": "Sarah Lee",
    "date": "2 Days Ago"
  },
  {
    "image": "assets/images/three.png",
    "title": "The Future of AI in Tech",
    "author": "Mark Stevenson",
    "date": "1 Week Ago"
  },

  // Add more items to this list as needed
];

final List<Map<String, dynamic>> discoverList = [
  {
    'image': 'assets/images/one.png',
    'title': '10 Tips for Boosting your Productivity...',
    'author': 'James Hok',
    'date': '3 Days Ago',
  },
  {
    'image': 'assets/images/one.png',
    'title': '10 Tips for Boosting your Productivity...',
    'author': 'James Hok',
    'date': '3 Days Ago',
  },
  {
    'image': 'assets/images/one.png',
    'title': '10 Tips for Boosting your Productivity...',
    'author': 'James Hok',
    'date': '3 Days Ago',
  },
  {
    'image': 'assets/images/three.png',
    'title': 'The Future of AI in Everyday Life...',
    'author': 'John Smith',
    'date': '5 Hours Ago',
  },
  {
    'image': 'assets/images/one.png',
    'title': '10 Tips for Boosting your Productivity...',
    'author': 'James Hok',
    'date': '3 Days Ago',
  },
  // Add more varied content as needed
];
final List<Map<String, String>> articles = [
  {'name': 'Ronald', 'image': 'assets/images/dp1.png'},
  {'name': 'John', 'image': 'assets/images/dp2.png'},
  {'name': 'Anna', 'image': 'assets/images/dp3.png'},
  {'name': 'Eva', 'image': 'assets/images/dp2.png'},
  {'name': 'Ronald', 'image': 'assets/images/dp1.png'},
  {'name': 'John', 'image': 'assets/images/dp2.png'},
  {'name': 'Anna', 'image': 'assets/images/dp3.png'},
  {'name': 'Eva', 'image': 'assets/images/dp2.png'},
  {'name': 'Ronald', 'image': 'assets/images/dp1.png'},
  {'name': 'John', 'image': 'assets/images/dp2.png'},
  {'name': 'Anna', 'image': 'assets/images/dp3.png'},
  {'name': 'Eva', 'image': 'assets/images/dp2.png'},
  {'name': 'Ronald', 'image': 'assets/images/dp1.png'},
  {'name': 'John', 'image': 'assets/images/dp2.png'},
  {'name': 'Anna', 'image': 'assets/images/dp3.png'},
  {'name': 'Eva', 'image': 'assets/images/dp2.png'},
  {'name': 'Ronald', 'image': 'assets/images/dp1.png'},
  {'name': 'John', 'image': 'assets/images/dp2.png'},
  {'name': 'Anna', 'image': 'assets/images/dp3.png'},
  {'name': 'Eva', 'image': 'assets/images/dp2.png'},
  {'name': 'Ronald', 'image': 'assets/images/dp1.png'},
  {'name': 'John', 'image': 'assets/images/dp2.png'},
  {'name': 'Anna', 'image': 'assets/images/dp3.png'},

  // Add more articles here
];
final List<Map<String, String>> topics = [
  {
    'title': '10 tips for Boosting your Productivity ...',
    'author': 'James Hok',
    'time': '3 Days Ago',
    'image': 'assets/images/six.png'
  },
  {
    'title': 'Mastering Flutter UI Components',
    'author': 'Lara Weems',
    'time': '5 Days Ago',
    'image': 'assets/images/four.png'
  },
  {
    'title': '10 tips for Boosting your Productivity ...',
    'author': 'Lara Weems',
    'time': '5 Days Ago',
    'image': 'assets/images/three.png'
  },
  {
    'title': 'Mastering Flutter UI and the Component ',
    'author': 'Lara Weems',
    'time': '5 Days Ago',
    'image': 'assets/images/one.png'
  },
  {
    'title': 'Mastering Flutter UI and Components',
    'author': 'Lara Weems',
    'time': '5 Days Ago',
    'image': 'assets/images/five.png'
  },
];
