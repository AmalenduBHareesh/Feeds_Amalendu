import 'package:flutter/material.dart';
import 'package:pd_main/feeds.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.2),
            child: Column(
              children: [
                ClipRect(
                  child: Align(
                    alignment: Alignment.topCenter,
                    heightFactor: 0.58,
                    child: Image.asset(
                      'assets/images/gif3.gif',
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.4,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "SUCCESSFULLY",
                    style: TextStyle(
                      fontSize: 18 *
                          MediaQuery.textScaleFactorOf(
                              context), // Scalable text size
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff414ECA),
                    ),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "PUBLISHED",
                    style: TextStyle(
                      fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.w900,
                      color: const Color(0xff414ECA),
                    ),
                  )
                ]),
                SizedBox(height: screenHeight * 0.01),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "We've Added",
                    style: TextStyle(
                      fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff414ECA),
                    ),
                  )
                ]),
                SizedBox(height: screenHeight * 0.01),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "20 Credits",
                    style: TextStyle(
                      fontSize: 24 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 239, 112, 21),
                    ),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "in Your",
                    style: TextStyle(
                      fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff414ECA),
                    ),
                  ),
                  Text(
                    " ShareInfo",
                    style: TextStyle(
                      fontSize: 16 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 239, 112, 21),
                    ),
                  ),
                  Text(
                    " Wallet",
                    style: TextStyle(
                      fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff414ECA),
                    ),
                  ),
                ]),
                SizedBox(height: screenHeight * 0.22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.send_outlined,
                      size: 18,
                      color: Color(0xff414ECA),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Text(
                      "Share your Article",
                      style: TextStyle(
                        fontSize: 14 * MediaQuery.textScaleFactorOf(context),
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff414ECA),
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              bottom: screenHeight * 0.03,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Feeds()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xff414ECA),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: screenHeight * 0.07, // Responsive height
                    width: screenWidth * 0.85, // Responsive width
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Explore ShareInfo Wallet",
                          style: TextStyle(
                            fontSize: 17,
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
        ],
      ),
    );
  }
}
