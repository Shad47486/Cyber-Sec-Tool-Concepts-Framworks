# Elvate to root user so you dont need to keep using sudo (generally not recommanded action)

- sudo su

## Find and Filter files

- Cut the 1st field:
  - cat test.txt | cut -f 1

- Cut the 1st column:
  - cat test.txt | cut -c1

- Filter specific keywords:
  - cat test.txt | grep 'keyword'

- Sort outputs alphabetically:
  - cat test.txt | sort
- Numerically:
  - cat test.txt | sort -n

- Eliminate duplicate lines:
  - cat test.txt | uniq

- Count line numbers:
  - cat test.txt | wc -l

- Show line #'s
  - cat test.txt | nl

## Printing specific lines

- Printing line #:
  - cat test.txt | sed -n '11p'

- Print lines between 10-15:
  - cat test.txt | sed -n '10,15p'

- Print lines below 11:
  - cat test.txt | awk 'NR < 11 {print $0}'

- Print line 11:
  - cat test.txt | awk 'NR == 11 {print $0}'

## Remmove dup values

- sort | uniq

## Remove Dup values & count the # of occurrences for each value

- sort | uniq -c

## Sort numerically and recursively

- sort -nr

## Split the string on every dot & print keep the 1st two fields

- cut -d '.' -f 1-2

## Display lines that don't match the "test" string

- grep -v 'test'

## Display Lines that dont match one or both "test1' & 'test2' strings

- grep -v -e 'test1' -e 'test2'

## search the "testvalue1: string everywhere, organise column spaces & view the output with less

- grep -rin Testvalue1 * | column -t | less -S

## Running the file command on all files in a dir and outputing results

- file * | nl