import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profilim",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.purple,
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            CircleAvatar(
              radius: 50.0,
              child: Text(
                "MA",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 25.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Müşteri Adı",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  CustomButton(
                    title: "Bilgilerim",
                    iconData: Icons.person,
                  ),
                  CustomButton(
                    title: "Bildirimler",
                    iconData: Icons.notifications,
                  ),
                  CustomButton(
                    title: "Mesajlar",
                    iconData: Icons.message,
                  ),
                  CustomButton(
                    title: "Hatırlatmalar",
                    iconData: Icons.calendar_month,
                  ),
                  CustomButton(
                    title: "Ayarlar",
                    iconData: Icons.settings,
                  ),
                  CustomButton(
                    title: "Destek Merkezi",
                    iconData: Icons.help,
                  ),
                  CustomButton(
                    title: "Belgelerim",
                    iconData: Icons.folder,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                "Güvenli Çıkış",
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    required this.iconData,
    super.key,
  });

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 50.0,
        width: MediaQuery.sizeOf(context).width * 0.85,
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              size: 30.0,
              color: Colors.purple,
            ),
            const SizedBox(
              width: 30.0,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
