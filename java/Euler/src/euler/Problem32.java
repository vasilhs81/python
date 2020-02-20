package euler;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;


public class Problem32 {
    public static void main(String[] args) {
        TreeSet<Integer> currencies = new TreeSet<>(Arrays.asList(1, 2, 5, 10, 20, 50, 100, 200));
        Set<Integer> set = new HashSet<>(Arrays.asList(1, 2, 5, 10, 20, 50, 100, 200));
        Integer[] array = {1, 2, 5, 10, 20, 50, 100, 200};
        List<Integer> arrayList = Arrays.asList(array);
        final int maxIntex = 7;
        final int minIndex = 0;
        int currentIndex = maxIntex;
        final int target = 200;

        // It is possible to make £2 in the following way:
        //
        //    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
        // Target is 200P
//        NavigableSet<Integer> treereverse = currencies.descendingSet();
        // printing the interated value

        // 200
        // 100 + 100
        // 100 + 50 + 50
        // 100 + 50 + 20 + 20 + 20 X
        // 100 + 50 + 20 + 20 + 10
        // 100 + 50 + 20 + 20 + 5 + 5
        // 100 + 50 + 20 + 20 + 5 + 2 + 2 + 2 X
        // 100 + 50 + 20 + 20 + 5 + 2 + (2) + 1

        // 100 + 50 + 20 + 20 + 5 + 2 + (1 + 1) + 1
        // 100 + 50 + 20 + 20 + 5 + (1 + 1) + (1 + 1) + 1
        // 100 + 50 + 20 + 20 + ( 2 + 2 + 1)  + 1 + 1 + 1 + 1 + 1

        //// to teliko 8a einai na ginoun ola 11111111
        // 50 + 50 + 50 + 50


        //System.out.println(countAllUniqueParts(200, currencies));
        //printDivisors(200);

        //ξεκίνα με τον μεγαλύτερο και βάλε το όσο χωράει


        List<Integer> list = new ArrayList<>();
        int count = 0;
        int sum = 0;
        int arrayIndex = array.length - 1;


        int L = array[arrayIndex];
        while (true) {

            if (arrayIndex < 0) { //if this is the lowest element..
                while(!list.isEmpty() && list.get(list.size()-1) == L){
                //do { //try to go back and find the previous element to replace
                    list.remove(list.size()-1);
                    sum -= L;

                }
                //if everything is 1..
                if (list.isEmpty()) {
                    break;
                }
                sum -= list.get(list.size()-1);
                arrayIndex = arrayList.indexOf(list.get(list.size()-1))-1;
                list.remove(list.size()-1);
            }
            L = array[arrayIndex];
            arrayIndex--;

            while (true) {
                if (sum + L == target) {
                    list.add(L);
                    System.out.println(list);
                    count++;
                    list.remove(list.size()-1);
                    break;
                }
                else if (sum + L > target) {
                    break;
                }
                //time to split
                else {
                    sum += L;
                    list.add(L);
                }

            }
        }
        System.out.println(count);


    }
}
