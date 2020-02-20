package utils;

import java.util.Set;

public class EulerMath {
    // Java program to generate all unique
// partitions of an integer


        // Function to print an array p[] of size n
        public static void printArray(int p[], int n)
        {
            for (int i = 0; i < n; i++)
                System.out.print(p[i]+" ");
            System.out.println();
        }

        // Function to generate all unique partitions of an integer
        public static int countAllUniqueParts(int n)
        {
            int count =0;
            int[] p = new int[n]; // An array to store a partition
//            int[] p = new int[]{1,2,5,10,20,50,100,200};
            int k = 0; // Index of last element in a partition
            p[k] = n; // Initialize first partition as number itself

            // This loop first prints current partition then generates next
            // partition. The loop stops when the current partition has all 1s
            while (true)
            {
                // print current partition
                printArray(p, k+1);
                count++;

                // Generate next partition

                // Find the rightmost non-one value in p[]. Also, update the
                // rem_val so that we know how much value can be accommodated
                int rem_val = 0;
                while (k >= 0 && p[k] == 1)
                {
                    rem_val += p[k];
                    k--;
                }

                // if k < 0, all the values are 1 so there are no more partitions
                if (k < 0) return count;

                // Decrease the p[k] found above and adjust the rem_val
                p[k]--;
                rem_val++;


                // If rem_val is more, then the sorted order is violated. Divide
                // rem_val in different values of size p[k] and copy these values at
                // different positions after p[k]
                while (rem_val > p[k])
                {
                    p[k+1] = p[k];
                    rem_val = rem_val - p[k];
                    k++;
                }

                // Copy rem_val to next position and increment position
                p[k+1] = rem_val;
                k++;
            }
        }

    public static void printDivisors(int n)
    {
        // Note that this loop runs till square root
        for (int i=1; i<=Math.sqrt(n); i++)
        {
            if (n%i==0)
            {
                // If divisors are equal, print only one
                if (n/i == i)
                    System.out.printf("%d ", i);

                else // Otherwise print both
                    System.out.printf("%d %d ", i, n/i);
            }
        }
    }


    public static int countAllUniqueParts(int n, Set<Integer> filter)
    {
        int count =0;
        int[] p = new int[n]; // An array to store a partition
        int k = 0; // Index of last element in a partition
        p[k] = n; // Initialize first partition as number itself

        // This loop first prints current partition then generates next
        // partition. The loop stops when the current partition has all 1s
        while (true)
        {
            // print current partition
            printArray(p, k+1);
            //if(filter.containsAll(Arrays.asList(p))) {
             count++;
            //}

            // Generate next partition

            // Find the rightmost non-one value in p[]. Also, update the
            // rem_val so that we know how much value can be accommodated
            int rem_val = 0;
            while (k >= 0 && p[k] == 1)
            {
                rem_val += p[k];
                k--;
            }

            // if k < 0, all the values are 1 so there are no more partitions
            if (k < 0) return count;

            // Decrease the p[k] found above and adjust the rem_val
            //do {
                p[k]--;
            //}while(!filter.contains(p[k]));
            //do {
            rem_val++;
            //}while(!filter.contains(rem_val));


            // If rem_val is more, then the sorted order is violated. Divide
            // rem_val in different values of size p[k] and copy these values at
            // different positions after p[k]
            while (rem_val > p[k])
            {

//                do {
//                }while(!filter.contains(rem_val));
                    p[k+1] = p[k];
                    rem_val = rem_val - p[k];
                    k++;

            }

            // Copy rem_val to next position and increment position
            p[k+1] = rem_val;
            k++;
        }
    }



//        // Driver program
//        public static void main (String[] args)
//        {
//            System.out.println("All Unique Partitions of 2");
//            printAllUniqueParts(2);
//
//            System.out.println("All Unique Partitions of 3");
//            printAllUniqueParts(3);
//
//            System.out.println("All Unique Partitions of 4");
//            printAllUniqueParts(4);
//        }
    }

// Contributed by Pramod Kumar




