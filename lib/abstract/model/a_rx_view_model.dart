///reactive view model
abstract class ARxViewModel<M> {
  String get modelName => M.runtimeType.toString();
}
