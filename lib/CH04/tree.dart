class Tree {
  static int treeCount = 0;
  String treeName = "";

  Tree(String name) {
    this.treeName = name;
    treeCount += 1;
  }

  String getTreeName() {
    return treeName;
  }

  static int _getTreeCount() {
    return treeCount;
  }
}

void main() {
  Tree t1 = Tree("Pine");
  Tree t2 = Tree("oak");
  Tree t3 = Tree("elm");

  print("t1 is: ${t1.getTreeName()}");
  print("t2 is: ${t2.getTreeName()}");
  print("t3 is: ${t3.getTreeName()}");
  print("There are ${Tree._getTreeCount()} trees");
}
