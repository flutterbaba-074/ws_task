import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unicons/unicons.dart';

class VerficationScreen extends StatefulWidget {
  VerficationScreen({super.key});

  @override
  State<VerficationScreen> createState() => _VerficationScreenState();
}

class _VerficationScreenState extends State<VerficationScreen> {
  final List<bool> flag = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 0.2),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_back_ios,
                            size: 12,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 75,
                    ),
                    Text(
                      "Verification",
                      style: GoogleFonts.mPlus1(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: DottedBorder(
                        borderType: BorderType.Circle,
                        dashPattern: const [10],
                        color: Colors.orange.withOpacity(0.5),
                        radius: const Radius.circular(150),
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(150),
                            // border: Border.all(
                            //   width: 1,
                            //   style: BorderStyle.solid,
                            // ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 165,
                      width: 165,
                      decoration: BoxDecoration(
                          color: Color(0xff123456).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    const CircleAvatar(
                      radius: 60,
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff32357C),
                      child: Icon(
                        Icons.phonelink_lock,
                        size: 50,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Verification Code",
                      style: GoogleFonts.mPlus1(
                          color: Color(0xff32357C).withOpacity(0.9),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "We have to sent the code verfication to Your Mobile Number",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mPlus1(
                        fontSize: 16,
                        color: Color(0xff32357C).withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[0] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                flag[0] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[0]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[1] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[1] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[1]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[2] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[2] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[2]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                flag[3] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[3] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[3]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 65,
                          width: 60,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                flag[4] = true;
                                setState(() {});
                              }
                              if (value.length == 0) {
                                FocusScope.of(context).previousFocus();
                                flag[4] = false;
                                setState(() {});
                              }
                            },
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            style: GoogleFonts.mPlus1(fontSize: 20),
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.withOpacity(0.1),
                              enabledBorder: OutlineInputBorder(
                                borderSide: flag[4]
                                    ? BorderSide(
                                    color:
                                    Color(0xff32357C).withOpacity(0.8),
                                    width: 2)
                                    : BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "+01-202-555-0102",
                          style: GoogleFonts.mPlus1(
                              fontSize: 24,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.3),
                              borderRadius: BorderRadius.circular(100)),
                          child: Icon(UniconsLine.edit_alt),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26)),
                      fixedSize: const Size(double.maxFinite, 50)),
                  child: Text(
                    "Send Again",
                    style: GoogleFonts.mPlus1(
                        color: Color(0xff32357C),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xff123456),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26)),
                      fixedSize: const Size(double.maxFinite, 50)),
                  child: Text(
                    "Submit",
                    style: GoogleFonts.mPlus1(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}