import 'package:test/test.dart';
import 'package:algorithms_core/graph_algorithms/hierholzer.dart';

void main() {
  group('Hierholzer\'s Algorithm', () {
    test('Find Eulerian trail/circuit', () {
      final graph = <int, List<int>>{
        0: [1, 2],
        1: [2],
        2: [0, 1],
      };
      final trail = hierholzer(graph);
      expect(trail, isNotNull);
      expect(trail!.length, equals(4));
    });
  });
}
