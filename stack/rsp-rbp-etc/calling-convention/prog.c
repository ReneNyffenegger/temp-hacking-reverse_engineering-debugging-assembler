
__attribute__((stdcall)) int S(int a) {
    return a * (a+1);
}

int main() {
    return S(6);
}
