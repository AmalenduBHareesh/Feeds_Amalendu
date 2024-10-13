import 'package:flutter/material.dart';
import 'package:pd_main/discover.dart';

class MyArt extends StatelessWidget {
  const MyArt({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: Drafts and Published
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 64,
          scrolledUnderElevation: 0,
          leadingWidth: 300,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Discover()),
                    );
                  },
                  child: const Icon(Icons.arrow_back,
                      size: 30, color: Color(0xff260446)),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'My Articles',
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      color: Color(0xff260446),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: const Color(0xff8B8B8B),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const TabBar(
                  indicatorColor: Color(0xff414ECA),
                  indicatorWeight: 2,
                  labelColor: Color(0xff414ECA),
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Color(0xff8B8B8B),
                  labelStyle: TextStyle(
                    fontSize: 20, // Active tab font size
                    fontWeight: FontWeight.bold, // Active tab font weight
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 18, // Inactive tab font size
                    fontWeight: FontWeight.w500, // Inactive tab font weight
                  ),
                  tabs: [
                    Tab(text: 'Drafts (15)'),
                    Tab(text: 'Published (27)'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: TabBarView(
            children: [
              // Drafts Section
              DraftsList(),
              // Published Section
              PublishedList(),
            ],
          ),
        ),
      ),
    );
  }
}

class DraftsList extends StatelessWidget {
  const DraftsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15, // Number of drafts
      itemBuilder: (context, index) {
        return articleCard(context); // Pass context for dynamic sizing
      },
    );
  }
}

class PublishedList extends StatelessWidget {
  const PublishedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 27, // Number of published articles
      itemBuilder: (context, index) {
        return articleCard(context); // Pass context for dynamic sizing
      },
    );
  }
}

Widget articleCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // Add a background color for better visibility
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Light shadow color
            spreadRadius: 0, // Minimal spread
            blurRadius: 3, // Mild blur for subtle shadow
            offset: Offset(0, 2), // Slightly offset the shadow downwards
          ),
        ],
      ),
      height: 125,
      width: MediaQuery.of(context).size.width * 0.9, // Make it responsive
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
                'assets/images/three.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "10 tips for Boosting your Productivity...",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *
                        0.04, // 4% of screen height
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Today',
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Color(0xff8B8B8B),
                              fontSize: 14,
                              fontWeight: FontWeight.w700)),
                      Row(
                        children: const [
                          Icon(
                            Icons.app_registration,
                            color: Color(0xff8B8B8B),
                            size: 20,
                          ),
                          SizedBox(width: 20),
                          Icon(
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
}
