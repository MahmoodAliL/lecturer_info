import 'package:flutter/material.dart';
import 'package:lecturer_info/ui/form/page.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 45,
      child: FilledButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const FormPage();
          }));
        },
        child: const Text('اضافة'),
      ),
    );
  }
}
