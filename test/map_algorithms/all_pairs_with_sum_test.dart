import 'package:test/test.dart';
import 'package:algorithms_core/map_algorithms/all_pairs_with_sum.dart';

void main() {
  test('allPairsWithSum basic', () {
    final nums = [1, 5, 7, -1, 5];
    final result = allPairsWithSum(nums, 6);
    expect(
      result,
      containsAll([
        [1, 5],
        [1, 5],
        [7, -1],
      ]),
    );
  });
}
