import 'package:flutter/material.dart';
import 'package:pd_main/lists/explore.dart';
import 'package:pd_main/search.dart';

class TopicSelect extends StatefulWidget {
  const TopicSelect({super.key});

  @override
  _TopicSelectState createState() => _TopicSelectState();
}

class _TopicSelectState extends State<TopicSelect> {
  late List<bool> _bookmarked;

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

  @override
  void initState() {
    super.initState();
    _bookmarked = List<bool>.filled(topics.length, false);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

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
                  MaterialPageRoute(builder: (context) => const Explore()));
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
              fontWeight: FontWeight.w700),
        ),
        centerTitle: false,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: screenWidth * 0.9,
                height: screenHeight * 0.22,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/exp1.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.22,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color.fromARGB(126, 14, 20, 76),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.22,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 15, bottom: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Artificial Intelligence",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  Text(
                    'Sort by',
                    style: TextStyle(
                        color: Color(0xff3A0070),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  PopupMenuButton<String>(
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          const Text(
                            'Most Popular',
                            style: TextStyle(
                                color: Color(0xff8B8B8B),
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                          const Icon(Icons.swap_vert,
                              size: 24, color: Color(0xff414ECA)),
                        ],
                      ),
                    ),
                    color: Colors.white,
                    onSelected: (String value) {
                      // Handle sorting logic here
                    },
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'Ascending',
                          child: Text('Most Popular'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Descending',
                          child: Text('Least Popular'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'By Date',
                          child: Text('Sort By Date'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'By Name',
                          child: Text('Sort By Name'),
                        ),
                      ];
                    },
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
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
                            color: Colors.black
                                .withOpacity(0.1), // Shadow color with opacity
                            spreadRadius: 1, // Spread radius
                            blurRadius: 4, // Blur radius for a smoother effect
                            offset: const Offset(
                                0, 4), // Only vertical offset for bottom shadow
                          ),
                        ],
                      ),
                      height: 125,
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
                              padding: const EdgeInsets.only(top: 20),
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
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/ell.png',
                                          width: 20),
                                      const SizedBox(width: 5),
                                      Text(
                                        topic['author']!,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff414ECA)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        topic['time']!,
                                        style: const TextStyle(
                                            color: Color(0xff8B8B8B),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _bookmarked[index] =
                                                    !_bookmarked[index];
                                              });
                                            },
                                            child: Icon(
                                              _bookmarked[index]
                                                  ? Icons.bookmark
                                                  : Icons
                                                      .bookmark_outline_outlined,
                                              color: Color(0xff414ECA),
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
            ],
          ),
        ),
      ),
    );
  }
}
