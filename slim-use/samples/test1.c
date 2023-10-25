int main() {
	int a = 5;
	int b = 9;
	int c = a;
	if(a+c < 9) {
		a = c;
	} else {
		b = c;
	}
	a = b+c;
	return a;
}
