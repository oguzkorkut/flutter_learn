class DurationException implements Exception {
  final dynamic data;

  DurationException(this.data);

  @override
  String toString() {
    return 'Duration not found $data';
  }
}
