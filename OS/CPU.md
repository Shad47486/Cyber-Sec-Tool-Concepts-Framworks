# What does the CPU architecture look like?

* Mostly Derived from the Von Neumann architecture
  * [Von Neumann architecture Diagram](</examples/vonneumann.png>)
    * CPU has 3 components (ALU, Control Unit, Registers) and interacts with the RAM (main memory) & Input/output devices:
      * Arithmetic Logic Unit (ALU): Executes the instruction fetched from the Memory.
        * The results of the executed instruction are then stored in either the Registers or the Memory.
      * Control Unit: Gets instructions from the main memory.
        * The address to the next instruction to .exe is stored in a register called the Instruction Point(IP).
          * In 32-bit systems, this register is called EIP, and in 64-bit systems, it is called RIP.
      * Registers: CPU's storage
        * Generally much smaller than the Main Memory (RAM), which is outside the CPU, and help save time in executing instructions by placing important data in direct access to the CPU.
      * Main Memory (RAM): Contains all the code and data for a program to run.
        * When a user executes a program, its code and data are loaded into the Memory, from where the CPU accesses it one instruction at a time.
      * Input/Output Devices: All other devices that interact with a computer
        * Includes Keyboards, Mice, Displays, Printers, Mass storage devices like Hard Disks and USBs, etc.

## Registers Overview

* Registers are the CPU's storage medium.
  * The CPU can access data from the registers quicker than any other storage medium; however, its limited size means it HAS to be used effectively.

*Registers are divided into 4 different types:Instruction Pointer (IP), General Purpose (GP) Registers, Status Flag Registers, Segment Registers*

* Instruction Pointer (IP) or Program Counter (IP (16b) -> EIP (32b) -> RIP (64b)): A register that contains the address of the next instruction to be executed by the CPU.
  * Originally a 16-bit register in the Intel 8086 processor and was abbreviated as IP
  * In 64-bit systems, this register became a 64-bit register called RIP (the R here stands for register)
  * In 32-bit systems/processors, the IP became a 32-bit register called the EIP (Extended Instruction Pointer)

* General Purpose (GP) Registers: used during the general execution of instructions by the CPU.
  * The GP registers in an x86 system are all 32-bit registers and in 64-bit systems, these registers are extended as 64-bit registers.
    * They contain the following registers:
      * EAX or RAX : Accumulator Register
        * Results of arithmetic operations are often stored in this register
          * In 64-bit systems this register is called RAX
          * In 32-bit addresses/systems this register is called EAX
          * The last 16 bits of this register is called AX
            * The lower 8 bits of this register is called AL
            * AH for the higher 8 bits.
      * EBX or RBX : Base Register
        * Used to store the Base address for referencing an offset
          * In 64-bit systems this register is called RBX
          * In 32-bit addresses/systems this register is called EBX
          * The last 16 bits of this register is called BX
            * The lower 8 bits of this register is called BH
            * BL for the higher 8 bits.
      * ECX or RCX: Counter Registe
        * Used in counting operations such as loops, etc.
          * In 64-bit systems this register is called RCX
          * In 32-bit addresses/systems this register is called EXC
          * The last 16 bits of this register is called CS
            * The lower 8 bits of this register is called CH
            * CL for the higher 8 bits.
      * EDX or RDX: Data Register
        * Used in multiplication/division operations.
          * In 64-bit systems this register is called RDX
          * In 32-bit addresses/systems this register is called EDX
          * The last 16 bits of this register is called DX
            * The lower 8 bits of this register is called DH
            * DL for the higher 8 bits.
      * ESP or RSP: Stack Pointer
        * Points to the top of the stack and is used in conjunction with the Stack Segment register.
          * When any new element is pushed on the stack, the location of the Stack Pointer changes to consider the new element that was pushed on the stack
            * Similarly, when an element is popped off the stack, the stack pointer adjusts itself to reflect that change. 
        * In 64-bit systems this register is called RSP.
        * In 32-bit addresses/systems this register is called ESP
          * It can not be addressed as smaller registers.
      * EBP or RBP: Base Pointer.
        * Used to access parameters passed by the stack.
          * In 64-bit systems this register is called RBP
          * In 32-bit addresses/systems this register is called EBP
      * ESI or RSI: This register is called the Source Index register.
        * For string operations
          * In 64-bit systems this register is called RSI
          * In 32-bit addresses/systems this register is called ESI
      * EDI or RDI: estination Index register.
        * Also for string operations (like ESI/RSI)
          * Used with the Extra Segment (ES) register as an offset.
            * In 64-bit systems this register is called RDI
            * In 32-bit addresses/systems this register is called EDI
      * R8-R15:
        * 64-bit general-purpose register (not pressent in 32-bit systems)
          * They are also addressable in 32-bit, 16-bit, and 8-bit modes.
          * EX: For the R8 register, we can use R8D for lower 32-bit addressing, R8W for lower 16-bit addressing, and R8B for lower 8-bit addressing
            * Suffix D stands for Double-word, W stands for Word, and B stands for Byte.
    * [Visual Representation of Registers](/examples/general_registers.png)

