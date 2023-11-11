class Node {
  constructor() {
    const instance = Object.create(BinarySearchTree.prototype);

    instance.value; 
    instance.right = undefined;
    instance.left = undefined; 

    return instance;
  }
}

BinarySearchTree.prototype.contains = function (value) {
  const doesContain = false;

  function recurse(bst) {
    if (bst.value === value) {
      doesContain = true;
    } else if (bst.left !== undefined && value < bst.value) {
      recurse(bst.left);
    } else if (bst.right !== undefined && value > bst.value) {
      recurse(bst.right);
    }
  }

  recurse(this);
  return doesContain;
};

BinarySearchTree.prototype.depthFirstLog = function (callback) {
  function recurse(bst) {
    callback.call(bst, bst.value);

    if (bst.left !== undefined) {
      recurse(bst.left);
    }

    if (bst.right !== undefined) {
      recurse(bst.right);
    }
  }

  recurse(this);
};

// Please add your pseudocode to this file
// And a written explanation of your solution
/* The code defines a Binary Search Tree (BST) class in JavaScript, with methods to check if a value is
contained in the tree and to perform a depth-first traversal of the tree and apply a callback
function to each node */