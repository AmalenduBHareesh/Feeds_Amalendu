import 'package:flutter/material.dart';
import 'package:pd_main/feeds.dart';

class Confirm extends StatelessWidget {
  const Confirm({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final size = MediaQuery.of(context).size;

    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
              width: size.width * 0.8, // Make width responsive
              height: size.height * 0.25, // Make height responsive
              child: Image.asset('assets/images/gif1.gif'),
            ),
            const SizedBox(height: 20), // Added a bit more space
            const Center(
              child: Text(
                'You\'re all Set to Go!',
                style: TextStyle(
                  color: Color(0xff414ECA),
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text(
                'Now You Can Explore',
                style: TextStyle(
                  color: Color(0xff414ECA),
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Feeds by ShareInfo ',
                      style: TextStyle(
                        color: Color(0xffEE5602),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'for ',
                      style: TextStyle(
                        color: Color(0xff414ECA),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'FREE !',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        persistentFooterButtons: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Feeds()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xff414ECA),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: size.height * 0.07, // Make height responsive
                    width: size.width * 0.8, // Make width responsive
                    child: const Center(
                      child: Text(
                        "Get Started",
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
}
