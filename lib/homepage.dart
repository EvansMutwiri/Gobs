import 'package:flutter/material.dart';
import 'package:jobs/utils/job_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(height: 25),

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
          const SizedBox(height: 50),

          //job cards -for you
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'For you',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),

          const SizedBox(height: 25),

          //recently add -job tiles
          Container(
            height: 140,
            // color: Colors.red[200],
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const JobCard(
                    companyName: 'Adidas',
                    jobTitle: 'UI/UX Designer',
                    salary: 1000,
                    logoImage: 'lib/icons/uber.png',
                  );
                }),
          )
        ],
      ),
    );
  }
}