* Status Flag Registers: Status of the performing a execution of a register and consists of individual single-bit flags that can be either 1 or 0.
  * In 64-bit systems this flag is called RFLAGS
  * In 32-bit systems this flag is called EFLAGS
  * Some necessary flags to know are (Not all):
    * Zero Flag (ZF)
      * Indicates when the result of the last executed instruction was zero.
        * EX: If an instruction is executed that subtracts a RAX from itself, the result will be 0.
          * In this situation, the ZF will be set to 1.
    * Carry Flag (CF)
      * Indicates when the last executed instruction resulted in a # too big or too small for the destination.
        * EX: IF we add 0xFFFFFFFF and 0x00000001 and store the result in a 32-bit register, the result will be too big for the register.
          * In this case, CF will be set to 1.
    * Sign Flag (SF)
      * Indicates if the result of an operation is negative or the most significant bit is set to 1.
        * If these conditions are met, the SF is set to 1; otherwise, it is set to 0.
    * Trap Flag (TF)
      * Indicates if the processor is in debugging mode.
        * When the TF is set, the CPU will execute 1 instruction at a time for debugging purposes.
          * THIS CAN BE USED BY MALWARE TO IDENTIFY IF THEY ARE BEING RUN IN A DEBUGGER

* Segment Registers: 16-bit registers that convert the flat memory space into different segments for easier addressing
  * 6 segment registers:
    * Code Segment (CS): This register points to the Code section in the memory.
    * Data Segment (DS): This register points to the program's data section in the memory.
    * Stack Segment (SS): This register points to the program's Stack in the memory.
    * Extra Segments (ES, FS, GS): These are extra segment registers which point to different data sections.
      * These and the DS register divide the program's memory into 4 distinct data sections.

### Memory

* Windows EX: When a program is loaded into the Memory in the Windows OS, it sees an abstracted view of the Memory.
  * This means that the program doesn't have access to the full Memory; instead, it only has access to ITS Memory.
    * For that program, that is all the Memory it needs.
  * [Visualization of memory](/examples/memory.png)

* The typical memory layout for a program is divided into 4 sections and SOMETIMES WILL BE IN DIFFERENT ORDERS:
  * Stack, Heap, Code, and Data

* Stack: contains local variables, arguments passed on to the program, and the return address of the parent process that called the program.
  * Since the return address is related to the control flow of the CPU's instructions, the stack is often targeted by malware to hijack the control flow making it the most important part in the POV of a malware anaylsis.
    * Last In First Out (LIFO): The last element pushed onto the stack is the first one to be popped out.
      * EX: If we push A, B, and C onto the stack, when we pop out these elements, the first to pop out will be C, B, and then A.
    * The CPU uses 2 registers to keep track of the stack.
      * One is the Stack Pointer (the ESP or RSP), and the other is the Base Pointer (the EBP or RBP).
  * [Sample for stack calling](/examples/stack.png)

* Heap (Dynamic Memory): Contains variables and data created and destroyed during program execution.
  * When a variable is created, memory is allocated for that variable at runtime and when that variable is deleted, the memory is freed.

* Code: Contains the program's code
  * This section refers to the text section in a Portable Executable file, which includes instructions executed by the CPU.
    * This section of the Memory has execute permissions, meaning that the CPU can execute the data in this section of the program memory.

* Data: Contains initialized data that is not variable and remains constant.
  * It refers to the data section in a Portable Executable file.
  * Often contains Global variables and other data that are not supposed to change during the program's execution.
