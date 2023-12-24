# Tip and tricks that can help to understand Linux better

# When outputs of 'strings' command is too big to be shown on the terminal completely, a good solution can be to redirect it, write it to a file, & read it using vim, nano or any other reading commands:
  - EX of syntax:
    - strings wannacry>str
      - Can use 'more' or 'less operators to parse the output in a more visible manner.
        - EX of syntax:
          - strings wannacry |more   
