import 'package:fpdart/fpdart.dart';
import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:lecturer_info/utils/failure.dart';

abstract class ILecturerRepository {
  Either<Failure, Future<int>> insert({required Lecturer lecturer});
  Either<Failure, Future<int>> update({required Lecturer lecturer});
  Either<Failure, Future<int>> delete({required int id});
  Either<Failure, Future<Lecturer>> getLecturer({required int id});
  Either<Failure, Stream<List<Lecturer>>> watchLecturers({
    required String search,
  });
}
