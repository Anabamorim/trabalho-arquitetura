.data
numb: .asciiz "Digite o primeiro valor"
numc: .asciiz "Digite o segundo valor"
result_m: .asciiz "Resultado"

.text 
(imprimir o numb para o primeiro valor)
li $v0 , 4 
la $a0 , numb
syscall

(ler o primeiro valor)
li $v0 , 5
syscall
move $t0 , $v0

(imprimir o numc para o segundo valor)
li $v0 , 4
la $a0 , numc 
syscall

(ler o segundo valor)
li $v0 , 5
syscall
move $t1 , $v0

(verificar se o primeiro valor é menor que o segundo)

ble $t0 , $t1 , check_equal
jal print_range_desc
j end _ program 

print_equal
(imprimir o valor se forem iguais)
li $v0 , 4
la $a0 , result_m
syscall
move $a0 , i
syscall
j end_program

print_range
(imprimir valores do segundo ate o primeiro em ordem decrecente)
li $v0 , 4
la $a0 , result_m
syscall

loop = 
beq $t0 , $t1 , end_asc
move $a0 , $t0
li $v0 , 1
syscall 
sub $t0 , $t0 , 1 
j end_program 

print_range_desc:
(imprimir valores do primeiro ate o segundo em ordem decrescente)

li $v0 , 4
la $a0 , result_m
syscall

