import 'package:flutter/material.dart';
import 'package:lecturer_info/ui/home/widgets/add_button.dart';
import 'package:lecturer_info/ui/home/widgets/lecturer_list.dart';
import 'package:lecturer_info/ui/home/widgets/page_title.dart';
import 'package:lecturer_info/ui/home/widgets/search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          constraints: const BoxConstraints(maxWidth: 1100),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PageTitle(),
              SizedBox(height: 56),
              Row(
                children: [
                  Expanded(child: SizedBox(height: 45, child: SearchField())),
                  SizedBox(width: 16),
                  AddButton(),
                ],
              ),
              SizedBox(height: 32),
              Expanded(
                child: LecturerList()
              ),
              Text('جامعة كربلاء - كلية العلوم الاسلامية - وحدة الموقع الاكتروني')
            ],
          ),
        ),
      ),
    );
  }
}
