system.bin: arch/x64/boot.asm
	nasm -f bin -o build/system.bin arch/x64/boot.asm
