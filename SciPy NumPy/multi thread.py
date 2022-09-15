#! /usr/bin/python3

from threading import Thread
import os
import time

def square_number(name):
    print('Hello ', name)
    time.sleep(1)

threads = []
num_threads = 10

#create threads
for i in range(num_threads):
    t = Thread(target=square_number, args=('friend',))
    threads.append(t)

#start
for t in threads:
    t.start()

#join
for t in threads:
    t.join()

print('end main')
