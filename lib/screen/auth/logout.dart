import 'package:car_rental/screen/auth/authscreen.dart';
import 'package:car_rental/widgets/global.dart';
import 'package:flutter/material.dart';

class LogoutDialog extends StatefulWidget {
  const LogoutDialog({Key? key}) : super(key: key);

  @override
  State<LogoutDialog> createState() => _LogoutDialogState();
}

class _LogoutDialogState extends State<LogoutDialog> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Confirm Logout"),
      content: Text("Do you want to logout?"),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Logout'),
          onPressed: () async {
            await firebaseAuth.signOut().then((value) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AuthSCreen(),
                ),
              );
            });
          },
        )
      ],
    );
  }
}
