import 'package:test/test.dart';
import 'package:algorithms_core/map_algorithms/count_pairs_with_diff.dart';

void main() {
  test('countPairsWithDiff basic', () {
    final nums = [1, 5, 3, 4, 2];
    expect(countPairsWithDiff(nums, 2), 3);
    expect(countPairsWithDiff(nums, 1), 4);
  });
}
