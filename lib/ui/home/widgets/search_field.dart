import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lecturer_info/application/search_text_provider.dart';
import 'package:lecturer_info/utils/debouncer.dart';

class SearchField extends HookConsumerWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final debouncer = useDebouncer();

    return TextField(
        onChanged: (value) {
          debouncer(() {
            ref.read(searchTextProvider.notifier).state = value;
          });
        },
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
            borderSide: BorderSide.none,
          ),
          hintText: 'بحث...',
          prefixIcon: Icon(Icons.search),
        ));
  }
}
