import 'package:flutter/material.dart';

class RecentlyAddedCard extends StatelessWidget {
  // const RecentlyAddedCard({ Key? key }) : super(key: key);

  final String jobTitle;
  final String companyName;
  final String logoImage;
  final int salary;

  const RecentlyAddedCard(
      {required this.jobTitle,
      required this.companyName,
      required this.logoImage,
      required this.salary});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[200],
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(4)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  child: Image.asset(logoImage),
                ),

                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Text(
                      jobTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 4),
                    Text(companyName, style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.green[200], borderRadius: BorderRadius.circular(2)),
              child: Text('\$ '+salary.toString() + '/hr')),
          ],
        ),
      ),
    );
  }
}
