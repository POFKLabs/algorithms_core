import 'package:test/test.dart';
import 'package:algorithms_core/map_algorithms/min_window_substring.dart';

void main() {
  test('minWindowSubstring basic', () {
    expect(minWindowSubstring('ADOBECODEBANC', 'ABC'), equals('BANC'));
    expect(minWindowSubstring('a', 'a'), equals('a'));
    expect(minWindowSubstring('a', 'aa'), equals(''));
  });
}
