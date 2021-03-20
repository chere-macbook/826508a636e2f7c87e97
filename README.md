# README

Task: Create an API endpoint that allows a client to send in an array representing an unsolved Sudoku puzzle, and responds with the solved puzzle.

The goal of Sudoku is to fill in a 9×9 grid with digits so that each column, row, and 3×3 section contain the numbers between 1 to 9. At the beginning of the game, the 9×9 grid will have some of the squares filled in. Your job is to use logic to fill in the missing digits and complete the grid.
Constraints:

Any row cannot contain more than one of the same number from 1 to 9
Any column cannot contain more than one of the same number from 1 to 9
Any 3×3 grid cannot contain more than one of the same number from 1 to 9
Example input and output:
(Note: Input will be an array of arrays. They represent rows on the Sudoku board.)

```
POST /api/sudoku
{ data:
    [
      [2, 0, 5, 0, 0, 9, 0, 0, 4],
      [0, 0, 0, 0, 0, 0, 3, 0, 7],
      [7, 0, 0, 8, 5, 6, 0, 1, 0],
      [4, 5, 0, 7, 0, 0, 0, 0, 0],
      [0, 0, 9, 0, 0, 0, 1, 0, 0],
      [0, 0, 0, 0, 0, 2, 0, 8, 5],
      [0, 2, 0, 4, 1, 8, 0, 0, 6],
      [6, 0, 8, 0, 0, 0, 0, 0, 0],
      [1, 0, 0, 2, 0, 0, 7, 0, 8]
    ]
}
```
```
Output example:
{
  "solution":[
    [2,1,5,3,6,9,8,7,4],
    [5,8,1,6,2,4,3,9,7],
    [7,3,2,8,5,6,4,1,9],
    [4,5,3,7,8,1,9,6,2],
    [8,6,9,5,4,7,1,2,3],
    [3,7,4,1,9,2,6,8,5],
    [9,2,7,4,1,8,5,3,6],
    [6,4,8,9,7,3,2,5,1],
    [1,9,6,2,3,5,7,4,8]
  ]
}
```
