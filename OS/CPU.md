# What does the CPU architecture look like?

* Mostly Derived from the Von Neumann architecture
  * [Von Neumann architecture Diagram](</examples/vonneumann.png>)
    * CPU has 3 components (ALU, Control Unit, Registers) and interacts with the RAM (main memory) & Input/output devices:
      * Arithmetic Logic Unit (ALU):
        * Executes the instruction fetched from the Memory.
          * The results of the executed instruction are then stored in either the Registers or the Memory.
      * Control Unit:
        * Gets instructions from the main memory, depicted here outside the CPU.
        * The address to the next instruction to execute is stored in a register called the Instruction Pointer or IP.
          * In 32-bit systems, this register is called EIP, and in 64-bit systems, it is called RIP.
      * Registers:
        * CPU's storage
        * Generally much smaller than the Main Memory (RAM), which is outside the CPU, and help save time in executing instructions by placing important data in direct access to the CPU.
      * Main Memory (RAM):
        * Contains all the code and data for a program to run.
        * When a user executes a program, its code and data are loaded into the Memory, from where the CPU accesses it one instruction at a time.
      * Input/Output Devices:
        * All other devices that interact with a computer
          * Which includes Keyboards, Mice, Displays, Printers, Mass storage devices like Hard Disks and USBs, etc.
