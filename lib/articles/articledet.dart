import 'package:flutter/material.dart';
import 'package:pd_main/comments.dart';
import 'package:pd_main/discover.dart';

class ArticDet extends StatelessWidget {
  const ArticDet({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.4, // 40% of screen height
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Image.asset(
                    'assets/images/back1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 16,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Discover()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 100,
                  child: Icon(
                    Icons.bookmarks_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const Positioned(
                  top: 20,
                  right: 55,
                  child: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              bottom: MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "Delete Article",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.grey.shade300,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  "Are You Sure Want to Delete \n this Article ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff260446),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xffE4E7FC),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          fixedSize: const Size(128, 50),
                                        ),
                                        child: const Text(
                                          "Cancel",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff414ECA),
                                          ),
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add your save action here
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff414ECA),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          fixedSize: const Size(125, 50),
                                        ),
                                        child: const Text(
                                          "Yes, Delete",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Designers as Problem Solvers - Industry Stories",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4141ECA),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.grey, thickness: 1, height: 20),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                      'assets/images/ello.png',
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 5, left: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 55),
                                        child: Text(
                                          'James Hok',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff414ECA),
                                          ),
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
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    // Define what happens when the button is pressed
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xff414ECA), // Background color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), // Rounded corners
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 18), // Padding
                                  ),
                                  child: const Text(
                                    "Follow",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.grey, thickness: 1, height: 20),

                    //////////////////////////////////////////
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(
                                color: const Color(0xff4114ECA), width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 30,
                          width: 85,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Designs',
                                  style: TextStyle(
                                      color: Color(0xff4114ECA),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("3 Days Ago",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff8B8B8B),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    ////////////////
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Designers are the ultimate problem solvers. They don't just create beautiful objects or user interfaces; they tackle challenges faced by businesses, users, and society as a whole. Here, we'll delve into the world of design through real-world stories that showcase this problem-solving spirit:",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 71, 70, 70),
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 10),
                        DesignStory(
                          number: 1,
                          title: "Redesigning the Hospital Experience",
                          content:
                              "Imagine a bustling hospital emergency room. Amidst the chaos, a designer observes the long wait times and patient frustration. They identify the problem: a confusing layout and lack of clear communication. Their solution? Redesigning the waiting area with clear signage, visual cues, and interactive displays. This not only reduces stress but also empowers patients to navigate the system more effectively.",
                        ),
                        DesignStory(
                          number: 2,
                          title: "Making Education Accessible",
                          content:
                              "In a developing country, a designer encounters the issue of limited access to educational resources. They understand the challenge: geographically dispersed schools and a lack of technology. Their response? Designing low-cost, interactive learning tools that utilize local materials and can function offline. This empowers remote schools to deliver engaging education even with limited resources.",
                        ),
                        DesignStory(
                          number: 3,
                          title: "Sustainable Packaging Solutions",
                          content:
                              "A product designer witnesses the growing problem of plastic waste. They recognize the need for eco-friendly packaging alternatives. Their answer? Developing innovative packaging solutions made from recycled materials or even edible components. This not only reduces environmental impact but also enhances brand image and consumer trust.",
                        ),
                        DesignStory(
                          number: 4,
                          title: "Redefining Urban Mobility",
                          content:
                              "Traffic congestion and air pollution plague a major city. A transportation designer takes note. They address the issue by creating user-friendly, electric bike-sharing systems. This not only promotes sustainable transportation but also encourages healthier lifestyles and reduces reliance on cars.",
                        ),
                        SizedBox(height: 20),
                        Text(
                          "These successful solutions often stem from a core design principle: design thinking. This human-centered approach involves:",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5E5E5E),
                            height: 1.5,
                          ),
                        ),
                        BulletList(
                          items: [
                            "Empathizing: Understanding the needs and challenges of the target audience.",
                            "Defining: Clearly outlining the problem that needs solving.",
                            "Ideating: Brainstorming a wide range of potential solutions.",
                            "Prototyping: Creating testable versions of the solutions.",
                            "Testing: Gathering feedback to refine and improve the solution."
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Designers are more than just creators; they are strategic problem solvers who have the power to make a positive impact on the world. By understanding user needs, employing design thinking, and constantly iterating, they craft solutions that not only look good but also function well and create a better future.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5E5E5E),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),

                    /////////////////////
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 20,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height *
                            0.01), // 3% of the screen height
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceBetween, // Spread content across available space
                      children: [
                        const Text(
                          'Comments(10)',
                          style: TextStyle(
                              color: Color(0xff414ECA),
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Comments()));
                          },
                          child: const Icon(Icons.arrow_forward,
                              size: 25, color: Color(0xff8B8B8B)),
                        ),
                      ],
                    ),
                    /////////////////////
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 50, // Responsive width
                            height: 50, // Responsive height
                            child: Image.asset(
                              'assets/images/ello.png',
                              fit: BoxFit
                                  .cover, // Change to cover for better image fitting
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Responsive spacing
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "John S",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff414ECA),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(), // Pushes the icon to the end
                        const Icon(
                          Icons.more_vert,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          // Use Expanded to make the text responsive
                          child: Text(
                            "Great article! The story about redesigning the hospital ER really resonated with me. As someone who's been on both sides of that experience, good design can truly make a difference in stressful situations. Would love to hear more stories about design in healthcare!",
                            style: TextStyle(
                              fontSize: 12, // Responsive font size
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff76B6C6B),
                              height: 1.5,
                            ),
                            overflow:
                                TextOverflow.visible, // Handle text overflow
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.favorite, color: Colors.red, size: 20),
                        SizedBox(width: 5),
                        Text(
                          "356",
                          style: TextStyle(
                            fontSize: 12, // Responsive font size
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff76B6C6B),
                          ),
                        ),
                        SizedBox(
                            width: screenWidth * 0.05), // Responsive spacing
                        Text(
                          "1 day ago",
                          style: TextStyle(
                            fontSize: 12, // Responsive font size
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff76B6C6B),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 20,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 50, // Responsive width
                            height: 50, // Responsive height
                            child: Image.asset(
                              'assets/images/ello.png',
                              fit: BoxFit
                                  .cover, // Change to cover for better image fitting
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Responsive spacing
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "John S",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff414ECA),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(), // Pushes the icon to the end
                        const Icon(
                          Icons.more_vert,
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          // Use Expanded to make the text responsive
                          child: Text(
                            "Great article! The story about redesigning the hospital ER really resonated with me. As someone who's been on both sides of that experience, good design can truly make a difference in stressful situations. Would love to hear more stories about design in healthcare!",
                            style: TextStyle(
                              fontSize: 12, // Responsive font size
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff76B6C6B),
                              height: 1.5,
                            ),
                            overflow:
                                TextOverflow.visible, // Handle text overflow
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      children: [
                        const Icon(Icons.favorite, color: Colors.red, size: 20),
                        SizedBox(width: 5),
                        Text(
                          "356",
                          style: TextStyle(
                            fontSize: 12, // Responsive font size
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff76B6C6B),
                          ),
                        ),
                        SizedBox(
                            width: screenWidth * 0.05), // Responsive spacing
                        Text(
                          "1 day ago",
                          style: TextStyle(
                            fontSize: 12, // Responsive font size
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff76B6C6B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    ////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/man.png',
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          // Change this to Expanded
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color.fromARGB(255, 199, 198, 198),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 50,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Add a Comment",
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff8B8B8B),
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.send,
                                    color: Color(0xff414ECA),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const Divider(
                      color: Colors.grey,
                      thickness: 2,
                      height: 20,
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    Row(
                      children: [
                        Text(
                          'More Articles Like This',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(), // Replaces the fixed SizedBox for responsiveness
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color(0xff8B8B8B),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(images.length, (index) {
                          double screenWidth =
                              MediaQuery.of(context).size.width;

                          return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors
                                  .white, // Ensure containers have a background color
                            ),
                            height: 260,
                            width: 175,
                            margin: const EdgeInsets.only(
                                right: 20), // Space between containers
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 175,
                                  height: 175,
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
                                          width: 175,
                                          height: 175,
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
                                const SizedBox(width: 17),
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
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

class DesignStory extends StatelessWidget {
  final int number;
  final String title;
  final String content;

  const DesignStory({
    Key? key,
    required this.number,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'Nunito',
            height: 1.5,
            color: Color(0xff5E5E5E),
          ),
          children: [
            TextSpan(
              text: "$number. $title: ",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: content,
            ),
          ],
        ),
      ),
    );
  }
}

class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Text(
                  '\u2022',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text(
                  item,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
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
