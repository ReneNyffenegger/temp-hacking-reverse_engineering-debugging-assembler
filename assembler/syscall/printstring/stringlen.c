// NMH's Simple C Compiler, 2011

int stringlen(char *const s) {
	char	*p;

	for (p = s; *p; p++) {}

	return p - s;
}
