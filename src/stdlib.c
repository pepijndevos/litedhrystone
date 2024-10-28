// This is free and unencumbered software released into the public domain.
//
// Anyone is free to copy, modify, publish, use, compile, sell, or
// distribute this software, either in source code form or as a compiled
// binary, for any purpose, commercial or non-commercial, and by any
// means.

#include <stdarg.h>
#include <stdint.h>
#include <generated/soc.h>
#include <generated/csr.h>
#include <sys/time.h>


void setStats(int enable);

void setStats(int enable)
{

}

int gettimeofday(struct timeval *tv, void * /*tzv*/);

int gettimeofday(struct timeval *tv, void * /*tzv*/)
{
	unsigned long uptime;

	timer0_uptime_latch_write(1);
	uptime = timer0_uptime_cycles_read();
    
    tv->tv_sec = uptime;
    return 0;
}
