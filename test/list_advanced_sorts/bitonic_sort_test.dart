import 'package:test/test.dart';
import 'package:algorithms_core/list_advanced_sorts/bitonic_sort.dart';

void main() {
  group('Bitonic Sort', () {
    test('Sorts integers (ascending)', () {
      final arr = [3, 7, 4, 8];
      bitonicSort(arr, ascending: true);
      expect(arr, equals([3, 4, 7, 8]));
    });
    test('Sorts integers (descending)', () {
      final arr = [3, 7, 4, 8];
      bitonicSort(arr, ascending: false);
      expect(arr, equals([8, 7, 4, 3]));
    });
    test('Sorts doubles', () {
      final arr = [3.2, 1.5, 4.8, 2.1];
      bitonicSort(arr, ascending: true);
      expect(arr, equals([1.5, 2.1, 3.2, 4.8]));
    });
    test('Empty list', () {
      final arr = <int>[];
      bitonicSort(arr);
      expect(arr, equals([]));
    });
  });
}
