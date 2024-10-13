import 'package:flutter/material.dart';
import 'package:pd_main/topwriters/topwropen1.dart';

class Follow extends StatelessWidget {
  const Follow({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
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
                MaterialPageRoute(builder: (context) => const TopOpen1()),
              );
            },
            child: const Icon(Icons.arrow_back,
                size: 30, color: Color(0xff260446)),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_outlined),
                iconSize: 30,
                color: const Color(0xff414ECA),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    fontSize: 16, // Inactive tab font size
                    fontWeight: FontWeight.w500, // Inactive tab font weight
                  ),
                  tabs: [
                    Tab(text: 'Followers'),
                    Tab(text: 'Following'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            FollowersTab(), // Widget for Followers
            FollowingTab(), // Widget for Following
          ],
        ),
      ),
    );
  }
}

class FollowersTab extends StatefulWidget {
  const FollowersTab({Key? key}) : super(key: key);

  @override
  _FollowersTabState createState() => _FollowersTabState();
}

class _FollowersTabState extends State<FollowersTab> {
  List<bool> isFollowed =
      List.generate(13, (index) => false); // Track follow status

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 20), // Reduced padding
      child: ListView.builder(
        itemCount: isFollowed.length,
        itemBuilder: (context, index) => _buildFollowerCard(context, index),
      ),
    );
  }

  Widget _buildFollowerCard(BuildContext context, int index) {
    bool followed = isFollowed[index]; // Track current follow status
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 2),
              blurRadius: 2,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            // Avatar
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage('assets/images/ello.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'James Hok',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff414ECA),
                    ),
                  ),
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
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFollowed[index] =
                      !isFollowed[index]; // Toggle follow status
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: followed
                        ? const Color(0xff414ECA)
                        : const Color(0xff414ECA), // Border color
                    width: 1.5,
                  ),
                  color: followed
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : const Color(
                          0xff414ECA), // Change color based on follow status
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 32,
                width: 92,
                child: Center(
                  child: Text(
                    followed ? "Following" : "Follow",
                    style: TextStyle(
                      fontSize: followed
                          ? 16
                          : 16, // Change font size based on follow status
                      fontWeight: followed ? FontWeight.bold : FontWeight.w600,
                      color: followed
                          ? const Color(0xff414ECA)
                          : const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FollowingTab extends StatefulWidget {
  const FollowingTab({Key? key}) : super(key: key);

  @override
  _FollowingTabState createState() => _FollowingTabState();
}

class _FollowingTabState extends State<FollowingTab> {
  List<bool> isFollowed =
      List.generate(13, (index) => true); // Initially followed

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 20), // Reduced padding
      child: ListView.builder(
        itemCount: isFollowed.length,
        itemBuilder: (context, index) => _buildFollowingCard(context, index),
      ),
    );
  }

  Widget _buildFollowingCard(BuildContext context, int index) {
    bool followed = isFollowed[index]; // Track current follow status
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, 2),
              blurRadius: 2,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            // Avatar
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage('assets/images/ello.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'James Hok',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff414ECA),
                    ),
                  ),
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
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFollowed[index] =
                      !isFollowed[index]; // Toggle follow status
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: followed
                        ? const Color(0xff414ECA)
                        : const Color(0xff414ECA), // Border color
                    width: 1.5,
                  ),
                  color: followed
                      ? const Color(0xff414ECA)
                      : const Color.fromARGB(255, 255, 255,
                          255), // Change color based on follow status
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 32,
                width: 92,
                child: Center(
                  child: Text(
                    followed ? "Unfollow" : "Follow",
                    style: TextStyle(
                      fontSize: followed
                          ? 16
                          : 16, // Change font size based on follow status
                      fontWeight: followed ? FontWeight.bold : FontWeight.w600,
                      color: followed
                          ? const Color.fromARGB(255, 255, 255, 255)
                          : const Color(0xff414ECA),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
