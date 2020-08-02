extension MyExtension on String {
  firstPositionUpper() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
