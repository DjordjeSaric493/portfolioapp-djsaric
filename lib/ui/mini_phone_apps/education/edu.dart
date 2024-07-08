import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioapp_test/model/edu_model.dart';
import 'package:portfolioapp_test/utils/data_constants/edu_data.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Center(
            child: Icon(
              Icons.badge_outlined,
              size: 100,
              color: Colors.blueAccent,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(myEdu.length, (index) {
            MyEdu education = myEdu[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, Colors.grey[100]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ExpansionTile(
                tilePadding: const EdgeInsets.all(20),
                childrenPadding: const EdgeInsets.all(10),
                leading: Container(
                  width: 5,
                  height: 100,
                  decoration: BoxDecoration(
                    color: education.color,
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                ),
                title: Text(
                  education.title,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    '${education.school}\n${education.startDate} - ${education.endDate} | ${education.location}',
                    style: GoogleFonts.inter(fontSize: 13, color: Colors.grey),
                  ),
                ),
                children: education.bulletPoints.map((bulletPoint) {
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15.0),
                    title: Row(
                      children: [
                        Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              children: [bulletPoint],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
