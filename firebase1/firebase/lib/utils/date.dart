String formatDate(DateTime timestamp) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));
  final txDate = DateTime(timestamp.year, timestamp.month, timestamp.day);

  if (txDate.isAtSameMomentAs(today)) return 'Today';
  if (txDate.isAtSameMomentAs(yesterday)) return 'Yesterday';

  return '${txDate.day} ${_month(txDate.month)} ${txDate.year}';
}

String _month(int m) => [
  '', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
  'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
][m];
