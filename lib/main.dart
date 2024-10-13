import 'package:flutter/material.dart';
import 'package:pd_main/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Nunito')),
        home: const Home());
  }
}
//  const Row(
//                       children: [
//                         Expanded(
//                           child: Text(
//                             "Designers as Problem Solvers - Industry Stories",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600,
//                               color: Color(0xff4141ECA),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),
//                     const Divider(color: Colors.grey, thickness: 1, height: 20),
//                     const SizedBox(height: 10),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             height: 60,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 ClipOval(
//                                   child: Container(
//                                     width: 50,
//                                     height: 50,
//                                     child: Image.asset(
//                                       'assets/images/ello.png',
//                                       fit: BoxFit.fitHeight,
//                                     ),
//                                   ),
//                                 ),
//                                 const Padding(
//                                   padding: EdgeInsets.only(top: 5, left: 5),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsets.only(right: 55),
//                                         child: Text(
//                                           'James Hok',
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             fontWeight: FontWeight.w700,
//                                             color: Color(0xff414ECA),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(height: 5),
//                                       Text(
//                                         'UIUX Designer at Google',
//                                         style: TextStyle(
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w600,
//                                           color: Color(0xff8B8B8B),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const SizedBox(width: 60),
//                                 ElevatedButton(
//                                   onPressed: () {
//                                     // Define what happens when the button is pressed
//                                   },
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(
//                                         0xff414ECA), // Background color
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(
//                                           30), // Rounded corners
//                                     ),
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 8, horizontal: 18), // Padding
//                                   ),
//                                   child: const Text(
//                                     "Follow",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 20),
//                     const Divider(color: Colors.grey, thickness: 1, height: 20),

//                     //////////////////////////////////////////
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           decoration: BoxDecoration(
//                             shape: BoxShape.rectangle,
//                             border: Border.all(
//                                 color: const Color(0xff4114ECA), width: 1),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           height: 30,
//                           width: 85,
//                           child: const Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text('Designs',
//                                   style: TextStyle(
//                                       color: Color(0xff4114ECA),
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w600)),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         const Text("3 Days Ago",
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.w700,
//                               color: Color(0xff8B8B8B),
//                             ))
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),

//                     ////////////////
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Designers are the ultimate problem solvers. They don't just create beautiful objects or user interfaces; they tackle challenges faced by businesses, users, and society as a whole. Here, we'll delve into the world of design through real-world stories that showcase this problem-solving spirit:",
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Color.fromARGB(255, 71, 70, 70),
//                             height: 1.5,
//                           ),
//                         ),
//                         SizedBox(height: 10),
//                         DesignStory(
//                           number: 1,
//                           title: "Redesigning the Hospital Experience",
//                           content:
//                               "Imagine a bustling hospital emergency room. Amidst the chaos, a designer observes the long wait times and patient frustration. They identify the problem: a confusing layout and lack of clear communication. Their solution? Redesigning the waiting area with clear signage, visual cues, and interactive displays. This not only reduces stress but also empowers patients to navigate the system more effectively.",
//                         ),
//                         DesignStory(
//                           number: 2,
//                           title: "Making Education Accessible",
//                           content:
//                               "In a developing country, a designer encounters the issue of limited access to educational resources. They understand the challenge: geographically dispersed schools and a lack of technology. Their response? Designing low-cost, interactive learning tools that utilize local materials and can function offline. This empowers remote schools to deliver engaging education even with limited resources.",
//                         ),
//                         DesignStory(
//                           number: 3,
//                           title: "Sustainable Packaging Solutions",
//                           content:
//                               "A product designer witnesses the growing problem of plastic waste. They recognize the need for eco-friendly packaging alternatives. Their answer? Developing innovative packaging solutions made from recycled materials or even edible components. This not only reduces environmental impact but also enhances brand image and consumer trust.",
//                         ),
//                         DesignStory(
//                           number: 4,
//                           title: "Redefining Urban Mobility",
//                           content:
//                               "Traffic congestion and air pollution plague a major city. A transportation designer takes note. They address the issue by creating user-friendly, electric bike-sharing systems. This not only promotes sustainable transportation but also encourages healthier lifestyles and reduces reliance on cars.",
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           "These successful solutions often stem from a core design principle: design thinking. This human-centered approach involves:",
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xff5E5E5E),
//                             height: 1.5,
//                           ),
//                         ),
//                         BulletList(
//                           items: [
//                             "Empathizing: Understanding the needs and challenges of the target audience.",
//                             "Defining: Clearly outlining the problem that needs solving.",
//                             "Ideating: Brainstorming a wide range of potential solutions.",
//                             "Prototyping: Creating testable versions of the solutions.",
//                             "Testing: Gathering feedback to refine and improve the solution."
//                           ],
//                         ),
//                         SizedBox(height: 20),
//                         Text(
//                           "Designers are more than just creators; they are strategic problem solvers who have the power to make a positive impact on the world. By understanding user needs, employing design thinking, and constantly iterating, they craft solutions that not only look good but also function well and create a better future.",
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xff5E5E5E),
//                             height: 1.5,
//                           ),
//                         ),
//                       ],
//                     ),

//                     /////////////////////
//                     const Divider(
//                       color: Colors.grey,
//                       thickness: 1,
//                       height: 20,
//                     ),
//                     SizedBox(
//                         height: MediaQuery.of(context).size.height *
//                             0.02), // 3% of the screen height
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment
//                           .spaceBetween, // Spread content across available space
//                       children: [
//                         const Text(
//                           'Comments(10)',
//                           style: TextStyle(
//                               color: Color(0xff414ECA),
//                               fontSize: 20,
//                               fontWeight: FontWeight.w700),
//                         ),
//                         Spacer(),
//                         InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const Comments()));
//                           },
//                           child: const Icon(Icons.arrow_forward,
//                               size: 25, color: Color(0xff8B8B8B)),
//                         ),
//                       ],
//                     ),