#!/usr/bin/env python3

import os
from subprocess import check_output

def get_pmem():
    pmem = check_output(["sh", "-c", f"pmap -d {os.getpid()}|tail -n 1"], encoding="latin1").split()[3]
    return pmem

def get_gpumem():
    pid = os.getpid()
    csv=check_output(["nvidia-smi", "--query-compute-apps=pid,used_memory", "--format=csv"], encoding="latin1").split("\n")
    for pid, val in [x.split(",") for x in csv]:
        if pid == str(os.getpid()):
            return val
    return -1


if __name__ == "__main__":
    import torch
    x=torch.rand(3,3, device="cuda:0")
    print(torch.__version__, get_pmem(), get_gpumem())

import torch
from torch.profiler import profile, record_function, ProfilerActivity

def mem():
    #  print("max_m_allocated: ", torch.cuda.max_memory_allocated())
    #  print("max_m_cached: ", torch.cuda.max_memory_cached())
    #  print("max_m_reserved: ", torch.cuda.max_memory_reserved())
    #  print("m_allocated: ", torch.cuda.memory_allocated())
    #  print("m_cached: ", torch.cuda.memory_cached())
    #  print("m_reserved: ", torch.cuda.memory_reserved())
    #  print(torch.cuda.memory_stats())
    #  print()
    #  print(torch.cuda.memory_snapshot())
    #  print()
    print(torch.cuda.memory_summary())



mem()
with profile(activities=[ProfilerActivity.CPU, ProfilerActivity.CUDA], profile_memory=True, record_shapes=True) as prof:
    test = torch.rand(1024, 1024)
    test1 = test.to('cuda')

mem()

print(prof.key_averages().table(sort_by="self_cpu_memory_usage", row_limit=10))

print(prof.key_averages().table(sort_by="cpu_memory_usage", row_limit=10))

input()
