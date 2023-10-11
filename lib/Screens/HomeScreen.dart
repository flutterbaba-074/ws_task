import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> homeworkList = [
    "English_speaking\nmeeting.docx",
    "German_writing\nnotes.docx",
    "English_speaking\nmeeting.docx",
    "Hindi_speaking\nmeeting.docx",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: SizedBox(
                  height: 210,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        alignment: Alignment.topCenter,
                        width: double.maxFinite,
                        height: 155,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/images/time.jpg",
                                )),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.black,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "Profile",
                              style: GoogleFonts.mPlus1(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 1.2,
                                        backgroundColor: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      CircleAvatar(
                                        radius: 1.2,
                                        backgroundColor: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      CircleAvatar(
                                        radius: 1.2,
                                        backgroundColor: Colors.black,
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          left: 110,
                          child: Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(
                                  0.01,
                                ),
                                border: Border.all(
                                    color: Colors.white,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    style: BorderStyle.solid,
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Center(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1541516160071-4bb0c5af65ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGdpcmwlMjB3aXRoJTIwY2FtZXJhfGVufDB8fDB8fHww&w=1000&q=80"),
                                radius: 44,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Angelica Melli",
                    style: GoogleFonts.mPlus1(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.blueGrey,
                        child: Icon(
                          UniconsLine.location_point,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Venice, Italy",
                        style: GoogleFonts.mPlus1(
                          // fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.blueGrey,
                        child: Icon(
                          Icons.cake,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Age 26",
                        style: GoogleFonts.mPlus1(
                          // fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 20,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Regular",
                            style: GoogleFonts.mPlus1(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Angelica's Note",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Etiam id dolar ex. Vivamus lobortis varius tortor, the elementum eleifend ligula tincidunt eget. Mauris ut semper odio. Etiam at justo a masssa.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.mPlus1(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Etiam id dolor ex. Vivamus lobortis varius tortor, the elementum eleifend ligula tincidunt eget. Mauris ut.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.mPlus1(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Homework",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 110,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: homeworkList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? 30 : 15,
                            right: index == homeworkList.length - 1 ? 30 : 0),
                        child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                fixedSize: const Size(130, 100)),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    "assets/images/fold.jpg",
                                    height: 45,
                                    width: 55,
                                  ),
                                  Text(
                                    homeworkList[index],
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mPlus1(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff32357C)
                                            .withOpacity(0.9)),
                                  )
                                ],
                              ),
                            )),
                      );
                    }),
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 0.3,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/bg.jpg",
                              height: 26,
                              width: 26,
                              // color: const Color(0xff32357C).withOpacity(0.5),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Premium",
                              style: GoogleFonts.mPlus1(
                                  fontSize: 16,
                                  color: const Color(0xff32357C),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    width: 18,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xff32357C),
                        fixedSize: const Size(190, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 2),
                        child: Text(
                          "Get Detail",
                          style: GoogleFonts.mPlus1(
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.75),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}