int f(int a, long long int b, int c);

int _start() {
   int x = 42;
// f(11, 22);
   int l1 = f(11, 22, 33);
   int l2 = f(17, 19, 33);
   int l3 = f(19, 19, 33);
   int l4 = f(19, 19, 33);
   int l5 = f(19, 19, 33);
   int l6 = f(29, 19, 33);
   int l7 = f(39, 19, 33);
   int l8 = f(49, 19, 33);
   int l9 = f(99, 99, 99);
   int la = f(69, 19, 33);
   int lb = f(79, 19, 33);
   int lc = f(30, 30, 30);
   int ld = f(40, 40, 40);
   int le = f(50, 50, 50);
   int lf = f(50, 50, 50);
   int lg = f(50, 50, 50);
// int lh = f(50, 50, 50);
// int li = f(50, 50, 50);
// int lj = f(50, 50, 50);
   return l1 + l2 + l3 + l4 + l5 + l6 + l7 + l8 + l9 + la + lb + lc + ld + le + lf + lg; // + lh; // + li + lj;
}
