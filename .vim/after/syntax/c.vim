"	c.vim - VIM Colorful Syntax For C Language
"	To Make Life Easier When Coding Sandix. ;)
"
"	HOWTO:
"	1) Create ~/.vim/after/syntax/c.vim
"	2) Run [:syntax enable] or [:syntax on] in VIM
"
"	Actually, we only concern about the colors, not the syntax groups.
"	Hence the additional colorful words should not mess up the code. In my
"	opinion, the principle of color choosing is: Reduce Cross-Color Code!
"	Of course, feel free to choose your own favorite color schemes.
"

"
" Make them red because of their importance
"
syn keyword	cInclude	BUG
syn keyword	cInclude	BUG_ON
syn keyword	cInclude	WARN
syn keyword	cInclude	WARN_ON
syn keyword	cInclude	WARN_ON_ONCE
syn keyword	cInclude	BUILD_BUG_ON
syn keyword	cInclude	PCACHE_WARN
syn keyword	cInclude	PCACHE_WARN_ON
syn keyword	cInclude	PCACHE_WARN_ON_ONCE
syn keyword	cInclude	PCACHE_BUG_ON
syn keyword	cInclude	PCACHE_BUG_ON_PCM
syn keyword	cInclude	PCACHE_BUG_ON_VICTIM

syn keyword	cInclude	READ_ONCE
syn keyword	cInclude	WRITE_ONCE
syn keyword	cInclude	ACCESS_ONCE

syn keyword	cInclude	likely
syn keyword	cInclude	unlikely

syn keyword	cType		SYSCALL_DEFINE0
syn keyword	cType		SYSCALL_DEFINE1
syn keyword	cType		SYSCALL_DEFINE2
syn keyword	cType		SYSCALL_DEFINE3
syn keyword	cType		SYSCALL_DEFINE4
syn keyword	cType		SYSCALL_DEFINE5
syn keyword	cType		SYSCALL_DEFINE6
syn keyword	cType		SYSCALL_DEFINE7
syn keyword	cType		SYSCALL_DEFINE8

"
" Evil typedef
"
syn keyword	cType		__u8	__s8
syn keyword	cType		__u16	__s16
syn keyword	cType		__u32	__s32
syn keyword	cType		__u64	__s64
syn keyword	cType		u8	s8
syn keyword	cType		u16	s16
syn keyword	cType		u32	s32
syn keyword	cType		u64	s64
syn keyword	cType		__be16	__le16
syn keyword	cType		__be32	__le32
syn keyword	cType		__be64	__le64
syn keyword	cType		atomic_t
syn keyword	cType		cpumask_t
syn keyword	cType		spinlock_t
syn keyword	cType		mutex_t
syn keyword	cType		pgd_t pud_t pmd_t pte_t

"
" Compiler Labels
"
syn keyword	cLabel		asmlinkage
syn keyword	cLabel		dotraplinkage

syn keyword	cLabel		__section
syn keyword	cLabel		__init
syn keyword	cLabel		__initdata
syn keyword	cLabel		__read_mostly
syn keyword	cLabel		__cacheline_aligned
syn keyword	cLabel		__init_task_data
syn keyword	cLabel		__lockfunc
syn keyword	cLabel		__sched

syn keyword	cLabel		__weak
syn keyword	cLabel		__pure
syn keyword	cLabel		__packed
syn keyword	cLabel		__noreturn
syn keyword	cLabel		__unused
syn keyword	cLabel		__used
syn keyword	cLabel		__maybe_unused
syn keyword	cLabel		__always_unused
syn keyword	cLabel		__attribute_const
syn keyword	cLabel		__aligned
syn keyword	cLabel		__scanf
syn keyword	cLabel		__printf
syn keyword	cLabel		__alias
syn keyword	cLabel		__noinline
syn keyword	cLabel		__noinline_for_stack
syn keyword	cLabel		__always_inline
syn keyword	cLabel		ALWAYS_INLINE
syn keyword	cLabel		INLINE
syn keyword	cLabel		__must_check
syn keyword	cLabel		__cold
syn keyword	cLabel		__visible

syn keyword	cLabel		__user
syn keyword	cLabel		__kernel
syn keyword	cLabel		__safe
syn keyword	cLabel		__force
syn keyword	cLabel		__nocast
syn keyword	cLabel		__iomem
syn keyword	cLabel		__must_hold
syn keyword	cLabel		__acquires
syn keyword	cLabel		__releases
syn keyword	cLabel		__acquire
syn keyword	cLabel		__release
syn keyword	cLabel		__cond_lock
syn keyword	cLabel		__percpu
syn keyword	cLabel		__pmem
syn keyword	cLabel		__rcu
syn keyword	cLabel		__pmem

"
" Data Structures
"
syn keyword	cLabel		LIST_HEAD
syn keyword	cLabel		DEFINE_MUTEX
syn keyword	cLabel		DEFINE_BITMAP
syn keyword	cLabel		DECLARE_BITMAP
syn keyword	cLabel		EXPORT_SYMBOL
syn keyword	cLabel		DEFINE_SPINLOCK
syn keyword	cLabel		DEFINE_PER_CPU_SHARED_ALIGNED
syn keyword	cLabel		DEFINE_PER_CPU_ALIGNED
syn keyword	cLabel		DEFINE_PER_CPU_PAGE_ALIGNED
syn keyword	cLabel		DEFINE_PER_CPU_FIRST
syn keyword	cLabel		DEFINE_PER_CPU_READ_MOSTLY
syn keyword	cLabel		DEFINE_PER_CPU
syn keyword	cLabel		DEFINE_WAITQUEUE
syn keyword	cLabel		DECLARE_WAITQUEUE
syn keyword	cLabel		DEFINE_COMPLETION
syn keyword	cLabel		DECLARE_COMPLETION
syn keyword	cLabel		DEFINE_TIMER

"
" Loops
"
syn keyword	cLabel		for_each_possible_cpu
syn keyword	cLabel		for_each_online_cpu
syn keyword	cLabel		for_each_set_bit
syn keyword	cLabel		for_each_clear_bit
syn keyword	cLabel		list_for_each
syn keyword	cLabel		list_for_each_entry
syn keyword	cLabel		list_for_each_entry_safe

syn keyword	cLabel		do_each_thread
syn keyword	cLabel		for_each_thread
syn keyword	cLabel		for_each_process
syn keyword	cLabel		for_each_process_thread
syn keyword	cLabel		while_each_thread

syn keyword	cLabel		pcache_for_each_way_set
syn keyword	cLabel		pcache_for_each_set
syn keyword	cLabel		pcache_for_each_way

"
" Signal Constants
"
syn keyword	cConstant	SIGBUS
syn keyword	cConstant	SIGSTKFLT
syn keyword	cConstant	SIGURG
syn keyword	cConstant	SIGXCPU
syn keyword	cConstant	SIGXFSZ
syn keyword	cConstant	SIGVTALRM
syn keyword	cConstant	SIGPROF
syn keyword	cConstant	SIGPROF
