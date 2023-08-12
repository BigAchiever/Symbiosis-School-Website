import 'package:flutter/material.dart';

import '../../../layout/responsive.dart';
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
        color: ResponsiveLayout.isMobile(context)
            ? Colors.transparent
            : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: ResponsiveLayout.isMobile(context)
            ? null
            : Border.all(color: Colors.black, width: 2),
        boxShadow: [
          ResponsiveLayout.isMobile(context)
              ? const BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                  blurRadius: 0,
                )
              : const BoxShadow(
                  color: Colors.black,
                  spreadRadius: 4,
                  offset: Offset(-8, 8),
                  blurRadius: 0,
                ),
        ],
      ),
      child: Padding(
        padding: ResponsiveLayout.isMobile(context)
            ? const EdgeInsets.all(20)
            : const EdgeInsets.all(38.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please complete this enquiry form and hit submit. We’ll get back to you in 48 hours, tops!',
              style: TextStyle(
                fontSize: size.width / 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 30),
            ResponsiveLayout.isMobile(context)
                ? Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            style: TextStyle(
                              fontFamily: "Dan Sirf Bold",
                              fontWeight: FontWeight.normal,
                              fontSize: size.width / 20,
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
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
                            style: TextStyle(
                              fontFamily: "Dan Sirf Bold",
                              fontWeight: FontWeight.normal,
                              fontSize: size.width / 20,
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
                    ],
                  )
                : Row(
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
                                fontSize: size.width / 20,
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
                                fontSize: size.width / 20,
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
                fontSize: size.width / 20,
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
                fontSize: size.width / 20,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height / 4,
              width: size.width,
              child: StyledTextFormField(
                controller: messageController,
                hintText: 'Write your Feedback/Enquiry here',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }

                  return null;
                },
                maxLines: 10,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: ResponsiveLayout.isMobile(context)
                      ? size.width / 3
                      : size.width / 14,
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
                          fontSize: ResponsiveLayout.isMobile(context)
                              ? size.width / 20
                              : size.width / 18,
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
