# hello_asm
estudo de assembly <br>
apenas um hello world em assembly 32 bits i386 no Linux Ubuntu 20 com gcc e nasm  <br>

#### para montar 
```zsh
apt install gcc  
printf SYS_read | gcc -include sys/syscall.h -E -  
apt install nasm
nasm -f elf32 -o hello_world.o hello_world.asm  
```

#### para link
```zsh
ld -m elf_i386 -o hello_world hello_world.o 
```
