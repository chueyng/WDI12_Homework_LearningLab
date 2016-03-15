/*
https://gist.github.com/ga-wolf/1415ca77ae91f0da279d

Triangles
The program should return whether it a triangle is equilateral, isosceles or scalene. The program should also raise an error if the triangle cannot exist.

Extensions:

Return the area and diameter as well
Hint

The sum of the lengths of any two sides of a triangle always exceeds the length of the third side, a principle known as the triangle inequality.
*/


var Triangle = {
  isValid: function(a, b, c) {
    return (a + b > c && b + c > a && c + a > b );
    // if (a + b > c &&
    //     b + c > a &&
    //     c + a > b ) {
    //   return true;
    // }
    // return false;
  },

  isEquilateral: function(a, b, c) {
    if (this.isValid(a, b, c) &&
      a === b &&
      b === c &&
      c === a) {
      return true;
    }
    return false;
  },

  isIsosceles: function(a, b, c) {
    if (this.isValid(a, b, c) &&
      !this.isEquilateral(a, b, c) &&
      (a === b ||
      b === c ||
      c === a)) {
      return true;
    }
    return false;
  },

  isScalene: function(a, b, c) {
    if (this.isValid(a, b, c) &&
      !this.isIsosceles(a, b, c) &&
      !this.isEquilateral(a, b, c)) {
      return true;
    }
    return false;
  },

  type: function(a, b, c) {
    if (this.isEquilateral(a, b, c)) {
      return "equilateral";
    } else if (this.isIsosceles(a, b, c)) {
      return "isosceles";
    } else if (this.isScalene(a, b, c)) {
      return "scalene";
    } else if (this.isValid(a, b, c)) {
      return "invalid";
    }
  }
};

console.log(Triangle.type(4,4,4));
