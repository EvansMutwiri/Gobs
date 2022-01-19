import 'package:flutter/material.dart';
import 'package:jobs/utils/job_card.dart';
import 'package:jobs/utils/recently_added_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    ['Uber', 'UI/UX Designer', 'lib/icons/uber.png', 45],
    ['Google', 'Tech Lead', 'lib/icons/google.png', 80],
    ['Apple', 'Product Designer', 'lib/icons/apple.png', 66],
    ['Adidas', 'Software Eng.', 'lib/icons/adidas.png', 50],
  ];

  final List recentyAdded = [
    ['Nike', 'UI/UX Designer', 'lib/icons/nike.png', 65],
    ['Apple', 'Tech Lead', 'lib/icons/apple.png', 80],
    ['Apple', 'Product Designer', 'lib/icons/apple.png', 66],
    ['Google', 'Software Eng.', 'lib/icons/google.png', 50],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.down,
        children: [
          const SizedBox(height: 75),
          //appbar
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[300]),
              child: Image.asset('lib/icons/paragraph.png'),
            ),
          ),

          const SizedBox(height: 25),

          //discover new jobs

          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Discover your path',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          const SizedBox(height: 24),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 24,
                            child: Image.asset('lib/icons/search.png'),
                            color: Colors.grey[200],
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search for a job.."),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 48,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('lib/icons/filter.png',
                        color: Colors.white),
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),

          //job cards -for you
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'For you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),

          const SizedBox(height: 25),

          //job cards
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SizedBox(
              height: 140,
              // color: Colors.red[200],
              child: ListView.builder(
                  itemCount: jobsForYou.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return JobCard(
                      // ['Uber', 'UI/UX Designer', 'lib/icons/uber.png', 45]
                      companyName: jobsForYou[index][0],
                      jobTitle: jobsForYou[index][1],
                      salary: jobsForYou[index][3],
                      logoImage: jobsForYou[index][2],
                    );
                  }),
            ),
          ),

          const SizedBox(height: 25),

          //recently added -job tiles
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Recently added',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          // const SizedBox(height: 25),

          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.builder(
                itemCount: recentyAdded.length,
                itemBuilder: (context, index) {
                  return RecentlyAddedCard(
                    companyName: recentyAdded[index][0],
                    jobTitle: recentyAdded[index][1],
                    logoImage: recentyAdded[index][2],
                    salary: recentyAdded[index][3],
                  );
                }),
          )
          )
        ],
      ),
    );
  }
}
