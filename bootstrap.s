.global _start
_start:
	ldr	sp, =0x3FFFFFFF
	bl	main
