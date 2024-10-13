import 'package:flutter/material.dart';
import 'package:pd_main/discover.dart';
import 'package:pd_main/search.dart';
import 'package:pd_main/topwriters/topwropen1.dart';

class TopWriter extends StatefulWidget {
  const TopWriter({super.key});

  @override
  _TopWriterState createState() => _TopWriterState();
}

class _TopWriterState extends State<TopWriter> {
  // This list will store the follow status for each writer.
  List<bool> isFollowing = List.generate(15, (index) => false);

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define some constants for responsiveness
    double rowHeight = screenHeight * 0.08; // 8% of screen height

    // Define button width and height based on screen size
    double buttonWidth = screenWidth * 0.20; // 25% of screen width
    double buttonHeight = screenHeight * 0.035; // 4% of screen height

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
          'Top Writers',
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
              onPressed: () {},
              iconSize: 30,
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search()));
                  },
                  child: const Icon(Icons.search_outlined)),
              color: const Color(0xff414ECA),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, bottom: 20, top: 30, right: 20),
          child: Column(
            children: List.generate(15, (index) {
              int rank = index + 1;
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TopOpen1()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.05), // Mild shadow color
                              offset: const Offset(
                                  0, 2), // Moves the shadow downwards
                              blurRadius: 2, // Controls the blur intensity
                              spreadRadius: 0, //position (horizontal, vertical)
                            ),
                          ],
                        ),
                        height: rowHeight,
                        width: screenWidth * 0.9, // 90% of screen width
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              rank
                                  .toString()
                                  .padLeft(2, '0'), // Ensures two-digit display
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Image.asset(
                              'assets/images/ello.png',
                              height: 50,
                              width: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, top: 14),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'James Hok',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff414ECA),
                                    ),
                                  ),
                                  Text(
                                    'UIUX Designer at Google',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff8B8B8B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            // Responsive Follow Button with ElevatedButton and state management
                            SizedBox(
                              width: 90,
                              height: 32,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    // Toggle the follow status
                                    isFollowing[index] = !isFollowing[index];
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: isFollowing[index]
                                      ? Colors.white
                                      : const Color(0xff414ECA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                      color: Color(0xff414ECA),
                                    ),
                                  ),
                                  // Decrease padding on both sides of the text
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          8), // Adjust the horizontal padding
                                ),
                                child: Text(
                                  isFollowing[index] ? 'Following' : 'Follow',
                                  style: TextStyle(
                                    fontSize: 13, // Responsive font size
                                    fontWeight: FontWeight.w600,
                                    color: isFollowing[index]
                                        ? const Color(0xff414ECA)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
