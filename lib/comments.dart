import 'package:flutter/material.dart';
import 'package:pd_main/articles/articledet.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onHeadingTapped(int pageIndex) {
    setState(() {
      _selectedIndex = pageIndex;
    });
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ArticDet()),
            );
          },
          child:
              const Icon(Icons.arrow_back, size: 30, color: Color(0xff260446)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined, size: 28),
            color: const Color(0xff414eca),
          ),
        ],
      ),
      body: Column(
        children: [
          // Responsive Headings (Tabs)
          // Responsive Headings (Tabs)
          LayoutBuilder(
            builder: (context, constraints) {
              bool isMobile =
                  constraints.maxWidth < 600; // Define your breakpoint
              return Padding(
                padding: EdgeInsets.only(
                    left: isMobile ? 0.0 : 20.0), // Left padding for web view
                child: Row(
                  mainAxisAlignment: isMobile
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.start,
                  children: [
                    _buildHeadingButton(0, 'Top', isMobile),
                    SizedBox(
                        width: isMobile ? 8.0 : 18.0), // Gap between buttons
                    _buildHeadingButton(1, 'Newest', isMobile),
                    SizedBox(
                        width: isMobile ? 8.0 : 16.0), // Gap between buttons
                    _buildHeadingButton(2, 'Oldest', isMobile),
                  ],
                ),
              );
            },
          ),

          const SizedBox(height: 10),
          // PageView for the content
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                _buildCommentsPage(context, 'Comments top'),
                _buildCommentsPage(context, 'Feedback newest'),
                _buildCommentsPage(context, 'Reviews oldest'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeadingButton(int index, String text, bool isMobile) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              isMobile ? 8.0 : 0.0), // Adjust padding based on device type
      child: SizedBox(
        width: isMobile ? 100 : 120, // Adjust width based on device type
        child: ElevatedButton(
          onPressed: () => _onHeadingTapped(index),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: isMobile
                    ? 10.0
                    : 12.0), // Reduced padding for smaller button
            foregroundColor: _selectedIndex == index
                ? const Color(0xff414ECA)
                : Colors.white,
            backgroundColor: _selectedIndex == index
                ? Colors.white
                : const Color(0xff414ECA),
            side: _selectedIndex == index
                ? const BorderSide(color: Color(0xff414ECA), width: 2)
                : BorderSide.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCommentsPage(BuildContext context, String heading) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
          padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    const Text(" John S",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff414ECA),
                        )),
                    const Spacer(),
                    const Icon(
                      Icons.more_vert,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Great article! The story about redesigning the hospital ER really resonated with me. As someone who's been on both sides of that experience, good design can truly make a difference in stressful situations. Would love to hear more stories about design in healthcare!",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff76B6C6B),
                    height: 1.5,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 20),
                    SizedBox(width: 5),
                    Text("356",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff76B6C6B),
                        )),
                    SizedBox(width: 25),
                    Text("1 day ago",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff76B6C6B),
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 20,
                ),
                const SizedBox(height: 10),
              ],
            );
          },
        ),
        persistentFooterButtons: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.02, // 2% of the screen width
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 199, 198, 198),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // Increase this percentage to make the text field wider
                  width: MediaQuery.of(context).size.width *
                      0.74, // 80% of the screen width
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
