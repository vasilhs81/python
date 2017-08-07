def main(): 
from itertools import count 
from sets import Set 
for i in count(1): 
if Set(str(2*i)) == Set(str(3*i)) == Set(str(4*i)) == Set(str(5*i)) == Set(str(6*i)): 
print i 
break 
main() 

///////////////////

#include <set>
#include <iostream>
using namespace std;

typedef set<int> S;

S digits(int n) {
    S res;
    while(n) {
        res.insert(n%10);
        n/=10;
    }
    return res;
}

int main() {
    int x = 1;
    for(;;) {
        if(digits(2*x) == digits(3*x) && digits(3*x) == digits(4*x) &&
           digits(4*x) == digits(5*x) && digits(5*x) == digits(6*x)) {
            cout << x << endl;
            break;
        }
        x++;
    }
    return 0;
}


///////////////////
#include <stdio.h>
#include <stdlib.h>

int check(int n) {
	int i,j,N[10];
	itoa(n,N,10);
	for (i=1;i<=6;i++)
		for(j=0;j<=10;j++)
			if(N[j]==NULL) break; 
			else if(N[j]=='0') return 0;
			else if(findchar(N[j],n*i)==0) return 0;	
	return 1;	
}

int findchar(char c,int m) {
	char M[10],exists=0;
	int i;
	itoa(m,M,10);
	for(i=0;i<=10;i++)
		if(M[i]==NULL) break;
		else if(M[i]=='0') return 0;
		else if(c==M[i]) exists++;
	if (exists!=1) return 0;
	return 1;
}

main ()	{
	int i=123456;
	while(!check(i)) i++;	
	printf("\n%d",i);
	return 0;
}

Its obvious that its pointless to start bellow 123456 cause its nessesary that the first digit is "1", and 6x1 is, Yes 6! 2x6 is like 12 and that is one digit to much... And furthermore it cant be bigger than 165432 (for 6 digits) couse it results in a 7 digit number. So its most possible that the number is between 123456 and 1654321.
/////////////////
