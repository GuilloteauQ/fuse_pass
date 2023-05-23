
gcc -shared -o libA/liba.so -Wl,-soname,liba.so -x c libA/liba.c
gcc -shared -o libB/libb.so -Wl,-soname,libb.so -x c libB/libb.c

# gcc -o app -L. -lf -x c main.c

# gcc -o app -L./libA -L./libB -la -lb -lm -x c main.c
gcc -o app -L./libA -L./libB -la -lb -Wl,-rpath,$PWD/libA:$PWD/libB -x c main.c
