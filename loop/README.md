#Addition number from 1 to 10


##Example C code:

```c
int main() {
	int iterator = 0;
	int total = 0;

	startPoint:
	
	if (10 >= iterator) {
		total += iterator;			
		iterator++;
		goto startPoint;
	}
	else {
		goto endPoint;	
	}
	endPoint:
	
	return 0;
}
```
