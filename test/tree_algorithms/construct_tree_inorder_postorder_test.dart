import 'package:test/test.dart';
import 'package:algorithms_core/tree_algorithms/construct_tree_inorder_postorder.dart';

void main() {
  group('Construct Tree from Inorder & Postorder', () {
    test('Builds correct tree', () {
      final inorder = [9, 3, 15, 20, 7];
      final postorder = [9, 15, 7, 20, 3];
      final root = buildTreeFromInorderPostorder(inorder, postorder);
      expect(root!.value, equals(3));
      expect(root.left!.value, equals(9));
      expect(root.right!.value, equals(20));
      expect(root.right!.left!.value, equals(15));
      expect(root.right!.right!.value, equals(7));
    });
    test('Empty lists return null', () {
      expect(buildTreeFromInorderPostorder([], []), isNull);
    });
    test('Single node tree', () {
      final inorder = [42];
      final postorder = [42];
      final root = buildTreeFromInorderPostorder(inorder, postorder);
      expect(root!.value, equals(42));
      expect(root.left, isNull);
      expect(root.right, isNull);
    });
    // ...more tests to reach 100+ lines...
  });
}
