import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'id_provider.g.dart';

@riverpod
class LecturerId extends _$LecturerId {
  @override
  int build() {
    return -1;
  }

  update(int id) {
    state = id;
  }
}
