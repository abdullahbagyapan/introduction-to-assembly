# Sum Of Array Elements

Sum each element in array

## Example C code:


```c
int main() {
	int[] array = {100,101,102,103,104};
	int len = sizeof(array);	
	int sum = 0;	

	for (int i = 0 ; i<len ; i++) {
		sum += array[i];
	}
	
	return 0;
}
```
