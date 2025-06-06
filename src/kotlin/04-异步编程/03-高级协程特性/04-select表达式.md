---
title: select表达式(实验性)
icon: select
order: 4
---

# select表达式(实验性)

select表达式是Kotlin协程的一个实验性特性，允许同时等待多个挂起函数，并选择第一个完成的结果。这类似于Go语言中的select语句，对于需要处理多个并发操作的场景非常有用，如超时处理或竞态条件。
