import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            style: IconButton.styleFrom(
            backgroundColor: Colors.grey.shade300,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            )),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(width: 24),
          Text(
            'اضافة',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => this;
}
