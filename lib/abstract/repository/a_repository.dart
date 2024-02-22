

abstract class ARepository<T> {
  Future<List<T>> getAll();

  Future<T?> getById(dynamic id);

  Future<void> create(T item);

  Future<void> update(T item);

  Future<void> delete(T item);
}
