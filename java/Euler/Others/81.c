#include<iostream>
#include<string>
#include<cstring>
#include<cstdlib>
#define MAX 80

using namespace std;

int main() {
  int input[MAX][MAX] = {0}, arr[MAX][MAX] = {0},j=0,child;
  string line;
  freopen("MyInput.txt","r",stdin);
  for(int i=0;i<MAX;i++) {
	 j=0;
     getline(cin,line);
     char *cstr = new char[line.size()+1],*token;
     strcpy(cstr,line.c_str());
     token = strtok(cstr,",");
     while(token!=NULL) {
        input[i][j]=atoi(token);
        token = strtok(NULL,",");
        if(j<MAX-1) ++j;
     }
  }
  arr[0][0] = input[0][0];
    for(int i=1;i<MAX;i++) {
        for(int k=i,j=0;k>=0 && j<=i;k--,j++) {
           child = input[k][j];
           if(j==0)
          	 arr[k][j] = child + arr[k-1][j];
           else if(k==0)
              arr[k][j] = child + arr[k][j-1];
           else
          	 arr[k][j] = child + min(arr[k-1][j],arr[k][j-1]);
        }
   }
  for(int j=1;j<MAX;j++) {
      for(int l=j,k=MAX-1; l<MAX ;l++,k--) {
    		  child = input[k][l];
    		  arr[k][l] = min(child + arr[k-1][l], child + arr[k][l-1]);
      }
  }
  cout<<arr[MAX-1][MAX-1]<<endl;
  fclose(stdin);
  return 0;
}

/*
#include <stdio.h>
#include <stdlib.h>

#define MSIZE 6400


int main (void)
{
	FILE *handle;
	long matrix[MSIZE];
	int counter;
	char holder[10]; //just in case

	handle = fopen("matrix.tab", "r");

	//load array from file
	for (counter=0; counter<MSIZE; counter++)
	{
		fscanf(handle, "%s", holder);
		matrix[counter]=atoi(holder);
	}

	// we don't use the last element
	for (counter=MSIZE-2; counter>=0; counter--)
	{
		//bottom row --> add value to right
		if (counter>=MSIZE-80){matrix[counter]+=matrix[counter+1];}
		//right side --> add value below
		else if (counter%80==79){matrix[counter]+=matrix[counter+80];}
		//normal cells
		else if (matrix[counter+1]<matrix[counter+80]){matrix[counter]+=matrix[counter+1];}
		else {matrix[counter]+=matrix[counter+80];}
	}
	printf ("First value: %ld\n", matrix[0]);
	return 0;
}

*/