#include <iostream>

       #include <iomanip>

       #include <vector>

        

       // size of the flea circus

       unsigned int width  = 30;

       unsigned int height = 30;

       // number of jumps for each flea

       unsigned int rounds = 50;

        

       // a fixed 2D array

       typedef std::vector<std::vector<double>> Grid;

       // it looks weird, but the inner array describes the second index

        

       // create a 2D (width x height) and set all elements to initialValue

       Grid makeGrid(double initialValue)

       {

         Grid result(width);

         for (auto& row : result)

           row.resize(height, initialValue);

         return result;

       }

        

       int main()

       {

         // read parameters

         std::cin >> width >> height >> rounds;

        

         // probability that squares are empty

         // ==> no fleas yet, therefore "emptiness" probability is 1 (=100%) for each square

         Grid empty = makeGrid(1);

        

         // use symmetry to speed up the process

         bool mirrorX = false;

         bool mirrorY = false;

         unsigned int maxX = width;

         unsigned int maxY = height;

       #define FAST_SYMMETRY

       #ifdef FAST_SYMMETRY

         if (width  % 2 == 0)

         {

           mirrorX = true;

           maxX = width  / 2;

         }

         if (height % 2 == 0)

         {

           mirrorY = true;

           maxY = height / 2;

         }

       #endif

        

         // analyze each flea

         for (unsigned int startX = 0; startX < maxX; startX++)

           for (unsigned int startY = 0; startY < maxY; startY++)

           {

             // drop a single flea at (x,y):

             // probability of seeing the flea is zero for each square ...

             Grid current = makeGrid(0);

             // ... except for the square where it starts

             current[startX][startY] = 1;

        

             // trace probability of landing at each square after a few rounds

             for (unsigned int round = 0; round < rounds; round++)

             {

               // track probability of seeing the flea after one more jump

               Grid next = makeGrid(0);

        

               // look at each square from the previous round

               for (unsigned int x = 0; x < width; x++)

                 for (unsigned int y = 0; y < height; y++)

                 {

                   // flea couldn't be there ? ==> skip

                   if (current[x][y] == 0)

                     continue;

        

                   // count number of possible destination squares

                   unsigned int directions = 4;

                   if (x == 0 || x == width - 1)

                     directions--;

                   if (y == 0 || y == height - 1)

                     directions--;

        

                   // probability of landing on a square is

                   // "probability of starting at current square" / "number of options"

                   double probability = current[x][y] / directions;

        

                   // add probability to each allowed destination square

                   if (x > 0)

                     next[x - 1][y] += probability;

                   if (x < width - 1)

                     next[x + 1][y] += probability;

                   if (y > 0)

                     next[x][y - 1] += probability;

                   if (y < height - 1)

                     next[x][y + 1] += probability;

                 }

        

               current = std::move(next);

             }

        

             // 1. current[x][y] contains the probability that our flea is on square (x,y) after xx rounds

             // 2. the probability of being empty is the opposite, it's: 1 - current[x][y]

             // 3. and the probability that no flea finishes on that square (no matter where it started)

             //    is the product of the "emptiness" probabilities of all fleas

             for (unsigned int x = 0; x < width; x++)

               for (unsigned int y = 0; y < height; y++)

               {

                 empty[x][y] *= 1 - current[x][y];

        

                 // use symmetries

                 if (mirrorX)

                   empty[x][y] *= 1 - current[width - 1 - x][y];

                 if (mirrorY)

                   empty[x][y] *= 1 - current[x][height - 1 - y];

                 if (mirrorX && mirrorY)

                   empty[x][y] *= 1 - current[width - 1 - x][height - 1 - y];

               }

           }

        

         // sum of all probabilities

         double result = 0;

         for (unsigned int x = 0; x < width; x++){
			 

           for (unsigned int y = 0; y < height; y++){
			 std::cout << std::fixed << std::setprecision(6) << empty[x][y] << "\t";
             result += empty[x][y];
		   }
		   std::cout <<"\n";

		 }

         // display result

         std::cout << std::fixed << std::setprecision(6) << result << std::endl;

         return 0;

       }