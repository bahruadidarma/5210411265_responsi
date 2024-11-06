import 'package:flutter/material.dart';
import 'profile_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  Widget _buildProfileSection() {
    return Container(
      width: 132,
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xFFECE6F0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Image.asset(
              'assets/images/image_anonymous.png',
              width: 116,
              height: 119,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Nama Lengkap',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1D1B20),
            ),
          ),
          const Text(
            'Asal Universitas',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: Color(0xFFFEF7FF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontSize: 28,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Image.asset(
              'assets/icons/icon_arrow.png',
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Center(child: _buildProfileSection()),
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFEF7FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    _buildMenuItem('Kelola Akun', onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    }),
                    _buildMenuItem('Notifikasi', onTap: () {
                      // Belum ada
                    }),
                    _buildMenuItem('Privacy Policy', onTap: () {
                      // Belum ada
                    }),
                    _buildMenuItem('Terms of Service', onTap: () {
                      // Belum ada
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
