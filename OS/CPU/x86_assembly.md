# What is assembly?

* The assembly language is the lowest level of human-readable language.
  * It is also the highest level of language into which a binary can be reliably decompiled.

## Why is assembly important in malware analysis?

* When we get a malware sample to analyze, it is most likely a compiled binary
  * We cannot view this binary's C/C++ or other language code because that is not available to us.
    * What we can do, however, is to decompile the code using a decompiler or a disassembler.
      * The problem with decompiling is that a lot of information in the written code is removed while it is compiled into a binary; hence we won't see variable names, function names, etc., as we do while writing code
        * So the most reliable code we have for a compiled binary is its assembly code.

### What are Opcodes and Operands?

* The code for a program, as written on the disk and understood by the CPU, is in binary format.
  * This means that the actual code is a sequence of 1s and 0s.
    * To make it understandable, we often club a series of 8-bits (called a byte) into a single digit in hex
      * So the instructions that a computer is executing will be just a sequence of random numbers in hex to a human.
        * Among these random numbers are opcodes and operands
          * Opcodes denote the hex for actual ops
          * operands are the registers or memory locations on which the ops are performed.

* Opcodes are numbers that correspond to instructions performed by the CPU.
  * When we use a disassembler to disassemble a program, it reads the opcode
  * It translates them into assembly instructions to make them human-readable.
    * EX: the instruction for moving 0x5F to the eax register is:
      * mov eax, 0x5f
      * When looking at it in a disassembler, we will see:
        * 040000:    b8 5f 00 00 00    mov eax, 0x5f
          * 040000: corresponds to the address where the instruction is located.
          * b8 refers to the opcode of the instruction mov eax
          * 5F 00 00 00 indicates the other operand 0x5f
            * Please note that due to endianness, the operand 0x5f is written as 5f 00 00 00, which is actually 00 00 00 5f but in little-endian notation
            * *What is endianness?*
              * Endianness means that the bytes in computer memory are read in a certain order.
                * Endianness is represented two ways Big-endian (BE) and Little-endian (LE).
                  * BE stores the big-end first. When reading multiple bytes the first byte (or the lowest memory address) is the biggest - so it makes the most sense to people who read left to right.
                  * LE stores the little-end first. When reading multiple bytes the first byte (or the lowest memory address) is the littlest - so it makes most sense to people who read right to left.

* Types of Operands:
  * There are three types of operands in the assembly language.
    * Immediate Operands can also be considered constants.
    * Registers can also be operands.
    * Memory operands are denoted by square brackets, and they reference memory locations.
      * EX: if we see [eax] as an operand, it will mean that the value in eax is the memory location on which the operation has to be performed.

### General Intructions

* Instructions tell the CPU what operation to perform
  * Instructions often use operands from registers, memory, or immediate operands to perform operations and then store the results in either registers or memory.
    * These instructions perform simple operations, such as moving a value from one type of storage to another.

* The MOV Instruction
  * The mov instruction moves a value from one location to another.
    * The mov instruction can move a fixed value to a register, a register to another register, and a value in a memory location to a register.
  * Its syntax is as follows:
    * mov destination, source
      * EX: mov eax, 0x5f
        * The following instruction copies a fixed value to a register.
        * In this particular instruction, 0x5f is being moved to eax:
          * mov ebx, eax
        * The following instruction copies the value stored in a memory location to a register:
          * mov eax, [0x5fc53e]
        * As seen above, we use square brackets when referencing memory.
          * Similarly, suppose we see a register in square brackets.
          * In that case, that will mean that the value in that register will be treated as a memory location, and the value in that memory location will be moved to the destination.
            * This means that the example mov eax, [0x5fc3e] and the below example will have the same result.
              * mov ebx, 0x5fc53e
              * mov eax, [ebx]
  * We can use the mov instruction to perform arithmetic calculations when referencing memory addresses.
    * The below instruction calculates ebp+4 (adding an offset of 4 bytes to the memory location) and moves the value in the resulting memory address into eax:
      * mov eax, [ebp+4]

* The LEA Instruction
  * The lea instruction stands for "load effective address."
    * The format of this instruction is as follows:
      * lea destination, source
    * *While the mov instruction moves the data at the source memory address to the destination, the lea instruction moves the address of the source into the destination.*
      * EX: lea eax, [ebp+4]
        * In the example above, the ebp value will be increased by four and moved to eax.
        * H/O, if we had used a mov instruction here instead of lea, it would have moved the value in the memory location ebp+4.
          * Here, we can notice that we have performed an arithmetic operation on a register and saved the result in another register using a single instruction.
        * The lea instruction is often used by compilers not for referencing memory locations but so that an arithmetic operation is performed on a register and saved to another using a single instruction.
          * This is true, especially if the arithmetic operations are more complex, like adding and multiplying in a single instruction.

* The NOP Instruction
  * The nop instruction stands for no operation.
    * This instruction exchanges the value in eax with itself, resulting in no meaningful operation.
      * Hence, the execution moves to the next instruction without changing anything.
        * The nop instructions are used for consuming CPU cycles while waiting for an operation or other such purposes.
  * It has the following syntax:
    * nop
  * The nop instruction is used by malware authors when redirecting execution to their shellcode.
    * The exact location where the execution will redirect is often unknown, so the malware author uses a bunch of nop instructions to ensure that the shellcode execution does not start from the middle.
    * This padding of nop instructions is called a nop sled.

* Shift Instructions
  * The CPU uses shift instructions to shift each register bit to the adjacent bit.
    * There are two shift instructions for shifting either to the right or left.
    * The shift instructions have the following syntax:
      * shr destination, count
      * shl destination, count
        * Here the shr instruction is for the shift right operation, and the shl is for the shift left operation.
          * This instruction shifts the bits in the destination operand.
          * The count operand decides the number of bits to be shifted.
          * The bits which are shifted out of their location are filled with zeroes.
            * So, if we have 00000010 in eax and shift it left, it will become 00000100.
    * Shift instructions are used instead of multiplication and division by two or powers of two (2n where n is the count in the shift instruction).
      * This saves execution time by not having to manipulate values in registers before performing multiplication or division.
        * EX: If eax has 00000010, and we shift right by 1 bit, we get 00000001, which is the same result as dividing eax by 2.
          * Similarly, if eax has 00000001, and we shift left by 1 bit, the result is 00000010, the same as multiplying eax by 2.

* Rotate Instructions
* The rotate instructions are similar to the shift instructions.
  * The only difference is that the bits are rotated back to the other end of the register instead of moving the overflowing bit into the carry flag or adding zeroes instead of shifted-out bits.
    * The rotate instruction has the following syntax:
      * ror destination, count
      * rol destination, count
        * Here, the ror instruction rotates the destination to the right, and rol rotates the destination to the left.
          * The rest of the syntax remains the same.
            * EX: If we have 10101010 in al, and we rotate it right by 1 bit, it will result in 01010101.
              * Similarly, rotating this result to the left by 1 bit will result in 10101010 again.
