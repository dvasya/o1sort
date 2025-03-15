# o1sort

## Sleep sort but in constant time

Uses a modified `sleepUntilHires` [implementation](https://stackoverflow.com/questions/645992/sleep-until-a-specific-time-date) by [Félix Hauri](https://f-hauri.ch/), which requires BASH version >5. The original 4chan sleepsort algorithm is also included for comparison.

Example:

```
$ /opt/homebrew/bin/bash o1sort.bash 10 20 40 3 5 18 1 2
1
2
3
5
10
18
20
40
```