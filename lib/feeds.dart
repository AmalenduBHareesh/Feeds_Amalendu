import 'package:flutter/material.dart';
import 'package:pd_main/articles/articledet.dart';
import 'package:pd_main/articles/myartdr.dart';
import 'package:pd_main/articles/newarc.dart';
import 'package:pd_main/bookmarks/bookgrid.dart';
import 'package:pd_main/create.dart';
import 'package:pd_main/discover.dart';
import 'package:pd_main/search.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        scrolledUnderElevation: 0,
        leadingWidth: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          width: 84,
          height: 70,
          child: Image.asset('assets/images/info.png'),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Create()));
                  },
                  icon: Icon(Icons.add),
                  color: Color(0xff414ECA),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Discover()));
                  },
                  icon: Icon(Icons.explore_outlined),
                  color: Color(0xff414ECA),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search()));
                  },
                  icon: Icon(Icons.search_outlined),
                  color: Color(0xff414ECA),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Bookgrid()));
                  },
                  icon: Icon(Icons.style_outlined),
                  color: Color(0xff414ECA),
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.8, // Adjust height based on screen size
                width: MediaQuery.of(context).size.width * 0.9,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    // Determine how many cards to display based on screen width
                    double viewportFraction = constraints.maxWidth < 600
                        ? 1.0 // For mobile view, show 1 item
                        : constraints.maxWidth < 900
                            ? 0.5 // For small tablets, show 2 items
                            : constraints.maxWidth < 1200
                                ? 0.33 // For tablets, show 3 items
                                : constraints.maxWidth < 1500
                                    ? 0.25 // For larger tablets, show 4 items
                                    : 0.1; // For large screens, show 5 items

                    return Align(
                      alignment: Alignment
                          .centerLeft, // Align the widget closer to the left
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            13, // Number of items to display in the carousel
                        controller: PageController(
                          viewportFraction: viewportFraction,
                          initialPage: 3,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 10.0), // Reduce the padding on the left
                            child: Container(
                              width: constraints.maxWidth * 0.3,
                              // Set the width based on screen size
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26),
                                border: Border.all(
                                  color: Color.fromARGB(255, 212, 210, 210),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      child: Image.asset(
                                        'assets/images/rect.png',
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15, top: 15),
                                    child: Row(
                                      children: [
                                        Image.asset('assets/images/ello.png'),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'James Hok',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff414ECA),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Text(
                                                'UIUX Designer at Google',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff8B8B8B),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 12),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xff8B8B8B),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          height: 27,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Center(
                                            child: Text(
                                              'Designs',
                                              style: TextStyle(
                                                color: Color(0xff8B8B8B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xff8B8B8B),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          height: 25,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Center(
                                            child: Text(
                                              'Placements',
                                              style: TextStyle(
                                                color: Color(0xff8B8B8B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Color(0xff8B8B8B),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          height: 25,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Center(
                                            child: Text(
                                              'MAANG',
                                              style: TextStyle(
                                                color: Color(0xff8B8B8B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 12, right: 10),
                                    child: Text(
                                      "Best Practices for Cracking the 1st and 2nd Tier MNC’s from Institute..! ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 8, top: 5),
                                    child: Text(
                                      "Embarking on a journey to join a first-tier multinational corporation (MNC)...Embarking on a journey to join a first-tier multinational corporation (MNC) straight out of your institute is an aspiration shared by many ambitious individuals. These prestigious organizations offer not only...",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5A5F63),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '3 Days Ago',
                                        style: TextStyle(
                                          color: Color(0xff8B8B8B),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(width: 60),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ArticDet()));
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Color(0xff414ECA),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 43,
                                          width: 147,
                                          child: Center(
                                            child: Text(
                                              "Read More",
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),

              ////////////////////////////////////
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Text(
                      'Recent Articles',
                      style: TextStyle(
                        color: Color(0xff3A0070),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(), // Replaces the fixed SizedBox for responsiveness
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Newarc()));
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Color(0xff8B8B8B),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(images.length, (index) {
                    // Get the screen width
                    double screenWidth = MediaQuery.of(context).size.width;

                    return Container(
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
                          const SizedBox(width: 5),
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
                    );
                  }),
                ),
              ),

              ////////////////////////
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  Text(
                    'Your Published Articles',
                    style: TextStyle(
                      color: Color(0xff3A0070),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(), // Replaces the fixed SizedBox for responsiveness
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyArt()));
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xff8B8B8B),
                    ),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(images.length, (index) {
                    // Get the screen width
                    double screenWidth = MediaQuery.of(context).size.width;

                    return Container(
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
                          const SizedBox(width: 5),
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
                    );
                  }),
                ),
              ),

              ///////////////////////////
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                children: [
                  Text(
                    'On Your Bookmarks',
                    style: TextStyle(
                      color: Color(0xff3A0070),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(), // Replaces the fixed SizedBox for responsiveness
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bookgrid()));
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xff8B8B8B),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(images.length, (index) {
                    // Get the screen width
                    double screenWidth = MediaQuery.of(context).size.width;

                    return Container(
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
                          const SizedBox(width: 5),
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
                    );
                  }),
                ),
              ),

              const SizedBox(height: 20),
              LayoutBuilder(
                builder: (context, constraints) {
                  // Check if the screen width is smaller than a threshold (for mobile view)
                  if (constraints.maxWidth < 600) {
                    // 600px is a common mobile width threshold
                    return Row(
                      children: [
                        Flexible(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "We’re Working to\n", // Add a line break for mobile
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 143, 142, 142),
                                  ),
                                ),
                                TextSpan(
                                  text: "expand ",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 143, 142, 142),
                                    // Color for "expand"
                                  ),
                                ),
                                TextSpan(
                                  text: "feeds!",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(
                                        255, 75, 91, 234), // Color for "feeds"
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    // For web view, display both parts in one line
                    return Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "We’re Working to ",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 143, 142, 142),
                                ),
                              ),
                              TextSpan(
                                text: "expand ",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 143, 142, 142),
// Color for "expand"
                                ),
                              ),
                              TextSpan(
                                text: "feeds!",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 75, 91,
                                      234), // Different color for "feeds"
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.orange,
                      size: 18,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: " from ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 143, 142, 142),
                            ),
                          ),
                          TextSpan(
                            text: "ShareInfo",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 231, 142, 8),
                            ),
                          ),
                          TextSpan(
                            text: " community team ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 143, 142, 142),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
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

final List<Map<String, dynamic>> bookmarkList = [
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
