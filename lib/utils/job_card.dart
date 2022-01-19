import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  // const JobCard({ Key? key }) : super(key: key);
  final String jobTitle;
  final String companyName;
  final String logoImage;
  final int salary;

  // ignore: use_key_in_widget_constructors
  const JobCard(
      {required this.jobTitle,
      required this.companyName,
      required this.logoImage,
      required this.salary});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 250,
          padding: const EdgeInsets.all(12),
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    child: Image.asset(logoImage),
                  ),
                  // Text('Part Time'),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(4),
                      
                    ),
                    child: const Text('Part Time')),
                    
                ],
              ),
              Text(jobTitle, 
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              
              Text("\$"+salary.toString()+ "/hr"),
            ],
          ),
        ),
      ),
    );
  }
}
