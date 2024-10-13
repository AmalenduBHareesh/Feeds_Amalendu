import 'package:flutter/material.dart';
import 'package:pd_main/feeds.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size for responsive design
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            // Custom header with back arrow and search bar
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Feeds()));
                  },
                  child: const Icon(Icons.arrow_back,
                      size: 30, color: Color(0xff434343)),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0x7fd9d9d9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(126, 69, 69, 69),
                          size: 25,
                        ),
                        hintText: "search something here..!",
                        hintStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xaf8B8B8B),
                        ),
                        border:
                            InputBorder.none, // Removes the default underline
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0,
                          horizontal: 5,
                        ), // Padding inside the TextField
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                Text("0 found",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff260446)))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenSize.height * 0.2), // Responsive padding
              child: Center(
                child: Image.asset(
                  'assets/images/gif2.gif',
                  width: screenSize.width * 0.6, // Responsive width
                  height: screenSize.height * 0.25, // Responsive height
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not Found",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff260446)))
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Sorry. the keyword you entered cannot be found.\nPlease check again or search with another\nkeyword.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff8B8B8B),
                      height: 1.5, // Adjust the height as needed
                    ),
                    textAlign: TextAlign.center, // Centers the text lines
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
