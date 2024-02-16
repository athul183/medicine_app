import 'package:flutter/material.dart';
import 'package:medicine_app/components/input-fields.dart';
import 'package:medicine_app/pages/profile_page.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({
    super.key,
    required this.profileImage,
  });

  final String profileImage;
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailIDController = TextEditingController();

  void submitProfile(BuildContext context) {
    Navigator.of(context).pop(
      MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04516f),
      appBar: AppBar(
        backgroundColor: const Color(0xff04516f),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,

        // automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 80,
              backgroundColor: const Color(0xff15c79a),
              child: CircleAvatar(
                radius: 78,
                backgroundImage: AssetImage(profileImage),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InputFields(
                        inputController: nameController,
                        hintTxt: 'Full Name',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputFields(
                        inputController: phoneNumberController,
                        hintTxt: 'Phone Number',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InputFields(
                        inputController: emailIDController,
                        hintTxt: 'Email ID',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 45,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            submitProfile(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff15c79a),
                          ),
                          child: const Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
