import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_image.png'),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              width: 46,
              height: 46,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                child: SvgPicture.asset('assets/icons/camera_icon.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
