#pmake: trap remote os_qnx cpu_i86 cpu_386 tcp x86
host_cpu = 386
host_os  = qnx

target_cpu = x86
target_os  = qnx

srv = tcp
which = TRAP
remote_link = 1

extra_objs = qtcpsupp.obj
extra_libs = $(watcom_dir)/lib/qnx/socket3r.lib
inc_dirs = -I"$(watcom_dir)/qnx_h"

!include $(trap_dir)/master.mif
