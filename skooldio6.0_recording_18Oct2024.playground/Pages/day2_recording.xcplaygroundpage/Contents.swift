//conform to Equatable, Comparable and Hashable
//+// Equatable
//+(1, 2, 3) == (1, 2, 3) // true
//+// Labels are not taken into account to check for equality.
//+(x: 0, y: 0) == (0, 0) // true
//+
//+// Comparable
//+let origin = (x: 0, y: 0)
//+let randomPoint = (x: Int.random(in: 1 ... 10), y: Int.random(in: 1 ... 10))
//+(x: 0, y: 0) < (1, 0) // true
//+// Labels are not taken into account for comparision.
//+(x: 0, y: 0) < (1, 0) // true
//+
//+// Hashable
//+let points = [(x: 0, y: 0), (x: 1, y: 2), (x: 0, y: 0)]
//+let uniquePoints = Set(points)
//+print (uniquePoints) // [(x: 0, y: 0), (x: 1, y: 2)]
//+// Labels are not taken into account to check for hash value.
//+(x: 0, y: 0).hashValue == (0, 0).hashValue // true
//+
//+
//+
//+// etc - https://github.com/twostra





