import 'package:flutter/material.dart';
import 'package:medicine_app/pages/change_password_page.dart';
import 'package:medicine_app/pages/edit_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String name = 'John Winston';
  final String profileImage = 'assets/images/profile_image.jpg';

  void changePassword(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChangePasswordPage(),
      ),
    );
  }

  void logOut() {}

  void editProfile(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditProfilePage(profileImage: profileImage),
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
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
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
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffffffff),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  editProfile(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff15c79a),
                ),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        changePassword(context);
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.key,
                          size: 40,
                          color: Color(0xff15c79a),
                        ),
                        title: Text(
                          'Change Password',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: logOut,
                      child: const ListTile(
                        leading: Icon(
                          Icons.logout_outlined,
                          size: 40,
                          color: Color(0xff15c79a),
                        ),
                        title: Text(
                          'LogOut',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
