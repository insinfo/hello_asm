# hello_asm
estudo de assembly <br>
apenas um hello world em assembly 32 bits i386 no Linux Ubuntu 20 com gcc e nasm  <br>

#### para montar 
```bash
nasm -f elf32 -o hello_world.o hello_world.asm  
```

#### para link
```console
ld -m elf_i386 -o hello_world hello_world.o 
```
