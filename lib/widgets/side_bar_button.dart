import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
  final String buttonText;
  final GestureTapCallback onTap;
  const SideBarButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xff825432),
        ),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText.toUpperCase(),
            style: const TextStyle(
              color: Color(0xFFf9ffff),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
