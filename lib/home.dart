import 'package:flutter/material.dart';
import 'package:pd_main/confirm.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Set to keep track of selected topics
  final Set<String> _selectedTopics = {};

  // Helper function to calculate responsive font size
  double _getResponsiveFontSize(BuildContext context, double factor) {
    final screenWidth = MediaQuery.of(context).size.width;
    return factor * (screenWidth / 375); // Base width (e.g., iPhone 8)
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 64,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.white,
          elevation: 0,
          leadingWidth: 40, // Reduce the width for the leading widget
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Icon(Icons.arrow_back,
                size: 30, color: Color(0xff260446)),
          ),
          title: const Text(
            'Preferences',
            style: TextStyle(
              color: Color(0xff260446),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: false, // Ensures the title is aligned to the left
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20), // Responsive padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select your topic of Interest🔖',
                  style: TextStyle(
                    color: Color(0xff414ECA),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 10),
                Text(
                  'Select your topic of interest for better recommendations, or you can skip it',
                  style: const TextStyle(
                    color: Color(0xff414ECA),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 25),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 5,
                  runSpacing: 10,
                  children: [
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('Software Architecture'),
                    _buildTopicButton('Graph Algorithms'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Architecture'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Architecture'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Graph Algorithms'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('Graph Algorithms'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                  ],
                ),
              ],
            ),
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.03,
              bottom: screenHeight * 0.04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    // Handle Skip action here
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xffC5CAFA),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.35,
                    child: const Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff414ECA),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Confirm(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xff414ECA),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.45,
                    child: const Center(
                      child: Text(
                        "Continue",
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
          ),
        ],
      ),
    );
  }

  // Helper method to build the topic buttons
  Widget _buildTopicButton(String label) {
    final isSelected = _selectedTopics.contains(label);
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor:
            isSelected ? const Color(0xff414ECA) : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: isSelected ? Colors.transparent : const Color(0xff6F7BEC),
            width: 1.5,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {
        setState(() {
          if (isSelected) {
            _selectedTopics.remove(label); // Deselect if already selected
          } else {
            _selectedTopics.add(label); // Select if not already selected
          }
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min, // Keep the Row size to the minimum
        children: [
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xff6F7BEC),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (isSelected) ...[
            const SizedBox(width: 8), // Space between text and checkmark
            const Icon(
              Icons.check,
              color: Colors.white,
              size: 18, // Adjust the size of the checkmark icon
            ),
          ],
        ],
      ),
    );
  }
}
