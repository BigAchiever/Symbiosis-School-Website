import 'package:flutter/material.dart';

import 'text_buttons.dart';

class ContactUsCard extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  ContactUsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 4,
            offset: Offset(-8, 8),
            blurRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please complete this enquiry form and hit submit. We’ll get back to you in 48 hours, tops!',
              style: TextStyle(
                fontSize: size.width / 80,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'First Name',
                        style: TextStyle(
                          fontFamily: "Dan Sirf Bold",
                          fontWeight: FontWeight.normal,
                          fontSize: size.width / 80,
                        ),
                      ),
                      const SizedBox(height: 10),
                      StyledTextFormField(
                        controller: firstNameController,
                        hintText: 'First Name',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }

                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Last Name',
                        style: TextStyle(
                          fontFamily: "Dan Sirf Bold",
                          fontWeight: FontWeight.normal,
                          fontSize: size.width / 80,
                        ),
                      ),
                      const SizedBox(height: 10),
                      StyledTextFormField(
                        controller: lastNameController,
                        hintText: 'Last Name',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }

                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Email Address',
              style: TextStyle(
                fontFamily: "Dan Sirf Bold",
                fontWeight: FontWeight.normal,
                fontSize: size.width / 80,
              ),
            ),
            const SizedBox(height: 10),
            StyledTextFormField(
              controller: emailController,
              hintText: 'Email Address',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email address';
                }

                return null;
              },
            ),
            const SizedBox(height: 30),
            Text(
              'Message Box',
              style: TextStyle(
                fontFamily: "Dan Sirf Bold",
                fontWeight: FontWeight.normal,
                fontSize: size.width / 80,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height / 5,
              child: StyledTextFormField(
                controller: messageController,
                hintText: 'Write your Feedback/Enquiry here',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }

                  return null;
                },
                maxLines: 6,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: size.width / 14,
                  height: size.height / 18,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Submitted!');
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors
                                  .black; // Change to black when hovered
                            }
                            return const Color(0xffFFCD02); // color (green)
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (states) {
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(
                                  0xffFFCD02); //  green when hovered
                            }
                            return Colors.black;
                          },
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Text(
                        'Submit'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width / 80,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
