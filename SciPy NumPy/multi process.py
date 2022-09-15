#! /usr/bin/python3

from multiprocessing import Process
import os
import time

def square_number(name):
    print('Hello ', name)
    time.sleep(0.1)

processes = []
num_processes = os.cpu_count()

#create processes
for i in range(num_processes):
    p = Process(target=square_number, args=('bob',))
    processes.append(p)

#start
for p in processes:
    p.start()

#join
for p in processes:
    p.join()

print('end main')