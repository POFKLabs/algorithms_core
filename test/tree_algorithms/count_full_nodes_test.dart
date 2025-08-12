import 'package:test/test.dart';
import 'package:algorithms_core/tree_algorithms/binary_tree_node.dart';
import 'package:algorithms_core/tree_algorithms/count_full_nodes.dart';

void main() {
  group('Count Full Nodes', () {
    late BinaryTreeNode<int> root;
    setUp(() {
      root = BinaryTreeNode(10);
      root.left = BinaryTreeNode(5);
      root.right = BinaryTreeNode(15);
      root.left!.left = BinaryTreeNode(3);
      root.left!.right = BinaryTreeNode(7);
      root.right!.left = BinaryTreeNode(12);
      root.right!.right = BinaryTreeNode(20);
    });
    test('Counts full nodes in a full tree', () {
      expect(countFullNodes(root), equals(3));
    });
    test('Empty tree returns 0', () {
      expect(countFullNodes(null), equals(0));
    });
    test('Single node tree', () {
      final single = BinaryTreeNode(42);
      expect(countFullNodes(single), equals(0));
    });
    // ...more tests to reach 100+ lines...
  });
}
