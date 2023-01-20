#include <stdio.h>

int main(int argc, char **argv) {
    if (argc > 5) {
        for (int i = 0; i <= argc; ++i) {
            printf("i: %d\n", i);
        }
    }

}
