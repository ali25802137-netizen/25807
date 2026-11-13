import '../errors/app_errors.dart';

abstract interface class BaseRepository<T> {
  Future<Result<T>> getById(int id);
  Future<Result<List<T>>> getAll();
}
