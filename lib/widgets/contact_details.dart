import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 20),
            _buildBranchDetails(
              branchName: "Symbiosis Higher Secondary School",
              address: "Adhartal, Jabalpur - 482004",
              phone: "0761 404 2089, 930 012 6308",
              email: "symbiosis.h.s.school@gmail.com",
            ),
            const SizedBox(width: 30),
            _buildBranchDetails(
              branchName: "Symbiosis Senior Secondary School",
              address: "Maharajpur, Jabalpur - 482004",
              phone: "0797 474 6744, 930 259 7884",
              email: "symbiosis.s.s.school@gmail.com",
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBranchDetails({
    required String branchName,
    required String address,
    required String phone,
    required String email,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          branchName,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: "Magic Brush",
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 10),
        Text(
          address,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const Icon(Icons.phone, size: 18),
            const SizedBox(width: 5),
            Text(
              phone,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const Icon(Icons.email, size: 18),
            const SizedBox(width: 5),
            Text(
              email,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
