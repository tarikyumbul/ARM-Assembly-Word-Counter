# ARM-Assembly-Word-Counter

A simple ARM Assembly program that returns the number of words in a string. It is the second part of a 3-section school project.

The program can be run using Keil MDK-ARM. To ready Keil for running the program, steps below should be followed:

- Install Keil MDK-ARM
- Install the following components through Keil's interface
    - ARM::CMSIS
    - Keil::MDK-Middleware
    - Keil::STM32L4xx_DFP
- Crete a project. Select **STM32L476RGTx** as the device.
- In the runtime environment, only **CMSIS core** should be selected
- Download the files below from https://web.eece.maine.edu/~zhu/book/lab.php and place them into the project folder
    - core_cm4_constants.s
    - stm32l476xx_constants.s
    - startup_stm32l476xx.s
- Move **ARM-Assembly-Word-Counter** files **main.c** and **word_count.s** into the project folder
- Open **Options for Target 'Target 1'**
- Go to **Linker** tab and select **Use Memory Layout** from **Target Dialog** option
- Go to **Debug** tab and select **Use Simulator** option
- Close options and click **Build** in the toolbar
- If there are no errors, the program is ready to be run
