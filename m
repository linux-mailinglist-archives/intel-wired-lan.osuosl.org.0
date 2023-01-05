Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F30E865F116
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 17:27:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DECDF8214C;
	Thu,  5 Jan 2023 16:27:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DECDF8214C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672936049;
	bh=4m0S/3EPvRj3AAHAQ3B9n7XCc99cimu4xAdLCWr43V4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=onvOJzRRxQUU339+KCPdIfu7jym9nUBgsEPqXLb1uPotHJjPWAIQ9gKoHXL81+/lP
	 TA60s2TIJJ8v/eYEGXsDgKJdfC92K2Hbq0Rz4Tf7Y7oJapRcuSt1pEmNbeGRzUEdmW
	 lkLA10VgBAFwr1LIen3BhgF6gq8HUBp3HRTfBNAMo/2ZqHnN9snqJsXIsSlk6JW+X8
	 ERytTxPJA5lhwmeRvtdAHbYvsUQRXL1ndaVwZUXSrFlEtZZBCmZdeUMfBS3N/l/rNc
	 +mB8PT1fIf/JnkoZihqDqhghZ5xjJd1TXRLsCd8rBLDEJ16m2EygqJuybLSKAeTiKW
	 lsnzT0W/DUyKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yBcYBUmTDRE2; Thu,  5 Jan 2023 16:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C15A482132;
	Thu,  5 Jan 2023 16:27:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C15A482132
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A25B1BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 11:53:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39CDE40C11
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 11:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 39CDE40C11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xueleSLHMJuX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 11:53:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7AB840C0B
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7AB840C0B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 11:53:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="320892765"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="320892765"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 03:53:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="900905362"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="900905362"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 05 Jan 2023 03:53:18 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDOo9-0001e1-2G;
 Thu, 05 Jan 2023 11:53:17 +0000
Date: Thu, 5 Jan 2023 19:53:02 +0800
From: kernel test robot <lkp@intel.com>
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Message-ID: <202301051926.QncTT3WI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sH9aJYIxL/Y0OuZN"
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 05 Jan 2023 16:27:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672919601; x=1704455601;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=rjyxwrBWd7PfldkgGDhvFHLyP73nS+TO43tQuy8bB3s=;
 b=lAduxyQxu+be8u2n2L4lYod+j51lRqQvRALQvTjBdAvM5Lg9JcVbUjuk
 RoWweR38iQFWxI3aCAakSuIvAHTG9nWD3QvMWHrE0LHJqiV+0vlqXJXve
 RtBh6UFxpWaG1ZFR3PKOpFpzTv8uifOOgwis0MMviiaVAty4uxU1v7Fvm
 CRM01kQx34AMGOu0d3haEeYvAYb1ZMANoO6RCx6vJ8RNzuq90NvJFmFI8
 ag22NJql7XWPMCK+knESXWq4VMTzj+vfT+M1GCWvWlc7UKdzp7Zl3hh8a
 siPl74sM1xTWFXI4gfwCCyEKNW7D3M8RUU1a46MeFbm0+13rgBpHq/Oat
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lAduxyQx
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 58/61]
 drivers/net/ethernet/intel/ice/ice_debugfs.c:67:6: error: redefinition of
 'ice_debugfs_fwlog_init'
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--sH9aJYIxL/Y0OuZN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   ed145d0a3bdc74466c65ea28662ed856890ae4f2
commit: be6c31bdaadacabdaa4b0d2a59a2b6b592ea1eb2 [58/61] ice: use debugfs to output FW log data
config: sparc-randconfig-r025-20230105
compiler: sparc-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=be6c31bdaadacabdaa4b0d2a59a2b6b592ea1eb2
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout be6c31bdaadacabdaa4b0d2a59a2b6b592ea1eb2
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sparc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sparc SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_debugfs.c:67:6: error: redefinition of 'ice_debugfs_fwlog_init'
      67 | void ice_debugfs_fwlog_init(struct ice_pf *pf)
         |      ^~~~~~~~~~~~~~~~~~~~~~
   In file included from drivers/net/ethernet/intel/ice/ice_debugfs.c:7:
   drivers/net/ethernet/intel/ice/ice.h:889:20: note: previous definition of 'ice_debugfs_fwlog_init' with type 'void(struct ice_pf *)'
     889 | static inline void ice_debugfs_fwlog_init(struct ice_pf *pf) { }
         |                    ^~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_debugfs.c:95:6: error: redefinition of 'ice_debugfs_init'
      95 | void ice_debugfs_init(void)
         |      ^~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice.h:890:20: note: previous definition of 'ice_debugfs_init' with type 'void(void)'
     890 | static inline void ice_debugfs_init(void) { }
         |                    ^~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ice/ice_debugfs.c:105:6: error: redefinition of 'ice_debugfs_exit'
     105 | void ice_debugfs_exit(void)
         |      ^~~~~~~~~~~~~~~~
   drivers/net/ethernet/intel/ice/ice.h:891:20: note: previous definition of 'ice_debugfs_exit' with type 'void(void)'
     891 | static inline void ice_debugfs_exit(void) { }
         |                    ^~~~~~~~~~~~~~~~


vim +/ice_debugfs_fwlog_init +67 drivers/net/ethernet/intel/ice/ice_debugfs.c

    62	
    63	/**
    64	 * ice_debugfs_fwlog_init - setup the debugfs directory
    65	 * @pf: the ice that is starting up
    66	 */
  > 67	void ice_debugfs_fwlog_init(struct ice_pf *pf)
    68	{
    69		const char *name = pci_name(pf->pdev);
    70		struct dentry *pfile;
    71	
    72		/* only support fw log commands on PF 0 */
    73		if (pf->hw.bus.func)
    74			return;
    75	
    76		pf->ice_debugfs_pf = debugfs_create_dir(name, ice_debugfs_root);
    77		if (IS_ERR(pf->ice_debugfs_pf))
    78			return;
    79	
    80		pfile = debugfs_create_file("fwlog", 0400, pf->ice_debugfs_pf, pf,
    81					    &ice_debugfs_command_fops);
    82		if (!pfile)
    83			goto create_failed;
    84	
    85		return;
    86	
    87	create_failed:
    88		dev_err(ice_pf_to_dev(pf), "debugfs dir/file for %s failed\n", name);
    89		debugfs_remove_recursive(pf->ice_debugfs_pf);
    90	}
    91	
    92	/**
    93	 * ice_debugfs_init - create root directory for debugfs entries
    94	 */
  > 95	void ice_debugfs_init(void)
    96	{
    97		ice_debugfs_root = debugfs_create_dir(KBUILD_MODNAME, NULL);
    98		if (IS_ERR(ice_debugfs_root))
    99			pr_info("init of debugfs failed\n");
   100	}
   101	
   102	/**
   103	 * ice_debugfs_exit - remove debugfs entries
   104	 */
 > 105	void ice_debugfs_exit(void)

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

--sH9aJYIxL/Y0OuZN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=config

#
# Automatically generated file; DO NOT EDIT.
# Linux/sparc 6.1.0 Kernel Configuration
#
CONFIG_CC_VERSION_TEXT="sparc-linux-gcc (GCC) 12.1.0"
CONFIG_CC_IS_GCC=y
CONFIG_GCC_VERSION=120100
CONFIG_CLANG_VERSION=0
CONFIG_AS_IS_GNU=y
CONFIG_AS_VERSION=23800
CONFIG_LD_IS_BFD=y
CONFIG_LD_VERSION=23800
CONFIG_LLD_VERSION=0
CONFIG_CC_HAS_ASM_GOTO_OUTPUT=y
CONFIG_CC_HAS_ASM_GOTO_TIED_OUTPUT=y
CONFIG_CC_HAS_ASM_INLINE=y
CONFIG_CC_HAS_NO_PROFILE_FN_ATTR=y
CONFIG_PAHOLE_VERSION=123
CONFIG_IRQ_WORK=y

#
# General setup
#
CONFIG_BROKEN_ON_SMP=y
CONFIG_INIT_ENV_ARG_LIMIT=32
CONFIG_COMPILE_TEST=y
# CONFIG_WERROR is not set
CONFIG_LOCALVERSION=""
CONFIG_BUILD_SALT=""
CONFIG_DEFAULT_INIT=""
CONFIG_DEFAULT_HOSTNAME="(none)"
CONFIG_SYSVIPC=y
CONFIG_SYSVIPC_SYSCTL=y
CONFIG_POSIX_MQUEUE=y
CONFIG_POSIX_MQUEUE_SYSCTL=y
# CONFIG_WATCH_QUEUE is not set
# CONFIG_CROSS_MEMORY_ATTACH is not set
# CONFIG_USELIB is not set
CONFIG_AUDIT=y

#
# IRQ subsystem
#
CONFIG_GENERIC_IRQ_SHOW=y
CONFIG_GENERIC_IRQ_CHIP=y
CONFIG_IRQ_DOMAIN=y
CONFIG_IRQ_SIM=y
CONFIG_IRQ_DOMAIN_HIERARCHY=y
CONFIG_GENERIC_MSI_IRQ=y
# end of IRQ subsystem

CONFIG_GENERIC_CLOCKEVENTS=y
CONFIG_TIME_KUNIT_TEST=m

#
# Timers subsystem
#
CONFIG_TICK_ONESHOT=y
CONFIG_NO_HZ_COMMON=y
# CONFIG_HZ_PERIODIC is not set
CONFIG_NO_HZ_IDLE=y
CONFIG_NO_HZ=y
CONFIG_HIGH_RES_TIMERS=y
# end of Timers subsystem

CONFIG_BPF=y
CONFIG_HAVE_CBPF_JIT=y

#
# BPF subsystem
#
# CONFIG_BPF_SYSCALL is not set
CONFIG_BPF_JIT=y
# end of BPF subsystem

CONFIG_PREEMPT_NONE_BUILD=y
CONFIG_PREEMPT_NONE=y
# CONFIG_PREEMPT_VOLUNTARY is not set
# CONFIG_PREEMPT is not set

#
# CPU/Task time and stats accounting
#
CONFIG_TICK_CPU_ACCOUNTING=y
CONFIG_BSD_PROCESS_ACCT=y
CONFIG_BSD_PROCESS_ACCT_V3=y
# CONFIG_TASKSTATS is not set
# CONFIG_PSI is not set
# end of CPU/Task time and stats accounting

CONFIG_CPU_ISOLATION=y

#
# RCU Subsystem
#
CONFIG_TINY_RCU=y
# CONFIG_RCU_EXPERT is not set
CONFIG_SRCU=y
CONFIG_TINY_SRCU=y
# end of RCU Subsystem

CONFIG_IKCONFIG=y
CONFIG_IKCONFIG_PROC=y
CONFIG_IKHEADERS=m
CONFIG_LOG_BUF_SHIFT=17
CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=13

#
# Scheduler features
#
# end of Scheduler features

CONFIG_CC_IMPLICIT_FALLTHROUGH="-Wimplicit-fallthrough=5"
CONFIG_GCC12_NO_ARRAY_BOUNDS=y
CONFIG_CC_NO_ARRAY_BOUNDS=y
CONFIG_CGROUPS=y
CONFIG_PAGE_COUNTER=y
CONFIG_CGROUP_FAVOR_DYNMODS=y
CONFIG_MEMCG=y
CONFIG_MEMCG_KMEM=y
CONFIG_BLK_CGROUP=y
CONFIG_CGROUP_WRITEBACK=y
CONFIG_CGROUP_SCHED=y
CONFIG_FAIR_GROUP_SCHED=y
# CONFIG_CFS_BANDWIDTH is not set
# CONFIG_RT_GROUP_SCHED is not set
# CONFIG_CGROUP_PIDS is not set
CONFIG_CGROUP_RDMA=y
# CONFIG_CGROUP_FREEZER is not set
# CONFIG_CGROUP_DEVICE is not set
CONFIG_CGROUP_CPUACCT=y
# CONFIG_CGROUP_MISC is not set
CONFIG_NAMESPACES=y
CONFIG_UTS_NS=y
# CONFIG_IPC_NS is not set
# CONFIG_USER_NS is not set
# CONFIG_PID_NS is not set
CONFIG_NET_NS=y
# CONFIG_CHECKPOINT_RESTORE is not set
CONFIG_SCHED_AUTOGROUP=y
CONFIG_SYSFS_DEPRECATED=y
CONFIG_SYSFS_DEPRECATED_V2=y
CONFIG_RELAY=y
CONFIG_BLK_DEV_INITRD=y
CONFIG_INITRAMFS_SOURCE=""
# CONFIG_RD_GZIP is not set
CONFIG_RD_BZIP2=y
# CONFIG_RD_LZMA is not set
CONFIG_RD_XZ=y
CONFIG_RD_LZO=y
# CONFIG_RD_LZ4 is not set
CONFIG_RD_ZSTD=y
# CONFIG_BOOT_CONFIG is not set
# CONFIG_INITRAMFS_PRESERVE_MTIME is not set
# CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE is not set
CONFIG_CC_OPTIMIZE_FOR_SIZE=y
CONFIG_SYSCTL=y
CONFIG_HAVE_UID16=y
CONFIG_SYSCTL_EXCEPTION_TRACE=y
# CONFIG_EXPERT is not set
CONFIG_UID16=y
CONFIG_MULTIUSER=y
CONFIG_SGETMASK_SYSCALL=y
CONFIG_SYSFS_SYSCALL=y
CONFIG_FHANDLE=y
CONFIG_POSIX_TIMERS=y
CONFIG_PRINTK=y
CONFIG_BUG=y
CONFIG_ELF_CORE=y
CONFIG_BASE_FULL=y
CONFIG_FUTEX=y
CONFIG_FUTEX_PI=y
CONFIG_EPOLL=y
CONFIG_SIGNALFD=y
CONFIG_TIMERFD=y
CONFIG_EVENTFD=y
CONFIG_SHMEM=y
CONFIG_AIO=y
CONFIG_IO_URING=y
CONFIG_ADVISE_SYSCALLS=y
CONFIG_MEMBARRIER=y
CONFIG_KALLSYMS=y
# CONFIG_KALLSYMS_SELFTEST is not set
CONFIG_KALLSYMS_BASE_RELATIVE=y
# CONFIG_EMBEDDED is not set

#
# Kernel Performance Events And Counters
#
# end of Kernel Performance Events And Counters

CONFIG_SYSTEM_DATA_VERIFICATION=y
# CONFIG_PROFILING is not set
# end of General setup

# CONFIG_64BIT is not set
CONFIG_SPARC=y
CONFIG_SPARC32=y
CONFIG_ARCH_PROC_KCORE_TEXT=y
CONFIG_CPU_BIG_ENDIAN=y
CONFIG_AUDIT_ARCH=y
CONFIG_MMU=y
CONFIG_HIGHMEM=y
CONFIG_GENERIC_ISA_DMA=y
CONFIG_PGTABLE_LEVELS=3

#
# Processor type and features
#
# CONFIG_SMP is not set
# CONFIG_HZ_100 is not set
CONFIG_HZ_250=y
# CONFIG_HZ_300 is not set
# CONFIG_HZ_1000 is not set
CONFIG_HZ=250
CONFIG_SCHED_HRTICK=y
CONFIG_GENERIC_HWEIGHT=y
CONFIG_GENERIC_CALIBRATE_DELAY=y
CONFIG_ARCH_MAY_HAVE_PC_FDC=y
CONFIG_EMULATED_CMPXCHG=y
CONFIG_ARCH_FORCE_MAX_ORDER=13
CONFIG_SUN_PM=y
CONFIG_SPARC_LED=y
CONFIG_SERIAL_CONSOLE=y
CONFIG_SPARC_LEON=y

#
# U-Boot options
#
CONFIG_UBOOT_LOAD_ADDR=0x40004000
CONFIG_UBOOT_FLASH_ADDR=0x00080000
CONFIG_UBOOT_ENTRY_ADDR=0xf0004000
# end of U-Boot options
# end of Processor type and features

#
# Bus options (PCI etc.)
#
CONFIG_SBUS=y
CONFIG_SBUSCHAR=y
CONFIG_LEON_PCI=y
CONFIG_SPARC_GRPCI1=y
# CONFIG_SPARC_GRPCI2 is not set
# CONFIG_SUN_OPENPROMFS is not set
# end of Bus options (PCI etc.)

#
# Misc Linux/SPARC drivers
#
CONFIG_SUN_OPENPROMIO=m
# CONFIG_TADPOLE_TS102_UCTRL is not set
# end of Misc Linux/SPARC drivers

#
# General architecture-dependent options
#
CONFIG_CRASH_CORE=y
CONFIG_TRACE_IRQFLAGS_SUPPORT=y
CONFIG_HAVE_ARCH_TRACEHOOK=y
CONFIG_GENERIC_SMP_IDLE_THREAD=y
CONFIG_ARCH_32BIT_OFF_T=y
CONFIG_HAVE_ASM_MODVERSIONS=y
CONFIG_ARCH_WANT_IPC_PARSE_VERSION=y
CONFIG_LTO_NONE=y
CONFIG_MODULES_USE_ELF_RELA=y
CONFIG_HAVE_EXIT_THREAD=y
CONFIG_PAGE_SIZE_LESS_THAN_64KB=y
CONFIG_PAGE_SIZE_LESS_THAN_256KB=y
CONFIG_ODD_RT_SIGACTION=y
CONFIG_OLD_SIGSUSPEND=y
CONFIG_OLD_SIGACTION=y
# CONFIG_COMPAT_32BIT_TIME is not set
CONFIG_CPU_NO_EFFICIENT_FFS=y

#
# GCOV-based kernel profiling
#
# end of GCOV-based kernel profiling

CONFIG_FUNCTION_ALIGNMENT=0
# end of General architecture-dependent options

CONFIG_RT_MUTEXES=y
CONFIG_BASE_SMALL=0
CONFIG_MODULES=y
# CONFIG_MODULE_FORCE_LOAD is not set
# CONFIG_MODULE_UNLOAD is not set
CONFIG_MODVERSIONS=y
CONFIG_ASM_MODVERSIONS=y
CONFIG_MODULE_SRCVERSION_ALL=y
# CONFIG_MODULE_SIG is not set
# CONFIG_MODULE_COMPRESS_NONE is not set
# CONFIG_MODULE_COMPRESS_GZIP is not set
# CONFIG_MODULE_COMPRESS_XZ is not set
CONFIG_MODULE_COMPRESS_ZSTD=y
CONFIG_MODULE_DECOMPRESS=y
# CONFIG_MODULE_ALLOW_MISSING_NAMESPACE_IMPORTS is not set
CONFIG_MODPROBE_PATH="/sbin/modprobe"
CONFIG_BLOCK=y
# CONFIG_BLOCK_LEGACY_AUTOLOAD is not set
CONFIG_BLK_RQ_ALLOC_TIME=y
CONFIG_BLK_CGROUP_RWSTAT=y
CONFIG_BLK_DEV_BSG_COMMON=y
CONFIG_BLK_ICQ=y
CONFIG_BLK_DEV_BSGLIB=y
CONFIG_BLK_DEV_INTEGRITY=y
CONFIG_BLK_DEV_INTEGRITY_T10=m
CONFIG_BLK_DEV_ZONED=y
# CONFIG_BLK_DEV_THROTTLING is not set
# CONFIG_BLK_WBT is not set
CONFIG_BLK_CGROUP_IOLATENCY=y
# CONFIG_BLK_CGROUP_FC_APPID is not set
CONFIG_BLK_CGROUP_IOCOST=y
# CONFIG_BLK_CGROUP_IOPRIO is not set
# CONFIG_BLK_SED_OPAL is not set
# CONFIG_BLK_INLINE_ENCRYPTION is not set

#
# Partition Types
#
# CONFIG_PARTITION_ADVANCED is not set
CONFIG_MSDOS_PARTITION=y
CONFIG_SUN_PARTITION=y
CONFIG_EFI_PARTITION=y
# end of Partition Types

CONFIG_BLK_MQ_PCI=y
CONFIG_BLK_MQ_VIRTIO=y

#
# IO Schedulers
#
CONFIG_MQ_IOSCHED_DEADLINE=y
CONFIG_MQ_IOSCHED_KYBER=m
CONFIG_IOSCHED_BFQ=y
CONFIG_BFQ_GROUP_IOSCHED=y
CONFIG_BFQ_CGROUP_DEBUG=y
# end of IO Schedulers

CONFIG_ASN1=y
CONFIG_INLINE_SPIN_UNLOCK_IRQ=y
CONFIG_INLINE_READ_UNLOCK=y
CONFIG_INLINE_READ_UNLOCK_IRQ=y
CONFIG_INLINE_WRITE_UNLOCK=y
CONFIG_INLINE_WRITE_UNLOCK_IRQ=y

#
# Executable file formats
#
CONFIG_BINFMT_ELF=y
CONFIG_ELFCORE=y
CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y
CONFIG_BINFMT_SCRIPT=y
CONFIG_BINFMT_MISC=m
CONFIG_COREDUMP=y
# end of Executable file formats

#
# Memory Management options
#
CONFIG_SWAP=y
# CONFIG_ZSWAP is not set

#
# SLAB allocator options
#
# CONFIG_SLAB is not set
CONFIG_SLUB=y
CONFIG_SLAB_MERGE_DEFAULT=y
CONFIG_SLAB_FREELIST_RANDOM=y
# CONFIG_SLAB_FREELIST_HARDENED is not set
CONFIG_SLUB_STATS=y
# end of SLAB allocator options

# CONFIG_SHUFFLE_PAGE_ALLOCATOR is not set
# CONFIG_COMPAT_BRK is not set
CONFIG_FLATMEM=y
CONFIG_MEMORY_ISOLATION=y
CONFIG_SPLIT_PTLOCK_CPUS=999999
CONFIG_MEMORY_BALLOON=y
# CONFIG_BALLOON_COMPACTION is not set
CONFIG_COMPACTION=y
CONFIG_COMPACT_UNEVICTABLE_DEFAULT=1
CONFIG_PAGE_REPORTING=y
CONFIG_MIGRATION=y
CONFIG_CONTIG_ALLOC=y
# CONFIG_BOUNCE is not set
# CONFIG_KSM is not set
CONFIG_DEFAULT_MMAP_MIN_ADDR=4096
CONFIG_NEED_PER_CPU_KM=y
CONFIG_CMA=y
CONFIG_CMA_SYSFS=y
CONFIG_CMA_AREAS=7
CONFIG_PAGE_IDLE_FLAG=y
CONFIG_IDLE_PAGE_TRACKING=y
CONFIG_ZONE_DMA=y
CONFIG_VM_EVENT_COUNTERS=y
CONFIG_PERCPU_STATS=y

#
# GUP_TEST needs to have DEBUG_FS enabled
#
CONFIG_KMAP_LOCAL=y
# CONFIG_ANON_VMA_NAME is not set
# CONFIG_USERFAULTFD is not set
# CONFIG_LRU_GEN is not set

#
# Data Access Monitoring
#
CONFIG_DAMON=y
CONFIG_DAMON_VADDR=y
CONFIG_DAMON_PADDR=y
# CONFIG_DAMON_SYSFS is not set
CONFIG_DAMON_RECLAIM=y
CONFIG_DAMON_LRU_SORT=y
# end of Data Access Monitoring
# end of Memory Management options

CONFIG_NET=y
CONFIG_SKB_EXTENSIONS=y

#
# Networking options
#
# CONFIG_PACKET is not set
CONFIG_UNIX=y
CONFIG_UNIX_SCM=y
CONFIG_AF_UNIX_OOB=y
CONFIG_UNIX_DIAG=m
# CONFIG_INET is not set
CONFIG_NETWORK_SECMARK=y
CONFIG_NET_PTP_CLASSIFY=y
CONFIG_NETWORK_PHY_TIMESTAMPING=y
# CONFIG_NETFILTER is not set
# CONFIG_ATM is not set
CONFIG_STP=y
CONFIG_GARP=y
CONFIG_BRIDGE=y
# CONFIG_BRIDGE_VLAN_FILTERING is not set
# CONFIG_BRIDGE_MRP is not set
# CONFIG_BRIDGE_CFM is not set
CONFIG_VLAN_8021Q=y
CONFIG_VLAN_8021Q_GVRP=y
# CONFIG_VLAN_8021Q_MVRP is not set
CONFIG_LLC=y
CONFIG_LLC2=m
CONFIG_ATALK=y
CONFIG_DEV_APPLETALK=y
CONFIG_IPDDP=y
# CONFIG_IPDDP_ENCAP is not set
CONFIG_X25=y
# CONFIG_LAPB is not set
CONFIG_PHONET=m
CONFIG_IEEE802154=y
CONFIG_IEEE802154_NL802154_EXPERIMENTAL=y
CONFIG_IEEE802154_SOCKET=y
CONFIG_MAC802154=m
CONFIG_NET_SCHED=y

#
# Queueing/Scheduling
#
# CONFIG_NET_SCH_CBQ is not set
# CONFIG_NET_SCH_HTB is not set
# CONFIG_NET_SCH_HFSC is not set
CONFIG_NET_SCH_PRIO=m
CONFIG_NET_SCH_MULTIQ=y
CONFIG_NET_SCH_RED=y
CONFIG_NET_SCH_SFB=m
CONFIG_NET_SCH_SFQ=m
CONFIG_NET_SCH_TEQL=y
# CONFIG_NET_SCH_TBF is not set
# CONFIG_NET_SCH_CBS is not set
CONFIG_NET_SCH_ETF=y
# CONFIG_NET_SCH_TAPRIO is not set
# CONFIG_NET_SCH_GRED is not set
# CONFIG_NET_SCH_DSMARK is not set
CONFIG_NET_SCH_NETEM=y
# CONFIG_NET_SCH_DRR is not set
CONFIG_NET_SCH_MQPRIO=m
CONFIG_NET_SCH_SKBPRIO=y
# CONFIG_NET_SCH_CHOKE is not set
# CONFIG_NET_SCH_QFQ is not set
CONFIG_NET_SCH_CODEL=m
# CONFIG_NET_SCH_FQ_CODEL is not set
# CONFIG_NET_SCH_CAKE is not set
CONFIG_NET_SCH_FQ=y
CONFIG_NET_SCH_HHF=m
CONFIG_NET_SCH_PIE=m
# CONFIG_NET_SCH_FQ_PIE is not set
# CONFIG_NET_SCH_INGRESS is not set
CONFIG_NET_SCH_PLUG=m
CONFIG_NET_SCH_ETS=y
CONFIG_NET_SCH_DEFAULT=y
# CONFIG_DEFAULT_FQ is not set
# CONFIG_DEFAULT_CODEL is not set
# CONFIG_DEFAULT_SFQ is not set
CONFIG_DEFAULT_PFIFO_FAST=y
CONFIG_DEFAULT_NET_SCH="pfifo_fast"

#
# Classification
#
CONFIG_NET_CLS=y
CONFIG_NET_CLS_BASIC=y
# CONFIG_NET_CLS_TCINDEX is not set
CONFIG_NET_CLS_FW=y
# CONFIG_NET_CLS_U32 is not set
# CONFIG_NET_CLS_RSVP is not set
CONFIG_NET_CLS_RSVP6=y
CONFIG_NET_CLS_FLOW=m
# CONFIG_NET_CLS_CGROUP is not set
CONFIG_NET_CLS_BPF=m
# CONFIG_NET_CLS_FLOWER is not set
CONFIG_NET_CLS_MATCHALL=m
CONFIG_NET_EMATCH=y
CONFIG_NET_EMATCH_STACK=32
# CONFIG_NET_EMATCH_CMP is not set
CONFIG_NET_EMATCH_NBYTE=y
# CONFIG_NET_EMATCH_U32 is not set
CONFIG_NET_EMATCH_META=m
CONFIG_NET_EMATCH_TEXT=y
CONFIG_NET_EMATCH_CANID=m
CONFIG_NET_CLS_ACT=y
CONFIG_NET_ACT_POLICE=y
# CONFIG_NET_ACT_GACT is not set
CONFIG_NET_ACT_MIRRED=m
# CONFIG_NET_ACT_SAMPLE is not set
CONFIG_NET_ACT_NAT=y
# CONFIG_NET_ACT_PEDIT is not set
CONFIG_NET_ACT_SIMP=m
CONFIG_NET_ACT_SKBEDIT=m
CONFIG_NET_ACT_MPLS=y
# CONFIG_NET_ACT_VLAN is not set
CONFIG_NET_ACT_BPF=y
CONFIG_NET_ACT_SKBMOD=y
CONFIG_NET_ACT_IFE=m
CONFIG_NET_ACT_TUNNEL_KEY=y
# CONFIG_NET_ACT_GATE is not set
CONFIG_NET_IFE_SKBMARK=m
# CONFIG_NET_IFE_SKBPRIO is not set
# CONFIG_NET_IFE_SKBTCINDEX is not set
CONFIG_NET_TC_SKB_EXT=y
CONFIG_NET_SCH_FIFO=y
CONFIG_DCB=y
CONFIG_DNS_RESOLVER=y
CONFIG_BATMAN_ADV=y
CONFIG_BATMAN_ADV_BATMAN_V=y
# CONFIG_BATMAN_ADV_NC is not set
CONFIG_BATMAN_ADV_DEBUG=y
CONFIG_VSOCKETS=m
CONFIG_VSOCKETS_DIAG=m
CONFIG_VSOCKETS_LOOPBACK=m
CONFIG_VIRTIO_VSOCKETS=m
CONFIG_VIRTIO_VSOCKETS_COMMON=m
CONFIG_NETLINK_DIAG=y
# CONFIG_MPLS is not set
CONFIG_NET_NSH=y
CONFIG_HSR=m
CONFIG_QRTR=y
CONFIG_QRTR_SMD=m
CONFIG_QRTR_TUN=m
# CONFIG_QRTR_MHI is not set
# CONFIG_CGROUP_NET_PRIO is not set
# CONFIG_CGROUP_NET_CLASSID is not set
CONFIG_NET_RX_BUSY_POLL=y
CONFIG_BQL=y

#
# Network testing
#
# end of Network testing
# end of Networking options

CONFIG_HAMRADIO=y

#
# Packet Radio protocols
#
CONFIG_AX25=y
CONFIG_AX25_DAMA_SLAVE=y
CONFIG_NETROM=m
CONFIG_ROSE=m

#
# AX.25 network device drivers
#
# CONFIG_MKISS is not set
CONFIG_6PACK=m
# CONFIG_BPQETHER is not set
# CONFIG_BAYCOM_SER_FDX is not set
CONFIG_BAYCOM_SER_HDX=y
CONFIG_YAM=y
# end of AX.25 network device drivers

CONFIG_CAN=y
CONFIG_CAN_RAW=y
CONFIG_CAN_BCM=m
# CONFIG_CAN_GW is not set
CONFIG_CAN_J1939=y
# CONFIG_CAN_ISOTP is not set
CONFIG_BT=m
CONFIG_BT_BREDR=y
CONFIG_BT_RFCOMM=m
# CONFIG_BT_RFCOMM_TTY is not set
# CONFIG_BT_BNEP is not set
# CONFIG_BT_CMTP is not set
# CONFIG_BT_HIDP is not set
# CONFIG_BT_HS is not set
# CONFIG_BT_LE is not set
CONFIG_BT_LEDS=y
# CONFIG_BT_MSFTEXT is not set
# CONFIG_BT_AOSPEXT is not set

#
# Bluetooth device drivers
#
CONFIG_BT_INTEL=m
CONFIG_BT_BCM=m
CONFIG_BT_QCA=m
CONFIG_BT_MTK=m
CONFIG_BT_HCIBTUSB=m
# CONFIG_BT_HCIBTUSB_AUTOSUSPEND is not set
CONFIG_BT_HCIBTUSB_POLL_SYNC=y
CONFIG_BT_HCIBTUSB_BCM=y
# CONFIG_BT_HCIBTUSB_MTK is not set
# CONFIG_BT_HCIBTUSB_RTL is not set
CONFIG_BT_HCIUART=m
CONFIG_BT_HCIUART_SERDEV=y
CONFIG_BT_HCIUART_H4=y
# CONFIG_BT_HCIUART_BCSP is not set
CONFIG_BT_HCIUART_ATH3K=y
CONFIG_BT_HCIUART_LL=y
CONFIG_BT_HCIUART_3WIRE=y
CONFIG_BT_HCIUART_INTEL=y
CONFIG_BT_HCIUART_BCM=y
# CONFIG_BT_HCIUART_QCA is not set
# CONFIG_BT_HCIUART_AG6XX is not set
# CONFIG_BT_HCIUART_MRVL is not set
# CONFIG_BT_HCIBCM203X is not set
CONFIG_BT_HCIBCM4377=m
# CONFIG_BT_HCIBPA10X is not set
CONFIG_BT_HCIBFUSB=m
CONFIG_BT_HCIVHCI=m
CONFIG_BT_MRVL=m
CONFIG_BT_ATH3K=m
CONFIG_BT_MTKUART=m
CONFIG_BT_QCOMSMD=m
# CONFIG_BT_VIRTIO is not set
# end of Bluetooth device drivers

CONFIG_MCTP=y
CONFIG_WIRELESS=y
# CONFIG_CFG80211 is not set

#
# CFG80211 needs to be enabled for MAC80211
#
CONFIG_MAC80211_STA_HASH_MAX_SIZE=0
CONFIG_RFKILL=m
CONFIG_RFKILL_LEDS=y
CONFIG_RFKILL_INPUT=y
# CONFIG_RFKILL_GPIO is not set
CONFIG_NET_9P=m
# CONFIG_NET_9P_FD is not set
# CONFIG_NET_9P_VIRTIO is not set
CONFIG_NET_9P_DEBUG=y
CONFIG_CAIF=y
CONFIG_CAIF_DEBUG=y
CONFIG_CAIF_NETDEV=y
CONFIG_CAIF_USB=m
CONFIG_NFC=m
# CONFIG_NFC_DIGITAL is not set
CONFIG_NFC_NCI=m
CONFIG_NFC_NCI_SPI=m
# CONFIG_NFC_NCI_UART is not set
# CONFIG_NFC_HCI is not set

#
# Near Field Communication (NFC) devices
#
# CONFIG_NFC_VIRTUAL_NCI is not set
CONFIG_NFC_FDP=m
CONFIG_NFC_FDP_I2C=m
CONFIG_NFC_PN533=m
CONFIG_NFC_PN533_USB=m
CONFIG_NFC_PN533_I2C=m
CONFIG_NFC_PN532_UART=m
# CONFIG_NFC_MRVL_USB is not set
CONFIG_NFC_ST_NCI=m
CONFIG_NFC_ST_NCI_I2C=m
CONFIG_NFC_ST_NCI_SPI=m
CONFIG_NFC_NXP_NCI=m
CONFIG_NFC_NXP_NCI_I2C=m
CONFIG_NFC_S3FWRN5=m
CONFIG_NFC_S3FWRN5_I2C=m
CONFIG_NFC_S3FWRN82_UART=m
# end of Near Field Communication (NFC) devices

CONFIG_PSAMPLE=y
CONFIG_NET_IFE=m
# CONFIG_LWTUNNEL is not set
CONFIG_GRO_CELLS=y
# CONFIG_NET_SELFTESTS is not set
CONFIG_NET_DEVLINK=y
CONFIG_PAGE_POOL=y
CONFIG_PAGE_POOL_STATS=y
# CONFIG_FAILOVER is not set
# CONFIG_ETHTOOL_NETLINK is not set
CONFIG_NETDEV_ADDR_LIST_TEST=m

#
# Device Drivers
#
CONFIG_HAVE_PCI=y
CONFIG_PCI=y
CONFIG_PCI_SYSCALL=y
CONFIG_PCIEPORTBUS=y
CONFIG_HOTPLUG_PCI_PCIE=y
# CONFIG_PCIEAER is not set
CONFIG_PCIEASPM=y
# CONFIG_PCIEASPM_DEFAULT is not set
# CONFIG_PCIEASPM_POWERSAVE is not set
# CONFIG_PCIEASPM_POWER_SUPERSAVE is not set
CONFIG_PCIEASPM_PERFORMANCE=y
CONFIG_PCIE_PTM=y
CONFIG_PCI_MSI=y
CONFIG_PCI_MSI_ARCH_FALLBACKS=y
CONFIG_PCI_QUIRKS=y
CONFIG_PCI_STUB=y
CONFIG_PCI_ATS=y
CONFIG_PCI_DOE=y
CONFIG_PCI_ECAM=y
CONFIG_PCI_BRIDGE_EMUL=y
# CONFIG_PCI_IOV is not set
# CONFIG_PCI_PRI is not set
CONFIG_PCI_PASID=y
CONFIG_VGA_ARB=y
CONFIG_VGA_ARB_MAX_GPUS=16
CONFIG_HOTPLUG_PCI=y
CONFIG_HOTPLUG_PCI_CPCI=y
CONFIG_HOTPLUG_PCI_SHPC=y

#
# PCI controller drivers
#
CONFIG_PCI_AARDVARK=y
# CONFIG_PCIE_XILINX_NWL is not set
CONFIG_PCI_FTPCI100=y
# CONFIG_PCI_TEGRA is not set
# CONFIG_PCIE_RCAR_HOST is not set
# CONFIG_PCIE_RCAR_EP is not set
CONFIG_PCI_HOST_COMMON=y
CONFIG_PCI_HOST_GENERIC=m
# CONFIG_PCIE_XILINX is not set
CONFIG_PCIE_XILINX_CPM=y
# CONFIG_PCI_XGENE is not set
# CONFIG_PCI_V3_SEMI is not set
CONFIG_PCI_VERSATILE=y
CONFIG_PCIE_ALTERA=m
# CONFIG_PCIE_ALTERA_MSI is not set
CONFIG_PCI_HOST_THUNDER_PEM=y
CONFIG_PCI_HOST_THUNDER_ECAM=y
CONFIG_PCIE_ROCKCHIP=y
CONFIG_PCIE_ROCKCHIP_HOST=m
# CONFIG_PCIE_ROCKCHIP_EP is not set
CONFIG_PCIE_MEDIATEK=y
CONFIG_PCIE_MEDIATEK_GEN3=m
# CONFIG_PCIE_BRCMSTB is not set
# CONFIG_PCI_LOONGSON is not set
CONFIG_PCIE_MICROCHIP_HOST=y
CONFIG_PCIE_APPLE_MSI_DOORBELL_ADDR=0xfffff000
CONFIG_PCIE_APPLE=m
# CONFIG_PCIE_MT7621 is not set

#
# DesignWare PCI Core Support
#
CONFIG_PCIE_DW=y
CONFIG_PCIE_DW_HOST=y
CONFIG_PCIE_DW_EP=y
CONFIG_PCIE_DW_PLAT=y
CONFIG_PCIE_DW_PLAT_HOST=y
# CONFIG_PCIE_DW_PLAT_EP is not set
CONFIG_PCI_EXYNOS=y
CONFIG_PCI_IMX6=y
# CONFIG_PCIE_SPEAR13XX is not set
# CONFIG_PCI_KEYSTONE_HOST is not set
# CONFIG_PCI_KEYSTONE_EP is not set
CONFIG_PCI_LAYERSCAPE=y
CONFIG_PCI_LAYERSCAPE_EP=y
CONFIG_PCI_HISI=y
CONFIG_PCIE_QCOM=y
CONFIG_PCIE_QCOM_EP=m
# CONFIG_PCIE_ARMADA_8K is not set
CONFIG_PCIE_ARTPEC6=y
CONFIG_PCIE_ARTPEC6_HOST=y
CONFIG_PCIE_ARTPEC6_EP=y
CONFIG_PCIE_ROCKCHIP_DW_HOST=y
# CONFIG_PCIE_INTEL_GW is not set
CONFIG_PCIE_KEEMBAY=y
CONFIG_PCIE_KEEMBAY_HOST=y
# CONFIG_PCIE_KEEMBAY_EP is not set
CONFIG_PCIE_KIRIN=y
CONFIG_PCIE_HISI_STB=y
# CONFIG_PCI_MESON is not set
CONFIG_PCIE_TEGRA194=m
CONFIG_PCIE_TEGRA194_HOST=m
CONFIG_PCIE_TEGRA194_EP=m
# CONFIG_PCIE_VISCONTI_HOST is not set
CONFIG_PCIE_UNIPHIER=y
# CONFIG_PCIE_UNIPHIER_EP is not set
CONFIG_PCIE_AL=y
# CONFIG_PCIE_FU740 is not set
# end of DesignWare PCI Core Support

#
# Mobiveil PCIe Core Support
#
# CONFIG_PCIE_MOBIVEIL_PLAT is not set
# CONFIG_PCIE_LAYERSCAPE_GEN4 is not set
# end of Mobiveil PCIe Core Support

#
# Cadence PCIe controllers support
#
CONFIG_PCIE_CADENCE=y
CONFIG_PCIE_CADENCE_HOST=y
CONFIG_PCIE_CADENCE_EP=y
# CONFIG_PCIE_CADENCE_PLAT_HOST is not set
# CONFIG_PCIE_CADENCE_PLAT_EP is not set
CONFIG_PCI_J721E=y
CONFIG_PCI_J721E_HOST=y
CONFIG_PCI_J721E_EP=y
# end of Cadence PCIe controllers support
# end of PCI controller drivers

#
# PCI Endpoint
#
CONFIG_PCI_ENDPOINT=y
# CONFIG_PCI_ENDPOINT_CONFIGFS is not set
CONFIG_PCI_EPF_TEST=m
CONFIG_PCI_EPF_NTB=m
CONFIG_PCI_EPF_VNTB=y
# end of PCI Endpoint

#
# PCI switch controller drivers
#
CONFIG_PCI_SW_SWITCHTEC=y
# end of PCI switch controller drivers

CONFIG_CXL_BUS=m
CONFIG_CXL_PCI=m
CONFIG_CXL_MEM_RAW_COMMANDS=y
CONFIG_CXL_MEM=m
CONFIG_CXL_PORT=m
# CONFIG_PCCARD is not set
# CONFIG_RAPIDIO is not set

#
# Generic Driver Options
#
CONFIG_AUXILIARY_BUS=y
# CONFIG_UEVENT_HELPER is not set
# CONFIG_DEVTMPFS is not set
CONFIG_STANDALONE=y
CONFIG_PREVENT_FIRMWARE_BUILD=y

#
# Firmware loader
#
CONFIG_FW_LOADER=y
CONFIG_FW_LOADER_PAGED_BUF=y
CONFIG_FW_LOADER_SYSFS=y
CONFIG_EXTRA_FIRMWARE=""
CONFIG_FW_LOADER_USER_HELPER=y
# CONFIG_FW_LOADER_USER_HELPER_FALLBACK is not set
CONFIG_FW_LOADER_COMPRESS=y
CONFIG_FW_LOADER_COMPRESS_XZ=y
CONFIG_FW_LOADER_COMPRESS_ZSTD=y
# CONFIG_FW_UPLOAD is not set
# end of Firmware loader

CONFIG_WANT_DEV_COREDUMP=y
CONFIG_ALLOW_DEV_COREDUMP=y
CONFIG_DEV_COREDUMP=y
CONFIG_TEST_ASYNC_DRIVER_PROBE=m
CONFIG_SOC_BUS=y
CONFIG_REGMAP=y
CONFIG_REGMAP_I2C=y
CONFIG_REGMAP_SPI=y
CONFIG_REGMAP_W1=m
CONFIG_REGMAP_MMIO=y
CONFIG_REGMAP_IRQ=y
CONFIG_REGMAP_SCCB=y
CONFIG_REGMAP_I3C=m
CONFIG_DMA_SHARED_BUFFER=y
# CONFIG_DMA_FENCE_TRACE is not set
# end of Generic Driver Options

#
# Bus devices
#
CONFIG_ARM_INTEGRATOR_LM=y
CONFIG_BT1_APB=y
CONFIG_BT1_AXI=y
# CONFIG_MOXTET is not set
CONFIG_HISILICON_LPC=y
CONFIG_INTEL_IXP4XX_EB=y
# CONFIG_QCOM_EBI2 is not set
CONFIG_MHI_BUS=y
CONFIG_MHI_BUS_PCI_GENERIC=y
# CONFIG_MHI_BUS_EP is not set
# end of Bus devices

CONFIG_CONNECTOR=y
# CONFIG_PROC_EVENTS is not set

#
# Firmware Drivers
#

#
# ARM System Control and Management Interface Protocol
#
# CONFIG_ARM_SCMI_PROTOCOL is not set
CONFIG_ARM_SCMI_POWER_DOMAIN=y
# CONFIG_ARM_SCMI_POWER_CONTROL is not set
# end of ARM System Control and Management Interface Protocol

CONFIG_ARM_SCPI_POWER_DOMAIN=y
CONFIG_FW_CFG_SYSFS=m
# CONFIG_FW_CFG_SYSFS_CMDLINE is not set
# CONFIG_BCM47XX_NVRAM is not set
# CONFIG_TEE_BNXT_FW is not set
CONFIG_GOOGLE_FIRMWARE=y
# CONFIG_GOOGLE_COREBOOT_TABLE is not set

#
# Tegra firmware driver
#
# end of Tegra firmware driver
# end of Firmware Drivers

# CONFIG_GNSS is not set
CONFIG_MTD=y
# CONFIG_MTD_TESTS is not set

#
# Partition parsers
#
CONFIG_MTD_AR7_PARTS=y
CONFIG_MTD_BCM63XX_PARTS=y
# CONFIG_MTD_BRCM_U_BOOT is not set
CONFIG_MTD_CMDLINE_PARTS=m
# CONFIG_MTD_OF_PARTS is not set
CONFIG_MTD_PARSER_IMAGETAG=y
CONFIG_MTD_PARSER_TPLINK_SAFELOADER=m
CONFIG_MTD_PARSER_TRX=y
CONFIG_MTD_SHARPSL_PARTS=y
CONFIG_MTD_REDBOOT_PARTS=y
CONFIG_MTD_REDBOOT_DIRECTORY_BLOCK=-1
# CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED is not set
# CONFIG_MTD_REDBOOT_PARTS_READONLY is not set
# end of Partition parsers

#
# User Modules And Translation Layers
#
CONFIG_MTD_BLKDEVS=y
CONFIG_MTD_BLOCK=y

#
# Note that in some cases UBI block is preferred. See MTD_UBI_BLOCK.
#
CONFIG_FTL=m
CONFIG_NFTL=m
# CONFIG_NFTL_RW is not set
CONFIG_INFTL=m
# CONFIG_RFD_FTL is not set
# CONFIG_SSFDC is not set
# CONFIG_SM_FTL is not set
CONFIG_MTD_OOPS=m
CONFIG_MTD_SWAP=m
# CONFIG_MTD_PARTITIONED_MASTER is not set

#
# RAM/ROM/Flash chip drivers
#
CONFIG_MTD_CFI=y
CONFIG_MTD_JEDECPROBE=m
CONFIG_MTD_GEN_PROBE=y
# CONFIG_MTD_CFI_ADV_OPTIONS is not set
CONFIG_MTD_MAP_BANK_WIDTH_1=y
CONFIG_MTD_MAP_BANK_WIDTH_2=y
CONFIG_MTD_MAP_BANK_WIDTH_4=y
CONFIG_MTD_CFI_I1=y
CONFIG_MTD_CFI_I2=y
CONFIG_MTD_CFI_INTELEXT=m
CONFIG_MTD_CFI_AMDSTD=y
CONFIG_MTD_CFI_STAA=m
CONFIG_MTD_CFI_UTIL=y
CONFIG_MTD_RAM=m
CONFIG_MTD_ROM=y
CONFIG_MTD_ABSENT=m
# end of RAM/ROM/Flash chip drivers

#
# Mapping drivers for chip access
#
CONFIG_MTD_COMPLEX_MAPPINGS=y
CONFIG_MTD_PHYSMAP=m
# CONFIG_MTD_PHYSMAP_COMPAT is not set
# CONFIG_MTD_PHYSMAP_OF is not set
CONFIG_MTD_PHYSMAP_GPIO_ADDR=y
# CONFIG_MTD_SUN_UFLASH is not set
# CONFIG_MTD_SC520CDP is not set
CONFIG_MTD_NETSC520=y
CONFIG_MTD_TS5500=m
CONFIG_MTD_PCI=m
CONFIG_MTD_INTEL_VR_NOR=y
# CONFIG_MTD_PLATRAM is not set
# end of Mapping drivers for chip access

#
# Self-contained MTD device drivers
#
CONFIG_MTD_PMC551=y
# CONFIG_MTD_PMC551_BUGFIX is not set
CONFIG_MTD_PMC551_DEBUG=y
CONFIG_MTD_DATAFLASH=m
# CONFIG_MTD_DATAFLASH_WRITE_VERIFY is not set
# CONFIG_MTD_DATAFLASH_OTP is not set
# CONFIG_MTD_MCHP23K256 is not set
# CONFIG_MTD_MCHP48L640 is not set
CONFIG_MTD_SPEAR_SMI=m
CONFIG_MTD_SST25L=m
CONFIG_MTD_SLRAM=y
CONFIG_MTD_PHRAM=m
# CONFIG_MTD_MTDRAM is not set
CONFIG_MTD_BLOCK2MTD=y

#
# Disk-On-Chip Device Drivers
#
CONFIG_MTD_DOCG3=m
CONFIG_BCH_CONST_M=14
CONFIG_BCH_CONST_T=4
# end of Self-contained MTD device drivers

#
# NAND
#
CONFIG_MTD_NAND_CORE=y
CONFIG_MTD_ONENAND=m
CONFIG_MTD_ONENAND_VERIFY_WRITE=y
# CONFIG_MTD_ONENAND_GENERIC is not set
CONFIG_MTD_ONENAND_SAMSUNG=m
CONFIG_MTD_ONENAND_OTP=y
# CONFIG_MTD_ONENAND_2X_PROGRAM is not set
CONFIG_MTD_RAW_NAND=m

#
# Raw/parallel NAND flash controllers
#
# CONFIG_MTD_NAND_DENALI_PCI is not set
# CONFIG_MTD_NAND_DENALI_DT is not set
# CONFIG_MTD_NAND_AMS_DELTA is not set
CONFIG_MTD_NAND_SHARPSL=m
CONFIG_MTD_NAND_CAFE=m
CONFIG_MTD_NAND_ATMEL=m
CONFIG_MTD_NAND_MARVELL=m
CONFIG_MTD_NAND_SLC_LPC32XX=m
# CONFIG_MTD_NAND_MLC_LPC32XX is not set
# CONFIG_MTD_NAND_BRCMNAND is not set
CONFIG_MTD_NAND_OXNAS=m
# CONFIG_MTD_NAND_FSL_IFC is not set
CONFIG_MTD_NAND_VF610_NFC=m
CONFIG_MTD_NAND_MXC=m
CONFIG_MTD_NAND_SH_FLCTL=m
# CONFIG_MTD_NAND_DAVINCI is not set
CONFIG_MTD_NAND_TXX9NDFMC=m
# CONFIG_MTD_NAND_FSMC is not set
CONFIG_MTD_NAND_SUNXI=m
CONFIG_MTD_NAND_HISI504=m
CONFIG_MTD_NAND_QCOM=m
CONFIG_MTD_NAND_MXIC=m
CONFIG_MTD_NAND_TEGRA=m
# CONFIG_MTD_NAND_STM32_FMC2 is not set
CONFIG_MTD_NAND_MESON=m
CONFIG_MTD_NAND_GPIO=m
# CONFIG_MTD_NAND_PLATFORM is not set
CONFIG_MTD_NAND_CADENCE=m
CONFIG_MTD_NAND_ARASAN=m
CONFIG_MTD_NAND_INTEL_LGM=m
CONFIG_MTD_NAND_RENESAS=m

#
# Misc
#
CONFIG_MTD_SM_COMMON=m
# CONFIG_MTD_NAND_NANDSIM is not set
CONFIG_MTD_NAND_RICOH=m
# CONFIG_MTD_NAND_DISKONCHIP is not set
# CONFIG_MTD_SPI_NAND is not set

#
# ECC engine support
#
CONFIG_MTD_NAND_ECC=y
# CONFIG_MTD_NAND_ECC_SW_HAMMING is not set
CONFIG_MTD_NAND_ECC_SW_BCH=y
# CONFIG_MTD_NAND_ECC_MXIC is not set
# CONFIG_MTD_NAND_ECC_MEDIATEK is not set
# end of ECC engine support
# end of NAND

#
# LPDDR & LPDDR2 PCM memory drivers
#
# CONFIG_MTD_LPDDR is not set
# end of LPDDR & LPDDR2 PCM memory drivers

CONFIG_MTD_SPI_NOR=m
CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y
# CONFIG_MTD_SPI_NOR_SWP_DISABLE is not set
# CONFIG_MTD_SPI_NOR_SWP_DISABLE_ON_VOLATILE is not set
CONFIG_MTD_SPI_NOR_SWP_KEEP=y
# CONFIG_SPI_HISI_SFC is not set
CONFIG_SPI_NXP_SPIFI=m
CONFIG_MTD_UBI=m
CONFIG_MTD_UBI_WL_THRESHOLD=4096
CONFIG_MTD_UBI_BEB_LIMIT=20
CONFIG_MTD_UBI_FASTMAP=y
CONFIG_MTD_UBI_GLUEBI=m
CONFIG_MTD_UBI_BLOCK=y
CONFIG_MTD_HYPERBUS=y
CONFIG_HBMC_AM654=y
CONFIG_DTC=y
CONFIG_OF=y
# CONFIG_OF_ALL_DTBS is not set
CONFIG_OF_FLATTREE=y
CONFIG_OF_EARLY_FLATTREE=y
CONFIG_OF_PROMTREE=y
CONFIG_OF_KOBJ=y
CONFIG_OF_RESERVED_MEM=y
# CONFIG_OF_OVERLAY is not set
# CONFIG_PARPORT is not set
# CONFIG_BLK_DEV is not set

#
# NVME Support
#
CONFIG_NVME_COMMON=m
CONFIG_NVME_CORE=m
# CONFIG_BLK_DEV_NVME is not set
# CONFIG_NVME_MULTIPATH is not set
# CONFIG_NVME_VERBOSE_ERRORS is not set
# CONFIG_NVME_HWMON is not set
CONFIG_NVME_FABRICS=m
CONFIG_NVME_FC=m
CONFIG_NVME_AUTH=y
# CONFIG_NVME_TARGET is not set
# end of NVME Support

#
# Misc devices
#
CONFIG_SENSORS_LIS3LV02D=y
CONFIG_AD525X_DPOT=m
CONFIG_AD525X_DPOT_I2C=m
# CONFIG_AD525X_DPOT_SPI is not set
CONFIG_DUMMY_IRQ=m
# CONFIG_PHANTOM is not set
CONFIG_TIFM_CORE=y
# CONFIG_TIFM_7XX1 is not set
CONFIG_ICS932S401=m
CONFIG_ATMEL_SSC=y
# CONFIG_ENCLOSURE_SERVICES is not set
CONFIG_SMPRO_ERRMON=m
# CONFIG_SMPRO_MISC is not set
CONFIG_GEHC_ACHC=m
CONFIG_HP_ILO=m
# CONFIG_QCOM_COINCELL is not set
# CONFIG_QCOM_FASTRPC is not set
CONFIG_APDS9802ALS=y
CONFIG_ISL29003=m
CONFIG_ISL29020=y
CONFIG_SENSORS_TSL2550=y
CONFIG_SENSORS_BH1770=y
CONFIG_SENSORS_APDS990X=m
CONFIG_HMC6352=m
CONFIG_DS1682=m
CONFIG_PCH_PHUB=m
CONFIG_LATTICE_ECP3_CONFIG=m
CONFIG_SRAM=y
CONFIG_DW_XDATA_PCIE=y
# CONFIG_PCI_ENDPOINT_TEST is not set
# CONFIG_XILINX_SDFEC is not set
CONFIG_MISC_RTSX=y
CONFIG_HISI_HIKEY_USB=m
CONFIG_OPEN_DICE=y
# CONFIG_VCPU_STALL_DETECTOR is not set
CONFIG_C2PORT=y

#
# EEPROM support
#
CONFIG_EEPROM_AT24=m
CONFIG_EEPROM_AT25=y
CONFIG_EEPROM_LEGACY=y
CONFIG_EEPROM_MAX6875=m
CONFIG_EEPROM_93CX6=m
# CONFIG_EEPROM_93XX46 is not set
# CONFIG_EEPROM_IDT_89HPESX is not set
# CONFIG_EEPROM_EE1004 is not set
# end of EEPROM support

CONFIG_CB710_CORE=m
# CONFIG_CB710_DEBUG is not set
CONFIG_CB710_DEBUG_ASSUMPTIONS=y

#
# Texas Instruments shared transport line discipline
#
CONFIG_TI_ST=y
# end of Texas Instruments shared transport line discipline

# CONFIG_SENSORS_LIS3_SPI is not set
CONFIG_SENSORS_LIS3_I2C=y
CONFIG_ALTERA_STAPL=y
CONFIG_ECHO=y
CONFIG_BCM_VK=y
# CONFIG_BCM_VK_TTY is not set
CONFIG_MISC_ALCOR_PCI=m
CONFIG_MISC_RTSX_PCI=m
CONFIG_MISC_RTSX_USB=y
# CONFIG_HABANA_AI is not set
CONFIG_UACCE=m
CONFIG_PVPANIC=y
CONFIG_PVPANIC_MMIO=m
CONFIG_PVPANIC_PCI=y
CONFIG_GP_PCI1XXXX=y
# end of Misc devices

#
# SCSI device support
#
CONFIG_SCSI_MOD=y
CONFIG_RAID_ATTRS=y
CONFIG_SCSI_COMMON=y
CONFIG_SCSI=y
CONFIG_SCSI_DMA=y
CONFIG_SCSI_PROC_FS=y

#
# SCSI support type (disk, tape, CD-ROM)
#
CONFIG_BLK_DEV_SD=m
CONFIG_CHR_DEV_ST=y
CONFIG_CHR_DEV_SG=y
# CONFIG_BLK_DEV_BSG is not set
# CONFIG_CHR_DEV_SCH is not set
CONFIG_SCSI_CONSTANTS=y
# CONFIG_SCSI_LOGGING is not set
CONFIG_SCSI_SCAN_ASYNC=y

#
# SCSI Transports
#
CONFIG_SCSI_SPI_ATTRS=y
# CONFIG_SCSI_FC_ATTRS is not set
CONFIG_SCSI_ISCSI_ATTRS=y
CONFIG_SCSI_SAS_ATTRS=y
CONFIG_SCSI_SAS_LIBSAS=y
CONFIG_SCSI_SAS_HOST_SMP=y
# CONFIG_SCSI_SRP_ATTRS is not set
# end of SCSI Transports

CONFIG_SCSI_LOWLEVEL=y
CONFIG_ISCSI_BOOT_SYSFS=m
CONFIG_SCSI_BNX2_ISCSI=y
CONFIG_BE2ISCSI=m
CONFIG_BLK_DEV_3W_XXXX_RAID=m
# CONFIG_SCSI_HPSA is not set
CONFIG_SCSI_3W_9XXX=y
# CONFIG_SCSI_3W_SAS is not set
CONFIG_SCSI_ACARD=m
CONFIG_SCSI_AACRAID=y
# CONFIG_SCSI_AIC7XXX is not set
CONFIG_SCSI_AIC79XX=m
CONFIG_AIC79XX_CMDS_PER_DEVICE=32
CONFIG_AIC79XX_RESET_DELAY_MS=5000
CONFIG_AIC79XX_DEBUG_ENABLE=y
CONFIG_AIC79XX_DEBUG_MASK=0
CONFIG_AIC79XX_REG_PRETTY_PRINT=y
# CONFIG_SCSI_AIC94XX is not set
CONFIG_SCSI_HISI_SAS=m
# CONFIG_SCSI_HISI_SAS_DEBUGFS_DEFAULT_ENABLE is not set
CONFIG_SCSI_MVSAS=m
CONFIG_SCSI_MVSAS_DEBUG=y
CONFIG_SCSI_MVSAS_TASKLET=y
CONFIG_SCSI_MVUMI=y
CONFIG_SCSI_ADVANSYS=m
# CONFIG_SCSI_ARCMSR is not set
CONFIG_SCSI_ESAS2R=m
# CONFIG_MEGARAID_NEWGEN is not set
CONFIG_MEGARAID_LEGACY=y
# CONFIG_MEGARAID_SAS is not set
CONFIG_SCSI_MPT3SAS=y
CONFIG_SCSI_MPT2SAS_MAX_SGE=128
CONFIG_SCSI_MPT3SAS_MAX_SGE=128
CONFIG_SCSI_MPT2SAS=y
CONFIG_SCSI_MPI3MR=m
# CONFIG_SCSI_SMARTPQI is not set
CONFIG_SCSI_HPTIOP=y
CONFIG_SCSI_BUSLOGIC=m
CONFIG_SCSI_FLASHPOINT=y
# CONFIG_SCSI_MYRB is not set
CONFIG_SCSI_MYRS=m
# CONFIG_SCSI_SNIC is not set
# CONFIG_SCSI_DMX3191D is not set
CONFIG_SCSI_FDOMAIN=y
CONFIG_SCSI_FDOMAIN_PCI=y
CONFIG_SCSI_IPS=m
CONFIG_SCSI_INITIO=y
CONFIG_SCSI_INIA100=m
CONFIG_SCSI_STEX=m
# CONFIG_SCSI_SYM53C8XX_2 is not set
CONFIG_SCSI_IPR=m
# CONFIG_SCSI_IPR_TRACE is not set
CONFIG_SCSI_IPR_DUMP=y
# CONFIG_SCSI_QLOGIC_1280 is not set
CONFIG_SCSI_QLOGICPTI=m
CONFIG_SCSI_QLA_ISCSI=m
# CONFIG_SCSI_DC395x is not set
CONFIG_SCSI_AM53C974=y
CONFIG_SCSI_NSP32=m
# CONFIG_SCSI_WD719X is not set
CONFIG_SCSI_DEBUG=y
CONFIG_SCSI_SUNESP=y
CONFIG_SCSI_PMCRAID=m
CONFIG_SCSI_PM8001=y
CONFIG_SCSI_VIRTIO=m
CONFIG_SCSI_DH=y
# CONFIG_SCSI_DH_RDAC is not set
CONFIG_SCSI_DH_HP_SW=y
# CONFIG_SCSI_DH_EMC is not set
CONFIG_SCSI_DH_ALUA=y
# end of SCSI device support

CONFIG_ATA=m
CONFIG_SATA_HOST=y
CONFIG_ATA_VERBOSE_ERROR=y
CONFIG_ATA_FORCE=y
# CONFIG_SATA_PMP is not set

#
# Controllers with non-SFF native interface
#
# CONFIG_SATA_AHCI is not set
# CONFIG_SATA_AHCI_PLATFORM is not set
CONFIG_AHCI_BRCM=m
CONFIG_AHCI_DA850=m
CONFIG_AHCI_DM816=m
# CONFIG_AHCI_DWC is not set
CONFIG_AHCI_ST=m
# CONFIG_AHCI_IMX is not set
CONFIG_AHCI_CEVA=m
# CONFIG_AHCI_MTK is not set
CONFIG_AHCI_MVEBU=m
# CONFIG_AHCI_SUNXI is not set
# CONFIG_AHCI_TEGRA is not set
CONFIG_AHCI_XGENE=m
CONFIG_AHCI_QORIQ=m
CONFIG_SATA_FSL=m
CONFIG_SATA_GEMINI=m
CONFIG_SATA_AHCI_SEATTLE=m
CONFIG_SATA_INIC162X=m
CONFIG_SATA_ACARD_AHCI=m
# CONFIG_SATA_SIL24 is not set
# CONFIG_ATA_SFF is not set
# CONFIG_MD is not set
CONFIG_TARGET_CORE=m
CONFIG_TCM_IBLOCK=m
CONFIG_TCM_FILEIO=m
CONFIG_TCM_PSCSI=m
# CONFIG_TCM_USER2 is not set
CONFIG_LOOPBACK_TARGET=m
CONFIG_SBP_TARGET=m
# CONFIG_FUSION is not set

#
# IEEE 1394 (FireWire) support
#
CONFIG_FIREWIRE=y
CONFIG_FIREWIRE_OHCI=y
CONFIG_FIREWIRE_SBP2=y
# CONFIG_FIREWIRE_NOSY is not set
# end of IEEE 1394 (FireWire) support

CONFIG_NETDEVICES=y
CONFIG_MII=y
CONFIG_NET_CORE=y
CONFIG_DUMMY=m
CONFIG_EQUALIZER=y
CONFIG_NET_FC=y
# CONFIG_IFB is not set
CONFIG_NET_TEAM=m
CONFIG_NET_TEAM_MODE_BROADCAST=m
CONFIG_NET_TEAM_MODE_ROUNDROBIN=m
CONFIG_NET_TEAM_MODE_RANDOM=m
# CONFIG_NET_TEAM_MODE_ACTIVEBACKUP is not set
CONFIG_NET_TEAM_MODE_LOADBALANCE=m
CONFIG_MACVLAN=y
CONFIG_MACSEC=m
CONFIG_NETCONSOLE=y
CONFIG_NETCONSOLE_DYNAMIC=y
CONFIG_NETPOLL=y
CONFIG_NET_POLL_CONTROLLER=y
# CONFIG_TUN_VNET_CROSS_LE is not set
# CONFIG_VETH is not set
# CONFIG_VIRTIO_NET is not set
# CONFIG_NLMON is not set
# CONFIG_VSOCKMON is not set
CONFIG_MHI_NET=y
CONFIG_ARCNET=y
CONFIG_ARCNET_1201=y
CONFIG_ARCNET_1051=m
# CONFIG_ARCNET_RAW is not set
CONFIG_ARCNET_CAP=m
CONFIG_ARCNET_COM90xx=m
# CONFIG_ARCNET_COM90xxIO is not set
CONFIG_ARCNET_RIM_I=y
# CONFIG_ARCNET_COM20020 is not set
CONFIG_CAIF_DRIVERS=y
# CONFIG_CAIF_TTY is not set
# CONFIG_CAIF_VIRTIO is not set
CONFIG_ETHERNET=y
CONFIG_MDIO=y
CONFIG_NET_VENDOR_3COM=y
CONFIG_VORTEX=m
CONFIG_TYPHOON=y
CONFIG_NET_VENDOR_ACTIONS=y
# CONFIG_OWL_EMAC is not set
# CONFIG_NET_VENDOR_ADAPTEC is not set
CONFIG_GRETH=y
CONFIG_NET_VENDOR_AGERE=y
CONFIG_ET131X=m
# CONFIG_NET_VENDOR_ALACRITECH is not set
CONFIG_NET_VENDOR_ALTEON=y
# CONFIG_ACENIC is not set
# CONFIG_ALTERA_TSE is not set
CONFIG_NET_VENDOR_AMAZON=y
CONFIG_NET_VENDOR_AMD=y
CONFIG_AMD8111_ETH=m
# CONFIG_PCNET32 is not set
CONFIG_SUNLANCE=y
CONFIG_AMD_XGBE=m
# CONFIG_AMD_XGBE_DCB is not set
CONFIG_NET_XGENE=m
CONFIG_NET_XGENE_V2=m
CONFIG_NET_VENDOR_AQUANTIA=y
CONFIG_AQTION=m
CONFIG_NET_VENDOR_ARC=y
# CONFIG_NET_VENDOR_ASIX is not set
CONFIG_NET_VENDOR_ATHEROS=y
# CONFIG_ATL2 is not set
# CONFIG_ATL1 is not set
# CONFIG_ATL1E is not set
CONFIG_ATL1C=y
# CONFIG_ALX is not set
CONFIG_CX_ECAT=m
CONFIG_NET_VENDOR_BROADCOM=y
CONFIG_B44=m
CONFIG_B44_PCI_AUTOSELECT=y
CONFIG_B44_PCICORE_AUTOSELECT=y
CONFIG_B44_PCI=y
CONFIG_BCM4908_ENET=y
CONFIG_BCMGENET=y
CONFIG_BNX2=y
CONFIG_CNIC=y
CONFIG_TIGON3=m
# CONFIG_TIGON3_HWMON is not set
CONFIG_BNX2X=y
CONFIG_BGMAC=m
CONFIG_BGMAC_BCMA=m
CONFIG_BGMAC_PLATFORM=m
# CONFIG_SYSTEMPORT is not set
# CONFIG_BNXT is not set
# CONFIG_NET_VENDOR_CADENCE is not set
# CONFIG_NET_CALXEDA_XGMAC is not set
# CONFIG_NET_VENDOR_CAVIUM is not set
# CONFIG_NET_VENDOR_CHELSIO is not set
# CONFIG_NET_VENDOR_CIRRUS is not set
# CONFIG_NET_VENDOR_CISCO is not set
CONFIG_NET_VENDOR_CORTINA=y
CONFIG_GEMINI_ETHERNET=y
# CONFIG_NET_VENDOR_DAVICOM is not set
CONFIG_DNET=m
CONFIG_NET_VENDOR_DEC=y
CONFIG_NET_TULIP=y
CONFIG_DE2104X=y
CONFIG_DE2104X_DSL=0
# CONFIG_TULIP is not set
CONFIG_WINBOND_840=y
# CONFIG_DM9102 is not set
CONFIG_ULI526X=m
# CONFIG_NET_VENDOR_DLINK is not set
CONFIG_NET_VENDOR_EMULEX=y
CONFIG_BE2NET=m
# CONFIG_BE2NET_HWMON is not set
CONFIG_BE2NET_BE2=y
CONFIG_BE2NET_BE3=y
CONFIG_BE2NET_LANCER=y
CONFIG_BE2NET_SKYHAWK=y
CONFIG_NET_VENDOR_ENGLEDER=y
# CONFIG_TSNEP is not set
# CONFIG_NET_VENDOR_EZCHIP is not set
# CONFIG_NET_VENDOR_FARADAY is not set
# CONFIG_NET_VENDOR_FREESCALE is not set
# CONFIG_NET_VENDOR_FUNGIBLE is not set
CONFIG_NET_VENDOR_GOOGLE=y
CONFIG_NET_VENDOR_HISILICON=y
# CONFIG_HIX5HD2_GMAC is not set
CONFIG_HISI_FEMAC=m
CONFIG_HIP04_ETH=y
CONFIG_HI13X1_GMAC=y
CONFIG_HNS_MDIO=y
# CONFIG_HNS_DSAF is not set
# CONFIG_HNS_ENET is not set
CONFIG_HNS3=y
# CONFIG_HNS3_HCLGE is not set
# CONFIG_NET_VENDOR_HUAWEI is not set
# CONFIG_NET_VENDOR_I825XX is not set
CONFIG_NET_VENDOR_INTEL=y
# CONFIG_E100 is not set
CONFIG_E1000=y
# CONFIG_IGB is not set
# CONFIG_IGBVF is not set
CONFIG_IXGB=y
CONFIG_IXGBE=y
CONFIG_IXGBE_DCB=y
# CONFIG_IXGBEVF is not set
# CONFIG_I40E is not set
# CONFIG_I40EVF is not set
CONFIG_ICE=m
# CONFIG_FM10K is not set
CONFIG_IGC=m
CONFIG_NET_VENDOR_WANGXUN=y
CONFIG_LIBWX=m
CONFIG_NGBE=m
# CONFIG_TXGBE is not set
CONFIG_JME=m
# CONFIG_KORINA is not set
# CONFIG_NET_VENDOR_ADI is not set
CONFIG_NET_VENDOR_LITEX=y
CONFIG_LITEX_LITEETH=y
# CONFIG_NET_VENDOR_MARVELL is not set
CONFIG_NET_VENDOR_MEDIATEK=y
CONFIG_NET_MEDIATEK_SOC_WED=y
CONFIG_NET_MEDIATEK_SOC=m
CONFIG_NET_MEDIATEK_STAR_EMAC=y
# CONFIG_NET_VENDOR_MELLANOX is not set
# CONFIG_NET_VENDOR_MICREL is not set
CONFIG_NET_VENDOR_MICROCHIP=y
# CONFIG_ENC28J60 is not set
CONFIG_ENCX24J600=y
CONFIG_LAN743X=y
CONFIG_VCAP=y
# CONFIG_NET_VENDOR_MICROSEMI is not set
# CONFIG_NET_VENDOR_MICROSOFT is not set
# CONFIG_NET_VENDOR_NI is not set
CONFIG_NET_VENDOR_NATSEMI=y
CONFIG_NATSEMI=y
CONFIG_NS83820=m
# CONFIG_NET_VENDOR_NETERION is not set
CONFIG_NET_VENDOR_NETRONOME=y
CONFIG_NFP=m
CONFIG_NFP_DEBUG=y
CONFIG_NET_VENDOR_8390=y
# CONFIG_AX88796 is not set
# CONFIG_NE2K_PCI is not set
# CONFIG_NET_VENDOR_NVIDIA is not set
CONFIG_LPC_ENET=y
CONFIG_NET_VENDOR_OKI=y
CONFIG_ETHOC=y
# CONFIG_NET_VENDOR_PACKET_ENGINES is not set
# CONFIG_NET_VENDOR_PENSANDO is not set
# CONFIG_NET_VENDOR_QLOGIC is not set
CONFIG_NET_VENDOR_BROCADE=y
CONFIG_BNA=m
# CONFIG_NET_VENDOR_QUALCOMM is not set
# CONFIG_NET_VENDOR_RDC is not set
CONFIG_NET_VENDOR_REALTEK=y
CONFIG_8139CP=y
CONFIG_8139TOO=m
CONFIG_8139TOO_PIO=y
# CONFIG_8139TOO_TUNE_TWISTER is not set
# CONFIG_8139TOO_8129 is not set
CONFIG_8139_OLD_RX_RESET=y
CONFIG_R8169=y
CONFIG_NET_VENDOR_RENESAS=y
CONFIG_SH_ETH=y
CONFIG_RAVB=y
# CONFIG_RENESAS_ETHER_SWITCH is not set
CONFIG_NET_VENDOR_ROCKER=y
# CONFIG_NET_VENDOR_SAMSUNG is not set
# CONFIG_NET_VENDOR_SEEQ is not set
CONFIG_NET_VENDOR_SILAN=y
# CONFIG_SC92031 is not set
CONFIG_NET_VENDOR_SIS=y
CONFIG_SIS900=y
CONFIG_SIS190=y
CONFIG_NET_VENDOR_SOLARFLARE=y
# CONFIG_SFC is not set
CONFIG_SFC_FALCON=y
# CONFIG_SFC_FALCON_MTD is not set
CONFIG_NET_VENDOR_SMSC=y
CONFIG_SMC91X=m
# CONFIG_EPIC100 is not set
# CONFIG_SMSC911X is not set
CONFIG_SMSC9420=y
# CONFIG_NET_VENDOR_SOCIONEXT is not set
# CONFIG_NET_VENDOR_STMICRO is not set
CONFIG_NET_VENDOR_SUN=y
CONFIG_HAPPYMEAL=y
CONFIG_SUNBMAC=y
CONFIG_SUNQE=m
# CONFIG_SUNGEM is not set
# CONFIG_CASSINI is not set
CONFIG_NIU=m
CONFIG_NET_VENDOR_SUNPLUS=y
CONFIG_SP7021_EMAC=m
CONFIG_NET_VENDOR_SYNOPSYS=y
CONFIG_DWC_XLGMAC=m
CONFIG_DWC_XLGMAC_PCI=m
CONFIG_NET_VENDOR_TEHUTI=y
CONFIG_TEHUTI=y
# CONFIG_NET_VENDOR_TI is not set
CONFIG_NET_VENDOR_VERTEXCOM=y
CONFIG_MSE102X=y
CONFIG_NET_VENDOR_VIA=y
CONFIG_VIA_RHINE=m
# CONFIG_VIA_RHINE_MMIO is not set
CONFIG_VIA_VELOCITY=m
# CONFIG_NET_VENDOR_WIZNET is not set
# CONFIG_NET_VENDOR_XILINX is not set
CONFIG_FDDI=y
CONFIG_DEFXX=m
# CONFIG_SKFP is not set
CONFIG_PHYLINK=m
CONFIG_PHYLIB=y
CONFIG_SWPHY=y
CONFIG_LED_TRIGGER_PHY=y
CONFIG_FIXED_PHY=y
CONFIG_SFP=m

#
# MII PHY device drivers
#
CONFIG_AMD_PHY=y
CONFIG_MESON_GXL_PHY=y
# CONFIG_ADIN_PHY is not set
# CONFIG_ADIN1100_PHY is not set
CONFIG_AQUANTIA_PHY=y
CONFIG_AX88796B_PHY=y
CONFIG_BROADCOM_PHY=y
# CONFIG_BCM54140_PHY is not set
CONFIG_BCM63XX_PHY=m
CONFIG_BCM7XXX_PHY=y
CONFIG_BCM84881_PHY=m
CONFIG_BCM87XX_PHY=m
CONFIG_BCM_CYGNUS_PHY=y
CONFIG_BCM_NET_PHYLIB=y
CONFIG_BCM_NET_PHYPTP=y
CONFIG_CICADA_PHY=y
CONFIG_CORTINA_PHY=y
CONFIG_DAVICOM_PHY=m
# CONFIG_ICPLUS_PHY is not set
CONFIG_LXT_PHY=m
CONFIG_INTEL_XWAY_PHY=m
CONFIG_LSI_ET1011C_PHY=y
CONFIG_MARVELL_PHY=y
# CONFIG_MARVELL_10G_PHY is not set
CONFIG_MARVELL_88X2222_PHY=y
CONFIG_MAXLINEAR_GPHY=m
# CONFIG_MEDIATEK_GE_PHY is not set
CONFIG_MICREL_PHY=m
CONFIG_MICROCHIP_PHY=y
CONFIG_MICROCHIP_T1_PHY=m
CONFIG_MICROSEMI_PHY=m
# CONFIG_MOTORCOMM_PHY is not set
CONFIG_NATIONAL_PHY=y
CONFIG_NXP_C45_TJA11XX_PHY=y
CONFIG_NXP_TJA11XX_PHY=m
CONFIG_AT803X_PHY=y
CONFIG_QSEMI_PHY=m
CONFIG_REALTEK_PHY=y
# CONFIG_RENESAS_PHY is not set
CONFIG_ROCKCHIP_PHY=m
CONFIG_SMSC_PHY=y
CONFIG_STE10XP=m
CONFIG_TERANETICS_PHY=m
# CONFIG_DP83822_PHY is not set
CONFIG_DP83TC811_PHY=y
# CONFIG_DP83848_PHY is not set
# CONFIG_DP83867_PHY is not set
# CONFIG_DP83869_PHY is not set
# CONFIG_DP83TD510_PHY is not set
CONFIG_VITESSE_PHY=y
CONFIG_XILINX_GMII2RGMII=y
# CONFIG_MICREL_KS8995MA is not set
# CONFIG_PSE_CONTROLLER is not set
CONFIG_CAN_DEV=m
CONFIG_CAN_VCAN=m
# CONFIG_CAN_VXCAN is not set
# CONFIG_CAN_NETLINK is not set
# CONFIG_CAN_DEBUG_DEVICES is not set

#
# MCTP Device Drivers
#
CONFIG_MCTP_SERIAL=m
# CONFIG_MCTP_TRANSPORT_I2C is not set
# end of MCTP Device Drivers

CONFIG_MDIO_DEVICE=y
CONFIG_MDIO_BUS=y
CONFIG_FWNODE_MDIO=y
CONFIG_OF_MDIO=y
CONFIG_MDIO_DEVRES=y
CONFIG_MDIO_SUN4I=m
CONFIG_MDIO_XGENE=m
CONFIG_MDIO_ASPEED=y
CONFIG_MDIO_BITBANG=y
CONFIG_MDIO_BCM_IPROC=y
CONFIG_MDIO_BCM_UNIMAC=y
CONFIG_MDIO_CAVIUM=y
CONFIG_MDIO_GPIO=m
CONFIG_MDIO_HISI_FEMAC=y
CONFIG_MDIO_I2C=m
# CONFIG_MDIO_MVUSB is not set
CONFIG_MDIO_MSCC_MIIM=y
CONFIG_MDIO_MOXART=m
CONFIG_MDIO_OCTEON=y
CONFIG_MDIO_IPQ4019=y
CONFIG_MDIO_IPQ8064=y

#
# MDIO Multiplexers
#
CONFIG_MDIO_BUS_MUX=y
CONFIG_MDIO_BUS_MUX_MESON_G12A=m
CONFIG_MDIO_BUS_MUX_BCM6368=m
CONFIG_MDIO_BUS_MUX_BCM_IPROC=y
# CONFIG_MDIO_BUS_MUX_GPIO is not set
# CONFIG_MDIO_BUS_MUX_MULTIPLEXER is not set
CONFIG_MDIO_BUS_MUX_MMIOREG=y

#
# PCS device drivers
#
CONFIG_PCS_RZN1_MIIC=y
# end of PCS device drivers

# CONFIG_PPP is not set
CONFIG_SLIP=y
# CONFIG_SLIP_COMPRESSED is not set
# CONFIG_SLIP_SMART is not set
# CONFIG_SLIP_MODE_SLIP6 is not set
CONFIG_USB_NET_DRIVERS=y
CONFIG_USB_CATC=y
# CONFIG_USB_KAWETH is not set
CONFIG_USB_PEGASUS=y
CONFIG_USB_RTL8150=m
CONFIG_USB_RTL8152=y
CONFIG_USB_LAN78XX=y
CONFIG_USB_USBNET=m
CONFIG_USB_NET_AX8817X=m
CONFIG_USB_NET_AX88179_178A=m
CONFIG_USB_NET_CDCETHER=m
CONFIG_USB_NET_CDC_EEM=m
CONFIG_USB_NET_CDC_NCM=m
CONFIG_USB_NET_HUAWEI_CDC_NCM=m
# CONFIG_USB_NET_CDC_MBIM is not set
CONFIG_USB_NET_DM9601=m
CONFIG_USB_NET_SR9700=m
CONFIG_USB_NET_SR9800=m
CONFIG_USB_NET_SMSC75XX=m
CONFIG_USB_NET_SMSC95XX=m
# CONFIG_USB_NET_GL620A is not set
CONFIG_USB_NET_NET1080=m
CONFIG_USB_NET_PLUSB=m
# CONFIG_USB_NET_MCS7830 is not set
# CONFIG_USB_NET_RNDIS_HOST is not set
CONFIG_USB_NET_CDC_SUBSET_ENABLE=m
CONFIG_USB_NET_CDC_SUBSET=m
CONFIG_USB_ALI_M5632=y
CONFIG_USB_AN2720=y
CONFIG_USB_BELKIN=y
# CONFIG_USB_ARMLINUX is not set
CONFIG_USB_EPSON2888=y
CONFIG_USB_KC2190=y
CONFIG_USB_NET_ZAURUS=m
CONFIG_USB_NET_CX82310_ETH=m
# CONFIG_USB_NET_KALMIA is not set
CONFIG_USB_NET_QMI_WWAN=m
# CONFIG_USB_HSO is not set
CONFIG_USB_NET_INT51X1=m
CONFIG_USB_CDC_PHONET=m
# CONFIG_USB_IPHETH is not set
CONFIG_USB_SIERRA_NET=m
CONFIG_USB_VL600=m
# CONFIG_USB_NET_CH9200 is not set
CONFIG_USB_NET_AQC111=m
CONFIG_USB_RTL8153_ECM=m
# CONFIG_WLAN is not set
CONFIG_WAN=y
CONFIG_HDLC=m
# CONFIG_HDLC_RAW is not set
CONFIG_HDLC_RAW_ETH=m
CONFIG_HDLC_CISCO=m
CONFIG_HDLC_FR=m
CONFIG_HDLC_PPP=m

#
# X.25/LAPB support is disabled
#
CONFIG_PCI200SYN=m
CONFIG_WANXL=m
CONFIG_PC300TOO=m
CONFIG_FARSYNC=m
CONFIG_FSL_UCC_HDLC=m
CONFIG_SLIC_DS26522=y
# CONFIG_IEEE802154_DRIVERS is not set

#
# Wireless WAN
#
# CONFIG_WWAN is not set
# end of Wireless WAN

# CONFIG_NET_FAILOVER is not set
CONFIG_ISDN=y
CONFIG_ISDN_CAPI=y
# CONFIG_MISDN is not set

#
# Input device support
#
CONFIG_INPUT=y
CONFIG_INPUT_LEDS=m
CONFIG_INPUT_FF_MEMLESS=y
# CONFIG_INPUT_SPARSEKMAP is not set
CONFIG_INPUT_MATRIXKMAP=y
CONFIG_INPUT_VIVALDIFMAP=m

#
# Userland interfaces
#
CONFIG_INPUT_MOUSEDEV=m
# CONFIG_INPUT_MOUSEDEV_PSAUX is not set
CONFIG_INPUT_MOUSEDEV_SCREEN_X=1024
CONFIG_INPUT_MOUSEDEV_SCREEN_Y=768
# CONFIG_INPUT_JOYDEV is not set
# CONFIG_INPUT_EVDEV is not set
# CONFIG_INPUT_EVBUG is not set

#
# Input Device Drivers
#
CONFIG_INPUT_KEYBOARD=y
# CONFIG_KEYBOARD_ADC is not set
CONFIG_KEYBOARD_ADP5588=m
CONFIG_KEYBOARD_ADP5589=y
# CONFIG_KEYBOARD_ATKBD is not set
# CONFIG_KEYBOARD_QT1050 is not set
CONFIG_KEYBOARD_QT1070=m
CONFIG_KEYBOARD_QT2160=m
CONFIG_KEYBOARD_CLPS711X=m
# CONFIG_KEYBOARD_DLINK_DIR685 is not set
CONFIG_KEYBOARD_LKKBD=m
CONFIG_KEYBOARD_EP93XX=y
# CONFIG_KEYBOARD_GPIO is not set
CONFIG_KEYBOARD_GPIO_POLLED=m
CONFIG_KEYBOARD_TCA6416=m
# CONFIG_KEYBOARD_TCA8418 is not set
CONFIG_KEYBOARD_MATRIX=m
CONFIG_KEYBOARD_LM8323=y
# CONFIG_KEYBOARD_LM8333 is not set
CONFIG_KEYBOARD_LPC32XX=y
CONFIG_KEYBOARD_MAX7359=y
CONFIG_KEYBOARD_MCS=m
CONFIG_KEYBOARD_MPR121=m
# CONFIG_KEYBOARD_SNVS_PWRKEY is not set
# CONFIG_KEYBOARD_IMX is not set
CONFIG_KEYBOARD_NEWTON=m
CONFIG_KEYBOARD_NOMADIK=m
CONFIG_KEYBOARD_TEGRA=y
# CONFIG_KEYBOARD_OPENCORES is not set
# CONFIG_KEYBOARD_PINEPHONE is not set
CONFIG_KEYBOARD_PXA27x=m
CONFIG_KEYBOARD_PMIC8XXX=m
CONFIG_KEYBOARD_SAMSUNG=m
# CONFIG_KEYBOARD_GOLDFISH_EVENTS is not set
# CONFIG_KEYBOARD_STOWAWAY is not set
CONFIG_KEYBOARD_ST_KEYSCAN=m
# CONFIG_KEYBOARD_SUNKBD is not set
# CONFIG_KEYBOARD_SH_KEYSC is not set
# CONFIG_KEYBOARD_STMPE is not set
CONFIG_KEYBOARD_IQS62X=m
# CONFIG_KEYBOARD_OMAP4 is not set
CONFIG_KEYBOARD_SPEAR=m
CONFIG_KEYBOARD_TC3589X=y
# CONFIG_KEYBOARD_TM2_TOUCHKEY is not set
CONFIG_KEYBOARD_TWL4030=y
# CONFIG_KEYBOARD_XTKBD is not set
CONFIG_KEYBOARD_CAP11XX=m
# CONFIG_KEYBOARD_BCM is not set
CONFIG_KEYBOARD_MT6779=m
# CONFIG_KEYBOARD_MTK_PMIC is not set
CONFIG_KEYBOARD_CYPRESS_SF=y
CONFIG_INPUT_MOUSE=y
CONFIG_MOUSE_PS2=m
CONFIG_MOUSE_PS2_ALPS=y
CONFIG_MOUSE_PS2_BYD=y
CONFIG_MOUSE_PS2_LOGIPS2PP=y
CONFIG_MOUSE_PS2_SYNAPTICS=y
CONFIG_MOUSE_PS2_SYNAPTICS_SMBUS=y
CONFIG_MOUSE_PS2_CYPRESS=y
CONFIG_MOUSE_PS2_TRACKPOINT=y
CONFIG_MOUSE_PS2_ELANTECH=y
CONFIG_MOUSE_PS2_ELANTECH_SMBUS=y
# CONFIG_MOUSE_PS2_SENTELIC is not set
CONFIG_MOUSE_PS2_TOUCHKIT=y
CONFIG_MOUSE_PS2_FOCALTECH=y
CONFIG_MOUSE_PS2_SMBUS=y
CONFIG_MOUSE_SERIAL=m
CONFIG_MOUSE_APPLETOUCH=y
CONFIG_MOUSE_BCM5974=m
CONFIG_MOUSE_CYAPA=m
# CONFIG_MOUSE_ELAN_I2C is not set
CONFIG_MOUSE_VSXXXAA=m
CONFIG_MOUSE_GPIO=y
CONFIG_MOUSE_SYNAPTICS_I2C=m
CONFIG_MOUSE_SYNAPTICS_USB=m
CONFIG_INPUT_JOYSTICK=y
CONFIG_JOYSTICK_ANALOG=m
CONFIG_JOYSTICK_A3D=y
# CONFIG_JOYSTICK_ADC is not set
CONFIG_JOYSTICK_ADI=y
CONFIG_JOYSTICK_COBRA=m
CONFIG_JOYSTICK_GF2K=m
CONFIG_JOYSTICK_GRIP=m
CONFIG_JOYSTICK_GRIP_MP=y
CONFIG_JOYSTICK_GUILLEMOT=y
CONFIG_JOYSTICK_INTERACT=y
# CONFIG_JOYSTICK_SIDEWINDER is not set
CONFIG_JOYSTICK_TMDC=m
CONFIG_JOYSTICK_IFORCE=m
CONFIG_JOYSTICK_IFORCE_USB=m
# CONFIG_JOYSTICK_IFORCE_232 is not set
# CONFIG_JOYSTICK_WARRIOR is not set
# CONFIG_JOYSTICK_MAGELLAN is not set
CONFIG_JOYSTICK_SPACEORB=m
CONFIG_JOYSTICK_SPACEBALL=m
# CONFIG_JOYSTICK_STINGER is not set
CONFIG_JOYSTICK_TWIDJOY=y
# CONFIG_JOYSTICK_ZHENHUA is not set
CONFIG_JOYSTICK_AS5011=m
CONFIG_JOYSTICK_JOYDUMP=m
# CONFIG_JOYSTICK_XPAD is not set
# CONFIG_JOYSTICK_PSXPAD_SPI is not set
CONFIG_JOYSTICK_PXRC=m
CONFIG_JOYSTICK_QWIIC=m
CONFIG_JOYSTICK_FSIA6B=m
# CONFIG_JOYSTICK_SENSEHAT is not set
# CONFIG_INPUT_TABLET is not set
CONFIG_INPUT_TOUCHSCREEN=y
CONFIG_TOUCHSCREEN_ADS7846=m
CONFIG_TOUCHSCREEN_AD7877=y
# CONFIG_TOUCHSCREEN_AD7879 is not set
# CONFIG_TOUCHSCREEN_ADC is not set
CONFIG_TOUCHSCREEN_AR1021_I2C=m
# CONFIG_TOUCHSCREEN_ATMEL_MXT is not set
CONFIG_TOUCHSCREEN_AUO_PIXCIR=m
CONFIG_TOUCHSCREEN_BU21013=m
CONFIG_TOUCHSCREEN_BU21029=m
# CONFIG_TOUCHSCREEN_CHIPONE_ICN8318 is not set
# CONFIG_TOUCHSCREEN_CY8CTMA140 is not set
CONFIG_TOUCHSCREEN_CY8CTMG110=m
CONFIG_TOUCHSCREEN_CYTTSP_CORE=m
CONFIG_TOUCHSCREEN_CYTTSP_I2C=m
CONFIG_TOUCHSCREEN_CYTTSP_SPI=m
# CONFIG_TOUCHSCREEN_CYTTSP4_CORE is not set
CONFIG_TOUCHSCREEN_CYTTSP5=y
CONFIG_TOUCHSCREEN_DA9052=m
# CONFIG_TOUCHSCREEN_DYNAPRO is not set
CONFIG_TOUCHSCREEN_HAMPSHIRE=y
# CONFIG_TOUCHSCREEN_EETI is not set
CONFIG_TOUCHSCREEN_EGALAX=y
CONFIG_TOUCHSCREEN_EGALAX_SERIAL=y
CONFIG_TOUCHSCREEN_EXC3000=y
CONFIG_TOUCHSCREEN_FUJITSU=m
CONFIG_TOUCHSCREEN_GOODIX=m
CONFIG_TOUCHSCREEN_HIDEEP=y
CONFIG_TOUCHSCREEN_HYCON_HY46XX=m
CONFIG_TOUCHSCREEN_HYNITRON_CSTXXX=m
CONFIG_TOUCHSCREEN_ILI210X=y
CONFIG_TOUCHSCREEN_ILITEK=m
# CONFIG_TOUCHSCREEN_IPROC is not set
CONFIG_TOUCHSCREEN_S6SY761=y
CONFIG_TOUCHSCREEN_GUNZE=y
# CONFIG_TOUCHSCREEN_EKTF2127 is not set
CONFIG_TOUCHSCREEN_ELAN=y
# CONFIG_TOUCHSCREEN_ELO is not set
CONFIG_TOUCHSCREEN_WACOM_W8001=m
CONFIG_TOUCHSCREEN_WACOM_I2C=y
CONFIG_TOUCHSCREEN_MAX11801=y
CONFIG_TOUCHSCREEN_MCS5000=y
CONFIG_TOUCHSCREEN_MMS114=y
# CONFIG_TOUCHSCREEN_MELFAS_MIP4 is not set
CONFIG_TOUCHSCREEN_MSG2638=y
# CONFIG_TOUCHSCREEN_MTOUCH is not set
# CONFIG_TOUCHSCREEN_IMAGIS is not set
CONFIG_TOUCHSCREEN_IMX6UL_TSC=y
CONFIG_TOUCHSCREEN_INEXIO=m
# CONFIG_TOUCHSCREEN_MK712 is not set
CONFIG_TOUCHSCREEN_PENMOUNT=y
CONFIG_TOUCHSCREEN_EDT_FT5X06=y
CONFIG_TOUCHSCREEN_RASPBERRYPI_FW=m
CONFIG_TOUCHSCREEN_MIGOR=y
# CONFIG_TOUCHSCREEN_TOUCHRIGHT is not set
CONFIG_TOUCHSCREEN_TOUCHWIN=m
CONFIG_TOUCHSCREEN_TI_AM335X_TSC=m
CONFIG_TOUCHSCREEN_PIXCIR=m
CONFIG_TOUCHSCREEN_WDT87XX_I2C=m
# CONFIG_TOUCHSCREEN_WM831X is not set
CONFIG_TOUCHSCREEN_USB_COMPOSITE=y
# CONFIG_TOUCHSCREEN_MX25 is not set
CONFIG_TOUCHSCREEN_MC13783=y
CONFIG_TOUCHSCREEN_USB_EGALAX=y
CONFIG_TOUCHSCREEN_USB_PANJIT=y
CONFIG_TOUCHSCREEN_USB_3M=y
CONFIG_TOUCHSCREEN_USB_ITM=y
CONFIG_TOUCHSCREEN_USB_ETURBO=y
CONFIG_TOUCHSCREEN_USB_GUNZE=y
CONFIG_TOUCHSCREEN_USB_DMC_TSC10=y
CONFIG_TOUCHSCREEN_USB_IRTOUCH=y
CONFIG_TOUCHSCREEN_USB_IDEALTEK=y
CONFIG_TOUCHSCREEN_USB_GENERAL_TOUCH=y
CONFIG_TOUCHSCREEN_USB_GOTOP=y
CONFIG_TOUCHSCREEN_USB_JASTEC=y
CONFIG_TOUCHSCREEN_USB_ELO=y
CONFIG_TOUCHSCREEN_USB_E2I=y
CONFIG_TOUCHSCREEN_USB_ZYTRONIC=y
CONFIG_TOUCHSCREEN_USB_ETT_TC45USB=y
CONFIG_TOUCHSCREEN_USB_NEXIO=y
CONFIG_TOUCHSCREEN_USB_EASYTOUCH=y
# CONFIG_TOUCHSCREEN_TOUCHIT213 is not set
CONFIG_TOUCHSCREEN_TS4800=y
# CONFIG_TOUCHSCREEN_TSC_SERIO is not set
CONFIG_TOUCHSCREEN_TSC200X_CORE=y
CONFIG_TOUCHSCREEN_TSC2004=m
CONFIG_TOUCHSCREEN_TSC2005=y
CONFIG_TOUCHSCREEN_TSC2007=y
# CONFIG_TOUCHSCREEN_TSC2007_IIO is not set
# CONFIG_TOUCHSCREEN_RM_TS is not set
CONFIG_TOUCHSCREEN_SILEAD=y
CONFIG_TOUCHSCREEN_SIS_I2C=y
CONFIG_TOUCHSCREEN_ST1232=m
CONFIG_TOUCHSCREEN_STMFTS=m
# CONFIG_TOUCHSCREEN_STMPE is not set
CONFIG_TOUCHSCREEN_SUN4I=m
# CONFIG_TOUCHSCREEN_SURFACE3_SPI is not set
CONFIG_TOUCHSCREEN_SX8654=m
CONFIG_TOUCHSCREEN_TPS6507X=m
CONFIG_TOUCHSCREEN_ZET6223=m
CONFIG_TOUCHSCREEN_ZFORCE=y
CONFIG_TOUCHSCREEN_COLIBRI_VF50=m
# CONFIG_TOUCHSCREEN_ROHM_BU21023 is not set
# CONFIG_TOUCHSCREEN_IQS5XX is not set
CONFIG_TOUCHSCREEN_ZINITIX=y
CONFIG_TOUCHSCREEN_HIMAX_HX83112B=m
CONFIG_INPUT_MISC=y
# CONFIG_INPUT_88PM80X_ONKEY is not set
CONFIG_INPUT_AD714X=m
# CONFIG_INPUT_AD714X_I2C is not set
CONFIG_INPUT_AD714X_SPI=m
CONFIG_INPUT_ARIEL_PWRBUTTON=m
CONFIG_INPUT_ATC260X_ONKEY=m
CONFIG_INPUT_ATMEL_CAPTOUCH=y
CONFIG_INPUT_BMA150=m
CONFIG_INPUT_E3X0_BUTTON=m
CONFIG_INPUT_PM8XXX_VIBRATOR=m
CONFIG_INPUT_PMIC8XXX_PWRKEY=m
# CONFIG_INPUT_MAX77650_ONKEY is not set
CONFIG_INPUT_MAX77693_HAPTIC=y
CONFIG_INPUT_MC13783_PWRBUTTON=y
CONFIG_INPUT_MMA8450=m
# CONFIG_INPUT_GPIO_BEEPER is not set
# CONFIG_INPUT_GPIO_DECODER is not set
# CONFIG_INPUT_GPIO_VIBRA is not set
CONFIG_INPUT_ATI_REMOTE2=y
CONFIG_INPUT_KEYSPAN_REMOTE=m
CONFIG_INPUT_KXTJ9=m
CONFIG_INPUT_POWERMATE=m
# CONFIG_INPUT_YEALINK is not set
CONFIG_INPUT_CM109=y
# CONFIG_INPUT_REGULATOR_HAPTIC is not set
# CONFIG_INPUT_TPS65218_PWRBUTTON is not set
# CONFIG_INPUT_AXP20X_PEK is not set
# CONFIG_INPUT_TWL4030_PWRBUTTON is not set
# CONFIG_INPUT_TWL4030_VIBRA is not set
CONFIG_INPUT_TWL6040_VIBRA=m
CONFIG_INPUT_UINPUT=m
CONFIG_INPUT_PALMAS_PWRBUTTON=y
# CONFIG_INPUT_PCF50633_PMU is not set
CONFIG_INPUT_PCF8574=y
CONFIG_INPUT_PWM_BEEPER=m
# CONFIG_INPUT_PWM_VIBRA is not set
CONFIG_INPUT_GPIO_ROTARY_ENCODER=y
# CONFIG_INPUT_DA7280_HAPTICS is not set
# CONFIG_INPUT_DA9052_ONKEY is not set
# CONFIG_INPUT_DA9055_ONKEY is not set
# CONFIG_INPUT_DA9063_ONKEY is not set
CONFIG_INPUT_WM831X_ON=m
CONFIG_INPUT_ADXL34X=y
CONFIG_INPUT_ADXL34X_I2C=y
CONFIG_INPUT_ADXL34X_SPI=m
CONFIG_INPUT_IBM_PANEL=m
CONFIG_INPUT_IMS_PCU=m
CONFIG_INPUT_IQS269A=y
# CONFIG_INPUT_IQS626A is not set
CONFIG_INPUT_IQS7222=y
CONFIG_INPUT_CMA3000=y
# CONFIG_INPUT_CMA3000_I2C is not set
CONFIG_INPUT_IDEAPAD_SLIDEBAR=m
# CONFIG_INPUT_DRV260X_HAPTICS is not set
CONFIG_INPUT_DRV2665_HAPTICS=m
CONFIG_INPUT_DRV2667_HAPTICS=y
CONFIG_INPUT_HISI_POWERKEY=y
CONFIG_INPUT_RAVE_SP_PWRBUTTON=m
CONFIG_INPUT_SC27XX_VIBRA=m
CONFIG_INPUT_RT5120_PWRKEY=y
CONFIG_RMI4_CORE=m
CONFIG_RMI4_I2C=m
# CONFIG_RMI4_SPI is not set
CONFIG_RMI4_SMB=m
CONFIG_RMI4_F03=y
CONFIG_RMI4_F03_SERIO=m
CONFIG_RMI4_2D_SENSOR=y
CONFIG_RMI4_F11=y
CONFIG_RMI4_F12=y
CONFIG_RMI4_F30=y
CONFIG_RMI4_F34=y
CONFIG_RMI4_F3A=y
CONFIG_RMI4_F54=y
CONFIG_RMI4_F55=y

#
# Hardware I/O ports
#
CONFIG_SERIO=y
CONFIG_ARCH_MIGHT_HAVE_PC_SERIO=y
CONFIG_SERIO_I8042=m
CONFIG_SERIO_SERPORT=y
CONFIG_SERIO_PCIPS2=y
CONFIG_SERIO_LIBPS2=m
# CONFIG_SERIO_RAW is not set
CONFIG_SERIO_ALTERA_PS2=m
CONFIG_SERIO_PS2MULT=m
# CONFIG_SERIO_ARC_PS2 is not set
CONFIG_SERIO_APBPS2=m
# CONFIG_SERIO_OLPC_APSP is not set
CONFIG_SERIO_SUN4I_PS2=m
CONFIG_SERIO_GPIO_PS2=m
# CONFIG_USERIO is not set
CONFIG_GAMEPORT=y
# CONFIG_GAMEPORT_NS558 is not set
# CONFIG_GAMEPORT_L4 is not set
CONFIG_GAMEPORT_EMU10K1=m
CONFIG_GAMEPORT_FM801=y
# end of Hardware I/O ports
# end of Input device support

#
# Character devices
#
CONFIG_TTY=y
CONFIG_VT=y
CONFIG_CONSOLE_TRANSLATIONS=y
CONFIG_VT_CONSOLE=y
CONFIG_HW_CONSOLE=y
CONFIG_VT_HW_CONSOLE_BINDING=y
CONFIG_UNIX98_PTYS=y
# CONFIG_LEGACY_PTYS is not set
# CONFIG_LEGACY_TIOCSTI is not set
CONFIG_LDISC_AUTOLOAD=y

#
# Serial drivers
#
CONFIG_SERIAL_EARLYCON=y
CONFIG_SERIAL_8250=m
CONFIG_SERIAL_8250_DEPRECATED_OPTIONS=y
# CONFIG_SERIAL_8250_16550A_VARIANTS is not set
# CONFIG_SERIAL_8250_FINTEK is not set
# CONFIG_SERIAL_8250_PCI is not set
CONFIG_SERIAL_8250_NR_UARTS=4
CONFIG_SERIAL_8250_RUNTIME_UARTS=4
CONFIG_SERIAL_8250_EXTENDED=y
CONFIG_SERIAL_8250_MANY_PORTS=y
CONFIG_SERIAL_8250_ASPEED_VUART=m
CONFIG_SERIAL_8250_SHARE_IRQ=y
CONFIG_SERIAL_8250_DETECT_IRQ=y
CONFIG_SERIAL_8250_RSA=y
CONFIG_SERIAL_8250_DWLIB=y
CONFIG_SERIAL_8250_BCM2835AUX=m
CONFIG_SERIAL_8250_DW=m
CONFIG_SERIAL_8250_EM=m
# CONFIG_SERIAL_8250_IOC3 is not set
# CONFIG_SERIAL_8250_RT288X is not set
CONFIG_SERIAL_8250_OMAP=m
CONFIG_SERIAL_8250_LPC18XX=m
CONFIG_SERIAL_8250_MT6577=m
CONFIG_SERIAL_8250_UNIPHIER=m
CONFIG_SERIAL_8250_INGENIC=m
CONFIG_SERIAL_8250_LPSS=m
# CONFIG_SERIAL_8250_MID is not set
CONFIG_SERIAL_8250_PERICOM=m
CONFIG_SERIAL_8250_PXA=m
# CONFIG_SERIAL_8250_TEGRA is not set
# CONFIG_SERIAL_8250_BCM7271 is not set
CONFIG_SERIAL_OF_PLATFORM=m

#
# Non-8250 serial port support
#
CONFIG_SERIAL_AMBA_PL010=y
CONFIG_SERIAL_AMBA_PL010_CONSOLE=y
# CONFIG_SERIAL_ATMEL is not set
CONFIG_SERIAL_MESON=m
CONFIG_SERIAL_MESON_CONSOLE=y
CONFIG_SERIAL_CLPS711X=m
# CONFIG_SERIAL_SAMSUNG is not set
CONFIG_SERIAL_TEGRA=y
CONFIG_SERIAL_MAX3100=m
CONFIG_SERIAL_MAX310X=m
CONFIG_SERIAL_IMX=y
CONFIG_SERIAL_IMX_CONSOLE=m
CONFIG_SERIAL_IMX_EARLYCON=y
# CONFIG_SERIAL_UARTLITE is not set
CONFIG_SERIAL_SUNCORE=y
CONFIG_SERIAL_SUNZILOG=m
# CONFIG_SERIAL_SUNSU is not set
CONFIG_SERIAL_SUNSAB=y
CONFIG_SERIAL_SUNSAB_CONSOLE=y
CONFIG_SERIAL_SH_SCI=y
CONFIG_SERIAL_SH_SCI_NR_UARTS=2
CONFIG_SERIAL_SH_SCI_CONSOLE=y
# CONFIG_SERIAL_HS_LPC32XX is not set
CONFIG_SERIAL_CORE=y
CONFIG_SERIAL_CORE_CONSOLE=y
CONFIG_SERIAL_ICOM=m
CONFIG_SERIAL_JSM=y
CONFIG_SERIAL_MSM=y
CONFIG_SERIAL_MSM_CONSOLE=y
# CONFIG_SERIAL_QCOM_GENI is not set
# CONFIG_SERIAL_VT8500 is not set
CONFIG_SERIAL_OMAP=m
# CONFIG_SERIAL_SIFIVE is not set
CONFIG_SERIAL_LANTIQ=m
CONFIG_SERIAL_QE=y
# CONFIG_SERIAL_SCCNXP is not set
CONFIG_SERIAL_SC16IS7XX_CORE=m
CONFIG_SERIAL_SC16IS7XX=m
# CONFIG_SERIAL_SC16IS7XX_I2C is not set
CONFIG_SERIAL_SC16IS7XX_SPI=y
CONFIG_SERIAL_TIMBERDALE=m
CONFIG_SERIAL_BCM63XX=y
# CONFIG_SERIAL_BCM63XX_CONSOLE is not set
# CONFIG_SERIAL_GRLIB_GAISLER_APBUART is not set
CONFIG_SERIAL_ALTERA_JTAGUART=y
CONFIG_SERIAL_ALTERA_JTAGUART_CONSOLE=y
# CONFIG_SERIAL_ALTERA_JTAGUART_CONSOLE_BYPASS is not set
CONFIG_SERIAL_ALTERA_UART=y
CONFIG_SERIAL_ALTERA_UART_MAXPORTS=4
CONFIG_SERIAL_ALTERA_UART_BAUDRATE=115200
CONFIG_SERIAL_ALTERA_UART_CONSOLE=y
CONFIG_SERIAL_PCH_UART=m
# CONFIG_SERIAL_MXS_AUART is not set
CONFIG_SERIAL_XILINX_PS_UART=y
CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
# CONFIG_SERIAL_MPS2_UART_CONSOLE is not set
CONFIG_SERIAL_MPS2_UART=y
# CONFIG_SERIAL_ARC is not set
# CONFIG_SERIAL_RP2 is not set
# CONFIG_SERIAL_FSL_LPUART is not set
CONFIG_SERIAL_FSL_LINFLEXUART=m
CONFIG_SERIAL_CONEXANT_DIGICOLOR=m
# CONFIG_SERIAL_ST_ASC is not set
CONFIG_SERIAL_SPRD=m
CONFIG_SERIAL_STM32=m
CONFIG_SERIAL_MVEBU_UART=y
# CONFIG_SERIAL_MVEBU_CONSOLE is not set
# CONFIG_SERIAL_OWL is not set
# CONFIG_SERIAL_RDA is not set
CONFIG_SERIAL_MILBEAUT_USIO=y
CONFIG_SERIAL_MILBEAUT_USIO_PORTS=4
CONFIG_SERIAL_MILBEAUT_USIO_CONSOLE=y
CONFIG_SERIAL_LITEUART=m
CONFIG_SERIAL_LITEUART_MAX_PORTS=1
CONFIG_SERIAL_SUNPLUS=y
CONFIG_SERIAL_SUNPLUS_CONSOLE=y
# end of Serial drivers

CONFIG_SERIAL_MCTRL_GPIO=y
CONFIG_SERIAL_NONSTANDARD=y
CONFIG_MOXA_INTELLIO=y
CONFIG_MOXA_SMARTIO=m
CONFIG_SYNCLINK_GT=y
CONFIG_N_HDLC=y
CONFIG_N_GSM=m
# CONFIG_NOZOMI is not set
CONFIG_NULL_TTY=y
CONFIG_RPMSG_TTY=m
CONFIG_SERIAL_DEV_BUS=m
# CONFIG_VIRTIO_CONSOLE is not set
# CONFIG_IPMI_HANDLER is not set
CONFIG_IPMI_KCS_BMC=m
# CONFIG_ASPEED_KCS_IPMI_BMC is not set
CONFIG_NPCM7XX_KCS_IPMI_BMC=m
CONFIG_IPMI_KCS_BMC_CDEV_IPMI=m
CONFIG_IPMI_KCS_BMC_SERIO=m
CONFIG_ASPEED_BT_IPMI_BMC=y
# CONFIG_SSIF_IPMI_BMC is not set
# CONFIG_IPMB_DEVICE_INTERFACE is not set
CONFIG_HW_RANDOM=m
# CONFIG_HW_RANDOM_TIMERIOMEM is not set
# CONFIG_HW_RANDOM_ATMEL is not set
CONFIG_HW_RANDOM_BA431=m
CONFIG_HW_RANDOM_BCM2835=m
CONFIG_HW_RANDOM_IPROC_RNG200=m
CONFIG_HW_RANDOM_IXP4XX=m
CONFIG_HW_RANDOM_OMAP=m
# CONFIG_HW_RANDOM_OMAP3_ROM is not set
# CONFIG_HW_RANDOM_VIRTIO is not set
# CONFIG_HW_RANDOM_IMX_RNGC is not set
# CONFIG_HW_RANDOM_NOMADIK is not set
CONFIG_HW_RANDOM_STM32=m
# CONFIG_HW_RANDOM_MESON is not set
# CONFIG_HW_RANDOM_MTK is not set
# CONFIG_HW_RANDOM_EXYNOS is not set
CONFIG_HW_RANDOM_NPCM=m
CONFIG_HW_RANDOM_KEYSTONE=m
CONFIG_HW_RANDOM_CCTRNG=m
CONFIG_HW_RANDOM_XIPHERA=m
CONFIG_APPLICOM=m
CONFIG_DEVMEM=y
CONFIG_DEVPORT=y
# CONFIG_TCG_TPM is not set
# CONFIG_XILLYBUS is not set
# CONFIG_XILLYUSB is not set
# end of Character devices

#
# I2C support
#
CONFIG_I2C=y
CONFIG_I2C_BOARDINFO=y
CONFIG_I2C_COMPAT=y
CONFIG_I2C_CHARDEV=y
CONFIG_I2C_MUX=y

#
# Multiplexer I2C Chip support
#
# CONFIG_I2C_ARB_GPIO_CHALLENGE is not set
CONFIG_I2C_MUX_GPIO=m
# CONFIG_I2C_MUX_GPMUX is not set
# CONFIG_I2C_MUX_LTC4306 is not set
# CONFIG_I2C_MUX_PCA9541 is not set
CONFIG_I2C_MUX_PCA954x=m
# CONFIG_I2C_MUX_PINCTRL is not set
CONFIG_I2C_MUX_REG=y
# CONFIG_I2C_DEMUX_PINCTRL is not set
# CONFIG_I2C_MUX_MLXCPLD is not set
# end of Multiplexer I2C Chip support

# CONFIG_I2C_HELPER_AUTO is not set
CONFIG_I2C_SMBUS=y

#
# I2C Algorithms
#
CONFIG_I2C_ALGOBIT=y
CONFIG_I2C_ALGOPCF=y
CONFIG_I2C_ALGOPCA=m
# end of I2C Algorithms

#
# I2C Hardware Bus support
#

#
# PC SMBus host controller drivers
#
CONFIG_I2C_CCGX_UCSI=m
CONFIG_I2C_ALI1535=y
CONFIG_I2C_ALI1563=y
# CONFIG_I2C_ALI15X3 is not set
# CONFIG_I2C_AMD756 is not set
CONFIG_I2C_AMD8111=m
CONFIG_I2C_HIX5HD2=y
# CONFIG_I2C_I801 is not set
CONFIG_I2C_ISCH=y
# CONFIG_I2C_PIIX4 is not set
CONFIG_I2C_NFORCE2=y
CONFIG_I2C_NVIDIA_GPU=m
CONFIG_I2C_SIS5595=y
CONFIG_I2C_SIS630=y
CONFIG_I2C_SIS96X=m
CONFIG_I2C_VIA=m
CONFIG_I2C_VIAPRO=m

#
# I2C system bus drivers (mostly embedded / system-on-chip)
#
# CONFIG_I2C_ALTERA is not set
CONFIG_I2C_ASPEED=y
CONFIG_I2C_AT91=m
CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL=m
CONFIG_I2C_AXXIA=y
# CONFIG_I2C_BCM2835 is not set
# CONFIG_I2C_BCM_IPROC is not set
# CONFIG_I2C_BCM_KONA is not set
CONFIG_I2C_BRCMSTB=m
CONFIG_I2C_CADENCE=m
CONFIG_I2C_CBUS_GPIO=y
# CONFIG_I2C_DAVINCI is not set
CONFIG_I2C_DESIGNWARE_CORE=m
CONFIG_I2C_DESIGNWARE_SLAVE=y
CONFIG_I2C_DESIGNWARE_PLATFORM=m
CONFIG_I2C_DESIGNWARE_PCI=m
CONFIG_I2C_DIGICOLOR=y
CONFIG_I2C_EG20T=y
CONFIG_I2C_EMEV2=y
CONFIG_I2C_EXYNOS5=y
CONFIG_I2C_GPIO=y
CONFIG_I2C_GPIO_FAULT_INJECTOR=y
CONFIG_I2C_HIGHLANDER=y
# CONFIG_I2C_HISI is not set
CONFIG_I2C_IMG=m
CONFIG_I2C_IMX=m
CONFIG_I2C_IMX_LPI2C=y
CONFIG_I2C_IOP3XX=y
CONFIG_I2C_JZ4780=m
CONFIG_I2C_KEMPLD=m
# CONFIG_I2C_LPC2K is not set
# CONFIG_I2C_MESON is not set
CONFIG_I2C_MICROCHIP_CORE=y
CONFIG_I2C_MT65XX=m
CONFIG_I2C_MT7621=m
# CONFIG_I2C_MV64XXX is not set
# CONFIG_I2C_MXS is not set
CONFIG_I2C_NPCM=y
CONFIG_I2C_OCORES=m
CONFIG_I2C_OMAP=m
# CONFIG_I2C_OWL is not set
CONFIG_I2C_APPLE=y
CONFIG_I2C_PCA_PLATFORM=m
# CONFIG_I2C_PNX is not set
CONFIG_I2C_PXA=y
# CONFIG_I2C_PXA_SLAVE is not set
# CONFIG_I2C_QCOM_CCI is not set
CONFIG_I2C_QCOM_GENI=m
CONFIG_I2C_QUP=m
# CONFIG_I2C_RIIC is not set
CONFIG_I2C_RK3X=y
# CONFIG_I2C_RZV2M is not set
CONFIG_I2C_S3C2410=y
CONFIG_I2C_SH_MOBILE=m
# CONFIG_I2C_SIMTEC is not set
CONFIG_I2C_SPRD=y
CONFIG_I2C_ST=y
CONFIG_I2C_STM32F4=y
CONFIG_I2C_STM32F7=m
CONFIG_I2C_SUN6I_P2WI=y
CONFIG_I2C_SYNQUACER=m
# CONFIG_I2C_TEGRA is not set
CONFIG_I2C_TEGRA_BPMP=m
# CONFIG_I2C_UNIPHIER is not set
CONFIG_I2C_UNIPHIER_F=y
CONFIG_I2C_VERSATILE=m
# CONFIG_I2C_WMT is not set
# CONFIG_I2C_XILINX is not set
# CONFIG_I2C_XLP9XX is not set
# CONFIG_I2C_RCAR is not set

#
# External I2C/SMBus adapter drivers
#
CONFIG_I2C_DIOLAN_U2C=m
# CONFIG_I2C_DLN2 is not set
# CONFIG_I2C_CP2615 is not set
# CONFIG_I2C_PCI1XXXX is not set
# CONFIG_I2C_ROBOTFUZZ_OSIF is not set
CONFIG_I2C_TAOS_EVM=m
CONFIG_I2C_TINY_USB=m
CONFIG_I2C_VIPERBOARD=m

#
# Other I2C/SMBus bus drivers
#
CONFIG_I2C_MLXCPLD=m
CONFIG_I2C_FSI=y
CONFIG_I2C_VIRTIO=y
# end of I2C Hardware Bus support

CONFIG_I2C_STUB=m
CONFIG_I2C_SLAVE=y
CONFIG_I2C_SLAVE_EEPROM=m
CONFIG_I2C_SLAVE_TESTUNIT=m
# CONFIG_I2C_DEBUG_CORE is not set
CONFIG_I2C_DEBUG_ALGO=y
# CONFIG_I2C_DEBUG_BUS is not set
# end of I2C support

CONFIG_I3C=m
CONFIG_CDNS_I3C_MASTER=m
# CONFIG_DW_I3C_MASTER is not set
# CONFIG_SVC_I3C_MASTER is not set
CONFIG_MIPI_I3C_HCI=m
CONFIG_SPI=y
CONFIG_SPI_MASTER=y
CONFIG_SPI_MEM=y

#
# SPI Master Controller Drivers
#
# CONFIG_SPI_ALTERA is not set
CONFIG_SPI_ALTERA_CORE=y
CONFIG_SPI_ALTERA_DFL=m
CONFIG_SPI_AR934X=y
# CONFIG_SPI_ATH79 is not set
CONFIG_SPI_ARMADA_3700=y
CONFIG_SPI_ASPEED_SMC=y
CONFIG_SPI_ATMEL=m
CONFIG_SPI_AT91_USART=m
# CONFIG_SPI_ATMEL_QUADSPI is not set
CONFIG_SPI_AXI_SPI_ENGINE=y
CONFIG_SPI_BCM2835=m
CONFIG_SPI_BCM2835AUX=y
CONFIG_SPI_BCM63XX=y
CONFIG_SPI_BCM63XX_HSSPI=y
# CONFIG_SPI_BCM_QSPI is not set
CONFIG_SPI_BITBANG=y
CONFIG_SPI_CADENCE=m
# CONFIG_SPI_CADENCE_QUADSPI is not set
# CONFIG_SPI_CADENCE_XSPI is not set
CONFIG_SPI_CLPS711X=y
CONFIG_SPI_DESIGNWARE=m
# CONFIG_SPI_DW_DMA is not set
# CONFIG_SPI_DW_PCI is not set
CONFIG_SPI_DW_MMIO=m
CONFIG_SPI_DW_BT1=m
CONFIG_SPI_DW_BT1_DIRMAP=y
CONFIG_SPI_DLN2=y
# CONFIG_SPI_EP93XX is not set
# CONFIG_SPI_FSI is not set
CONFIG_SPI_FSL_LPSPI=m
# CONFIG_SPI_FSL_QUADSPI is not set
CONFIG_SPI_GXP=y
CONFIG_SPI_HISI_KUNPENG=m
CONFIG_SPI_HISI_SFC_V3XX=m
CONFIG_SPI_NXP_FLEXSPI=m
CONFIG_SPI_GPIO=m
CONFIG_SPI_IMG_SPFI=y
# CONFIG_SPI_IMX is not set
CONFIG_SPI_INGENIC=y
CONFIG_SPI_INTEL=y
CONFIG_SPI_INTEL_PCI=y
CONFIG_SPI_INTEL_PLATFORM=y
# CONFIG_SPI_JCORE is not set
CONFIG_SPI_LP8841_RTC=y
CONFIG_SPI_FSL_LIB=m
CONFIG_SPI_FSL_SPI=m
# CONFIG_SPI_FSL_DSPI is not set
# CONFIG_SPI_MESON_SPICC is not set
CONFIG_SPI_MESON_SPIFC=m
CONFIG_SPI_MICROCHIP_CORE=m
CONFIG_SPI_MICROCHIP_CORE_QSPI=m
CONFIG_SPI_MT65XX=m
CONFIG_SPI_MT7621=y
CONFIG_SPI_MTK_NOR=y
CONFIG_SPI_WPCM_FIU=m
CONFIG_SPI_NPCM_FIU=y
# CONFIG_SPI_NPCM_PSPI is not set
CONFIG_SPI_LANTIQ_SSC=m
CONFIG_SPI_OC_TINY=y
CONFIG_SPI_OMAP24XX=m
CONFIG_SPI_TI_QSPI=y
# CONFIG_SPI_OMAP_100K is not set
CONFIG_SPI_ORION=y
CONFIG_SPI_PCI1XXXX=y
CONFIG_SPI_PIC32=m
# CONFIG_SPI_PIC32_SQI is not set
CONFIG_SPI_PXA2XX=m
CONFIG_SPI_PXA2XX_PCI=m
CONFIG_SPI_ROCKCHIP=y
CONFIG_SPI_ROCKCHIP_SFC=m
CONFIG_SPI_RPCIF=y
CONFIG_SPI_RSPI=m
CONFIG_SPI_QUP=y
# CONFIG_SPI_QCOM_GENI is not set
CONFIG_SPI_S3C64XX=m
# CONFIG_SPI_SC18IS602 is not set
# CONFIG_SPI_SH_MSIOF is not set
CONFIG_SPI_SH=m
CONFIG_SPI_SH_HSPI=m
CONFIG_SPI_SIFIVE=m
CONFIG_SPI_SN_F_OSPI=y
CONFIG_SPI_SPRD=m
# CONFIG_SPI_SPRD_ADI is not set
CONFIG_SPI_STM32=y
CONFIG_SPI_STM32_QSPI=m
# CONFIG_SPI_ST_SSC4 is not set
CONFIG_SPI_SUN4I=m
# CONFIG_SPI_SUN6I is not set
CONFIG_SPI_SUNPLUS_SP7021=y
CONFIG_SPI_SYNQUACER=m
CONFIG_SPI_MXIC=m
CONFIG_SPI_TEGRA210_QUAD=m
CONFIG_SPI_TEGRA114=y
CONFIG_SPI_TEGRA20_SFLASH=m
# CONFIG_SPI_TEGRA20_SLINK is not set
CONFIG_SPI_TOPCLIFF_PCH=y
CONFIG_SPI_UNIPHIER=y
CONFIG_SPI_XCOMM=y
CONFIG_SPI_XILINX=y
CONFIG_SPI_XLP=m
# CONFIG_SPI_XTENSA_XTFPGA is not set
CONFIG_SPI_ZYNQ_QSPI=y
CONFIG_SPI_ZYNQMP_GQSPI=y
# CONFIG_SPI_AMD is not set

#
# SPI Multiplexer support
#
CONFIG_SPI_MUX=y

#
# SPI Protocol Masters
#
CONFIG_SPI_SPIDEV=y
CONFIG_SPI_LOOPBACK_TEST=m
# CONFIG_SPI_TLE62X0 is not set
# CONFIG_SPI_SLAVE is not set
# CONFIG_SPMI is not set
# CONFIG_HSI is not set
# CONFIG_PPS is not set

#
# PTP clock support
#
# CONFIG_PTP_1588_CLOCK is not set
CONFIG_PTP_1588_CLOCK_OPTIONAL=y
# end of PTP clock support

CONFIG_PINCTRL=y
CONFIG_GENERIC_PINCTRL_GROUPS=y
CONFIG_PINMUX=y
CONFIG_GENERIC_PINMUX_FUNCTIONS=y
CONFIG_PINCONF=y
CONFIG_GENERIC_PINCONF=y
CONFIG_PINCTRL_AMD=y
CONFIG_PINCTRL_AT91PIO4=y
CONFIG_PINCTRL_AXP209=m
CONFIG_PINCTRL_BM1880=y
CONFIG_PINCTRL_CY8C95X0=m
# CONFIG_PINCTRL_DA850_PUPD is not set
CONFIG_PINCTRL_DA9062=m
CONFIG_PINCTRL_EQUILIBRIUM=m
# CONFIG_PINCTRL_INGENIC is not set
CONFIG_PINCTRL_LOONGSON2=y
CONFIG_PINCTRL_LPC18XX=y
CONFIG_PINCTRL_MCP23S08_I2C=y
CONFIG_PINCTRL_MCP23S08_SPI=y
CONFIG_PINCTRL_MCP23S08=y
CONFIG_PINCTRL_MICROCHIP_SGPIO=m
# CONFIG_PINCTRL_OCELOT is not set
CONFIG_PINCTRL_PALMAS=y
CONFIG_PINCTRL_PISTACHIO=y
CONFIG_PINCTRL_ROCKCHIP=y
# CONFIG_PINCTRL_SINGLE is not set
CONFIG_PINCTRL_STMFX=m
# CONFIG_PINCTRL_SX150X is not set
CONFIG_PINCTRL_OWL=y
CONFIG_PINCTRL_S500=y
# CONFIG_PINCTRL_S700 is not set
# CONFIG_PINCTRL_S900 is not set
# CONFIG_PINCTRL_ASPEED_G4 is not set
# CONFIG_PINCTRL_ASPEED_G5 is not set
# CONFIG_PINCTRL_ASPEED_G6 is not set
# CONFIG_PINCTRL_BCM281XX is not set
# CONFIG_PINCTRL_BCM2835 is not set
CONFIG_PINCTRL_BCM4908=m
CONFIG_PINCTRL_BCM63XX=y
# CONFIG_PINCTRL_BCM6318 is not set
CONFIG_PINCTRL_BCM6328=y
# CONFIG_PINCTRL_BCM6358 is not set
# CONFIG_PINCTRL_BCM6362 is not set
# CONFIG_PINCTRL_BCM6368 is not set
# CONFIG_PINCTRL_BCM63268 is not set
# CONFIG_PINCTRL_IPROC_GPIO is not set
CONFIG_PINCTRL_CYGNUS_MUX=y
CONFIG_PINCTRL_NS=y
CONFIG_PINCTRL_NSP_GPIO=y
# CONFIG_PINCTRL_NS2_MUX is not set
CONFIG_PINCTRL_NSP_MUX=y
CONFIG_PINCTRL_BERLIN=y
CONFIG_PINCTRL_AS370=y
# CONFIG_PINCTRL_BERLIN_BG4CT is not set
CONFIG_PINCTRL_IMX=y
# CONFIG_PINCTRL_IMX8MM is not set
CONFIG_PINCTRL_IMX8MN=y
# CONFIG_PINCTRL_IMX8MP is not set
CONFIG_PINCTRL_IMX8MQ=m

#
# Intel pinctrl drivers
#
# end of Intel pinctrl drivers

#
# MediaTek pinctrl drivers
#
CONFIG_EINT_MTK=y
CONFIG_PINCTRL_MTK=y
CONFIG_PINCTRL_MTK_V2=y
CONFIG_PINCTRL_MTK_MOORE=y
CONFIG_PINCTRL_MTK_PARIS=y
CONFIG_PINCTRL_MT2701=y
CONFIG_PINCTRL_MT7623=y
# CONFIG_PINCTRL_MT7629 is not set
# CONFIG_PINCTRL_MT8135 is not set
# CONFIG_PINCTRL_MT8127 is not set
CONFIG_PINCTRL_MT2712=y
CONFIG_PINCTRL_MT6765=m
CONFIG_PINCTRL_MT6779=y
# CONFIG_PINCTRL_MT6795 is not set
# CONFIG_PINCTRL_MT6797 is not set
CONFIG_PINCTRL_MT7622=y
CONFIG_PINCTRL_MT7986=y
CONFIG_PINCTRL_MT8167=y
CONFIG_PINCTRL_MT8173=y
# CONFIG_PINCTRL_MT8183 is not set
CONFIG_PINCTRL_MT8186=y
CONFIG_PINCTRL_MT8188=y
# CONFIG_PINCTRL_MT8192 is not set
CONFIG_PINCTRL_MT8195=y
# CONFIG_PINCTRL_MT8365 is not set
# CONFIG_PINCTRL_MT8516 is not set
# CONFIG_PINCTRL_MT6397 is not set
# end of MediaTek pinctrl drivers

CONFIG_PINCTRL_MESON=m
CONFIG_PINCTRL_WPCM450=y
# CONFIG_PINCTRL_NPCM7XX is not set
CONFIG_PINCTRL_PXA=y
CONFIG_PINCTRL_PXA25X=m
CONFIG_PINCTRL_PXA27X=m
# CONFIG_PINCTRL_MSM is not set
CONFIG_PINCTRL_QCOM_SSBI_PMIC=y
CONFIG_PINCTRL_SC7280_LPASS_LPI=m
# CONFIG_PINCTRL_SM8250_LPASS_LPI is not set
# CONFIG_PINCTRL_SM8450_LPASS_LPI is not set
# CONFIG_PINCTRL_SC8280XP_LPASS_LPI is not set
CONFIG_PINCTRL_LPASS_LPI=y

#
# Renesas pinctrl drivers
#
CONFIG_PINCTRL_RENESAS=y
CONFIG_PINCTRL_SH_PFC=y
CONFIG_PINCTRL_SH_PFC_GPIO=y
CONFIG_PINCTRL_SH_FUNC_GPIO=y
CONFIG_PINCTRL_PFC_EMEV2=y
CONFIG_PINCTRL_PFC_R8A77995=y
# CONFIG_PINCTRL_PFC_R8A7794 is not set
CONFIG_PINCTRL_PFC_R8A77990=y
CONFIG_PINCTRL_PFC_R8A7779=y
CONFIG_PINCTRL_PFC_R8A7790=y
CONFIG_PINCTRL_PFC_R8A77950=y
# CONFIG_PINCTRL_PFC_R8A77951 is not set
CONFIG_PINCTRL_PFC_R8A7778=y
CONFIG_PINCTRL_PFC_R8A7793=y
# CONFIG_PINCTRL_PFC_R8A7791 is not set
# CONFIG_PINCTRL_PFC_R8A77965 is not set
CONFIG_PINCTRL_PFC_R8A77960=y
# CONFIG_PINCTRL_PFC_R8A77961 is not set
CONFIG_PINCTRL_PFC_R8A779F0=y
CONFIG_PINCTRL_PFC_R8A7792=y
# CONFIG_PINCTRL_PFC_R8A77980 is not set
CONFIG_PINCTRL_PFC_R8A77970=y
CONFIG_PINCTRL_PFC_R8A779A0=y
CONFIG_PINCTRL_PFC_R8A779G0=y
CONFIG_PINCTRL_PFC_R8A7740=y
CONFIG_PINCTRL_PFC_R8A73A4=y
# CONFIG_PINCTRL_RZA1 is not set
CONFIG_PINCTRL_RZA2=y
# CONFIG_PINCTRL_RZG2L is not set
# CONFIG_PINCTRL_PFC_R8A77470 is not set
CONFIG_PINCTRL_PFC_R8A7745=y
CONFIG_PINCTRL_PFC_R8A7742=y
CONFIG_PINCTRL_PFC_R8A7743=y
# CONFIG_PINCTRL_PFC_R8A7744 is not set
# CONFIG_PINCTRL_PFC_R8A774C0 is not set
# CONFIG_PINCTRL_PFC_R8A774E1 is not set
# CONFIG_PINCTRL_PFC_R8A774A1 is not set
CONFIG_PINCTRL_PFC_R8A774B1=y
# CONFIG_PINCTRL_RZN1 is not set
CONFIG_PINCTRL_RZV2M=y
CONFIG_PINCTRL_PFC_SH7203=y
CONFIG_PINCTRL_PFC_SH7264=y
CONFIG_PINCTRL_PFC_SH7269=y
CONFIG_PINCTRL_PFC_SH7720=y
# CONFIG_PINCTRL_PFC_SH7722 is not set
CONFIG_PINCTRL_PFC_SH7734=y
CONFIG_PINCTRL_PFC_SH7757=y
CONFIG_PINCTRL_PFC_SH7785=y
# CONFIG_PINCTRL_PFC_SH7786 is not set
# CONFIG_PINCTRL_PFC_SH73A0 is not set
# CONFIG_PINCTRL_PFC_SH7723 is not set
# CONFIG_PINCTRL_PFC_SH7724 is not set
# CONFIG_PINCTRL_PFC_SHX3 is not set
# end of Renesas pinctrl drivers

CONFIG_PINCTRL_SAMSUNG=y
# CONFIG_PINCTRL_EXYNOS is not set
CONFIG_PINCTRL_S3C24XX=y
CONFIG_PINCTRL_S3C64XX=y
CONFIG_PINCTRL_SPRD=m
CONFIG_PINCTRL_SPRD_SC9860=m
CONFIG_PINCTRL_STARFIVE_JH7100=y
CONFIG_PINCTRL_STM32=y
CONFIG_PINCTRL_STM32F429=y
CONFIG_PINCTRL_STM32F469=y
# CONFIG_PINCTRL_STM32F746 is not set
CONFIG_PINCTRL_STM32F769=y
# CONFIG_PINCTRL_STM32H743 is not set
# CONFIG_PINCTRL_STM32MP135 is not set
CONFIG_PINCTRL_STM32MP157=y
CONFIG_PINCTRL_TI_IODELAY=m
# CONFIG_PINCTRL_UNIPHIER is not set
# CONFIG_PINCTRL_TMPV7700 is not set
CONFIG_GPIOLIB=y
CONFIG_GPIOLIB_FASTPATH_LIMIT=512
CONFIG_OF_GPIO=y
CONFIG_GPIOLIB_IRQCHIP=y
CONFIG_GPIO_CDEV=y
CONFIG_GPIO_CDEV_V1=y
CONFIG_GPIO_GENERIC=y
CONFIG_GPIO_REGMAP=y
CONFIG_GPIO_IDIO_16=y

#
# Memory mapped GPIO drivers
#
CONFIG_GPIO_74XX_MMIO=m
CONFIG_GPIO_ALTERA=y
CONFIG_GPIO_ASPEED=y
# CONFIG_GPIO_ASPEED_SGPIO is not set
CONFIG_GPIO_ATH79=y
# CONFIG_GPIO_RASPBERRYPI_EXP is not set
# CONFIG_GPIO_BCM_KONA is not set
# CONFIG_GPIO_BCM_XGS_IPROC is not set
CONFIG_GPIO_BRCMSTB=m
CONFIG_GPIO_CADENCE=m
CONFIG_GPIO_CLPS711X=m
CONFIG_GPIO_DWAPB=m
# CONFIG_GPIO_EIC_SPRD is not set
CONFIG_GPIO_EM=m
CONFIG_GPIO_FTGPIO010=y
CONFIG_GPIO_GENERIC_PLATFORM=y
# CONFIG_GPIO_GRGPIO is not set
# CONFIG_GPIO_HISI is not set
CONFIG_GPIO_HLWD=m
CONFIG_GPIO_IOP=y
CONFIG_GPIO_LOGICVC=m
CONFIG_GPIO_LPC18XX=m
CONFIG_GPIO_LPC32XX=m
# CONFIG_GPIO_MB86S7X is not set
# CONFIG_GPIO_MPC8XXX is not set
CONFIG_GPIO_MT7621=y
CONFIG_GPIO_MXC=y
# CONFIG_GPIO_MXS is not set
# CONFIG_GPIO_PMIC_EIC_SPRD is not set
# CONFIG_GPIO_PXA is not set
CONFIG_GPIO_RCAR=m
CONFIG_GPIO_RDA=y
CONFIG_GPIO_ROCKCHIP=y
# CONFIG_GPIO_SAMA5D2_PIOBU is not set
# CONFIG_GPIO_SIFIVE is not set
CONFIG_GPIO_SIOX=y
# CONFIG_GPIO_SNPS_CREG is not set
# CONFIG_GPIO_SPRD is not set
CONFIG_GPIO_STP_XWAY=y
CONFIG_GPIO_SYSCON=m
CONFIG_GPIO_TEGRA=m
# CONFIG_GPIO_TEGRA186 is not set
CONFIG_GPIO_TS4800=y
CONFIG_GPIO_UNIPHIER=y
# CONFIG_GPIO_VISCONTI is not set
CONFIG_GPIO_VX855=m
# CONFIG_GPIO_XGENE_SB is not set
CONFIG_GPIO_XILINX=y
CONFIG_GPIO_XLP=m
CONFIG_GPIO_AMD_FCH=y
# CONFIG_GPIO_IDT3243X is not set
# end of Memory mapped GPIO drivers

#
# I2C GPIO expanders
#
# CONFIG_GPIO_ADNP is not set
# CONFIG_GPIO_GW_PLD is not set
# CONFIG_GPIO_MAX7300 is not set
CONFIG_GPIO_MAX732X=m
# CONFIG_GPIO_PCA953X is not set
CONFIG_GPIO_PCA9570=y
# CONFIG_GPIO_PCF857X is not set
CONFIG_GPIO_TPIC2810=y
CONFIG_GPIO_TS4900=y
# end of I2C GPIO expanders

#
# MFD GPIO expanders
#
CONFIG_GPIO_ARIZONA=y
CONFIG_GPIO_BD9571MWV=m
CONFIG_GPIO_DA9052=y
CONFIG_GPIO_DA9055=m
# CONFIG_GPIO_DLN2 is not set
CONFIG_GPIO_JANZ_TTL=m
CONFIG_GPIO_KEMPLD=m
# CONFIG_GPIO_LP3943 is not set
CONFIG_GPIO_LP873X=y
CONFIG_GPIO_LP87565=m
# CONFIG_GPIO_MAX77650 is not set
# CONFIG_GPIO_PALMAS is not set
# CONFIG_GPIO_RC5T583 is not set
CONFIG_GPIO_SL28CPLD=m
# CONFIG_GPIO_STMPE is not set
# CONFIG_GPIO_TC3589X is not set
# CONFIG_GPIO_TIMBERDALE is not set
CONFIG_GPIO_TPS65086=m
CONFIG_GPIO_TPS65218=m
CONFIG_GPIO_TPS65912=m
CONFIG_GPIO_TQMX86=m
CONFIG_GPIO_TWL4030=y
CONFIG_GPIO_TWL6040=m
CONFIG_GPIO_WM831X=m
CONFIG_GPIO_WM8994=y
# end of MFD GPIO expanders

#
# PCI GPIO expanders
#
# CONFIG_GPIO_AMD8111 is not set
CONFIG_GPIO_BT8XX=m
CONFIG_GPIO_ML_IOH=y
CONFIG_GPIO_PCH=y
CONFIG_GPIO_PCI_IDIO_16=y
CONFIG_GPIO_PCIE_IDIO_24=y
# CONFIG_GPIO_RDC321X is not set
# end of PCI GPIO expanders

#
# SPI GPIO expanders
#
# CONFIG_GPIO_74X164 is not set
CONFIG_GPIO_MAX3191X=y
# CONFIG_GPIO_MAX7301 is not set
CONFIG_GPIO_MC33880=m
CONFIG_GPIO_PISOSR=m
CONFIG_GPIO_XRA1403=m
# end of SPI GPIO expanders

#
# USB GPIO expanders
#
CONFIG_GPIO_VIPERBOARD=m
# end of USB GPIO expanders

#
# Virtual GPIO drivers
#
CONFIG_GPIO_AGGREGATOR=y
CONFIG_GPIO_LATCH=m
CONFIG_GPIO_MOCKUP=m
CONFIG_GPIO_VIRTIO=m
CONFIG_GPIO_SIM=m
# end of Virtual GPIO drivers

CONFIG_W1=y
CONFIG_W1_CON=y

#
# 1-wire Bus Masters
#
# CONFIG_W1_MASTER_MATROX is not set
CONFIG_W1_MASTER_DS2490=y
# CONFIG_W1_MASTER_DS2482 is not set
CONFIG_W1_MASTER_MXC=m
CONFIG_W1_MASTER_DS1WM=m
CONFIG_W1_MASTER_GPIO=m
CONFIG_W1_MASTER_SGI=y
# end of 1-wire Bus Masters

#
# 1-wire Slaves
#
CONFIG_W1_SLAVE_THERM=y
CONFIG_W1_SLAVE_SMEM=m
CONFIG_W1_SLAVE_DS2405=y
# CONFIG_W1_SLAVE_DS2408 is not set
CONFIG_W1_SLAVE_DS2413=y
CONFIG_W1_SLAVE_DS2406=m
CONFIG_W1_SLAVE_DS2423=m
CONFIG_W1_SLAVE_DS2805=m
# CONFIG_W1_SLAVE_DS2430 is not set
# CONFIG_W1_SLAVE_DS2431 is not set
# CONFIG_W1_SLAVE_DS2433 is not set
CONFIG_W1_SLAVE_DS2438=m
CONFIG_W1_SLAVE_DS250X=m
CONFIG_W1_SLAVE_DS2780=y
CONFIG_W1_SLAVE_DS2781=y
# CONFIG_W1_SLAVE_DS28E04 is not set
CONFIG_W1_SLAVE_DS28E17=y
# end of 1-wire Slaves

# CONFIG_POWER_RESET is not set
CONFIG_POWER_SUPPLY=y
CONFIG_POWER_SUPPLY_DEBUG=y
CONFIG_PDA_POWER=m
CONFIG_GENERIC_ADC_BATTERY=y
CONFIG_IP5XXX_POWER=y
CONFIG_WM831X_BACKUP=m
CONFIG_WM831X_POWER=m
# CONFIG_TEST_POWER is not set
CONFIG_CHARGER_ADP5061=m
CONFIG_BATTERY_ACT8945A=m
# CONFIG_BATTERY_CW2015 is not set
CONFIG_BATTERY_DS2760=m
CONFIG_BATTERY_DS2780=y
CONFIG_BATTERY_DS2781=y
# CONFIG_BATTERY_DS2782 is not set
# CONFIG_BATTERY_LEGO_EV3 is not set
CONFIG_BATTERY_SAMSUNG_SDI=y
CONFIG_BATTERY_SBS=y
# CONFIG_CHARGER_SBS is not set
# CONFIG_MANAGER_SBS is not set
# CONFIG_BATTERY_BQ27XXX is not set
# CONFIG_BATTERY_DA9052 is not set
CONFIG_BATTERY_DA9150=m
CONFIG_AXP20X_POWER=y
CONFIG_BATTERY_MAX17040=y
# CONFIG_BATTERY_MAX17042 is not set
CONFIG_BATTERY_MAX1721X=m
CONFIG_BATTERY_TWL4030_MADC=m
CONFIG_CHARGER_PCF50633=m
CONFIG_BATTERY_RX51=m
CONFIG_CHARGER_ISP1704=m
CONFIG_CHARGER_MAX8903=m
CONFIG_CHARGER_TWL4030=m
CONFIG_CHARGER_LP8727=y
CONFIG_CHARGER_LP8788=m
# CONFIG_CHARGER_GPIO is not set
CONFIG_CHARGER_MANAGER=y
# CONFIG_CHARGER_LT3651 is not set
# CONFIG_CHARGER_LTC4162L is not set
CONFIG_CHARGER_DETECTOR_MAX14656=m
CONFIG_CHARGER_MAX77650=y
# CONFIG_CHARGER_MAX77976 is not set
# CONFIG_CHARGER_MP2629 is not set
CONFIG_CHARGER_MT6370=m
CONFIG_CHARGER_QCOM_SMBB=y
CONFIG_CHARGER_BQ2415X=y
CONFIG_CHARGER_BQ24190=m
# CONFIG_CHARGER_BQ24257 is not set
# CONFIG_CHARGER_BQ24735 is not set
# CONFIG_CHARGER_BQ2515X is not set
# CONFIG_CHARGER_BQ25890 is not set
# CONFIG_CHARGER_BQ25980 is not set
CONFIG_CHARGER_BQ256XX=m
# CONFIG_CHARGER_SMB347 is not set
# CONFIG_BATTERY_GAUGE_LTC2941 is not set
CONFIG_BATTERY_GOLDFISH=y
CONFIG_BATTERY_RT5033=y
CONFIG_CHARGER_RT9455=y
CONFIG_CHARGER_SC2731=m
# CONFIG_FUEL_GAUGE_SC27XX is not set
CONFIG_CHARGER_UCS1002=y
CONFIG_CHARGER_BD99954=y
CONFIG_BATTERY_ACER_A500=y
CONFIG_BATTERY_UG3105=y
CONFIG_HWMON=m
CONFIG_HWMON_VID=m
# CONFIG_HWMON_DEBUG_CHIP is not set

#
# Native drivers
#
CONFIG_SENSORS_AD7314=m
CONFIG_SENSORS_AD7414=m
CONFIG_SENSORS_AD7418=m
CONFIG_SENSORS_ADM1021=m
CONFIG_SENSORS_ADM1025=m
# CONFIG_SENSORS_ADM1026 is not set
CONFIG_SENSORS_ADM1029=m
CONFIG_SENSORS_ADM1031=m
CONFIG_SENSORS_ADM1177=m
# CONFIG_SENSORS_ADM9240 is not set
CONFIG_SENSORS_ADT7X10=m
# CONFIG_SENSORS_ADT7310 is not set
CONFIG_SENSORS_ADT7410=m
CONFIG_SENSORS_ADT7411=m
CONFIG_SENSORS_ADT7462=m
CONFIG_SENSORS_ADT7470=m
# CONFIG_SENSORS_ADT7475 is not set
CONFIG_SENSORS_AHT10=m
CONFIG_SENSORS_AQUACOMPUTER_D5NEXT=m
# CONFIG_SENSORS_AS370 is not set
CONFIG_SENSORS_ASC7621=m
# CONFIG_SENSORS_AXI_FAN_CONTROL is not set
# CONFIG_SENSORS_ASB100 is not set
CONFIG_SENSORS_ASPEED=m
CONFIG_SENSORS_ATXP1=m
# CONFIG_SENSORS_BT1_PVT is not set
CONFIG_SENSORS_CORSAIR_CPRO=m
CONFIG_SENSORS_CORSAIR_PSU=m
CONFIG_SENSORS_DRIVETEMP=m
CONFIG_SENSORS_DS620=m
# CONFIG_SENSORS_DS1621 is not set
CONFIG_SENSORS_DA9052_ADC=m
CONFIG_SENSORS_DA9055=m
CONFIG_SENSORS_I5K_AMB=m
CONFIG_SENSORS_SPARX5=m
# CONFIG_SENSORS_F71805F is not set
CONFIG_SENSORS_F71882FG=m
# CONFIG_SENSORS_F75375S is not set
# CONFIG_SENSORS_GSC is not set
CONFIG_SENSORS_MC13783_ADC=m
CONFIG_SENSORS_FSCHMD=m
CONFIG_SENSORS_GL518SM=m
CONFIG_SENSORS_GL520SM=m
CONFIG_SENSORS_G760A=m
# CONFIG_SENSORS_G762 is not set
CONFIG_SENSORS_GPIO_FAN=m
CONFIG_SENSORS_HIH6130=m
CONFIG_SENSORS_IIO_HWMON=m
CONFIG_SENSORS_IT87=m
# CONFIG_SENSORS_JC42 is not set
# CONFIG_SENSORS_POWR1220 is not set
CONFIG_SENSORS_LAN966X=m
# CONFIG_SENSORS_LINEAGE is not set
CONFIG_SENSORS_LTC2945=m
CONFIG_SENSORS_LTC2947=m
CONFIG_SENSORS_LTC2947_I2C=m
# CONFIG_SENSORS_LTC2947_SPI is not set
CONFIG_SENSORS_LTC2990=m
# CONFIG_SENSORS_LTC2992 is not set
CONFIG_SENSORS_LTC4151=m
CONFIG_SENSORS_LTC4215=m
CONFIG_SENSORS_LTC4222=m
# CONFIG_SENSORS_LTC4245 is not set
CONFIG_SENSORS_LTC4260=m
CONFIG_SENSORS_LTC4261=m
CONFIG_SENSORS_MAX1111=m
# CONFIG_SENSORS_MAX127 is not set
CONFIG_SENSORS_MAX16065=m
CONFIG_SENSORS_MAX1619=m
CONFIG_SENSORS_MAX1668=m
CONFIG_SENSORS_MAX197=m
# CONFIG_SENSORS_MAX31722 is not set
CONFIG_SENSORS_MAX31730=m
CONFIG_SENSORS_MAX31760=m
# CONFIG_SENSORS_MAX6620 is not set
# CONFIG_SENSORS_MAX6621 is not set
CONFIG_SENSORS_MAX6639=m
CONFIG_SENSORS_MAX6642=m
CONFIG_SENSORS_MAX6650=m
CONFIG_SENSORS_MAX6697=m
# CONFIG_SENSORS_MAX31790 is not set
CONFIG_SENSORS_MCP3021=m
# CONFIG_SENSORS_MLXREG_FAN is not set
# CONFIG_SENSORS_TC654 is not set
# CONFIG_SENSORS_TPS23861 is not set
CONFIG_SENSORS_MENF21BMC_HWMON=m
CONFIG_SENSORS_MR75203=m
CONFIG_SENSORS_ADCXX=m
# CONFIG_SENSORS_LM63 is not set
CONFIG_SENSORS_LM70=m
# CONFIG_SENSORS_LM73 is not set
# CONFIG_SENSORS_LM75 is not set
CONFIG_SENSORS_LM77=m
CONFIG_SENSORS_LM78=m
# CONFIG_SENSORS_LM80 is not set
CONFIG_SENSORS_LM83=m
# CONFIG_SENSORS_LM85 is not set
# CONFIG_SENSORS_LM87 is not set
# CONFIG_SENSORS_LM90 is not set
# CONFIG_SENSORS_LM92 is not set
CONFIG_SENSORS_LM93=m
CONFIG_SENSORS_LM95234=m
CONFIG_SENSORS_LM95241=m
# CONFIG_SENSORS_LM95245 is not set
CONFIG_SENSORS_PC87360=m
CONFIG_SENSORS_PC87427=m
# CONFIG_SENSORS_NTC_THERMISTOR is not set
CONFIG_SENSORS_NCT6683=m
# CONFIG_SENSORS_NCT6775 is not set
# CONFIG_SENSORS_NCT6775_I2C is not set
CONFIG_SENSORS_NCT7802=m
# CONFIG_SENSORS_NPCM7XX is not set
# CONFIG_SENSORS_NSA320 is not set
# CONFIG_SENSORS_NZXT_KRAKEN2 is not set
# CONFIG_SENSORS_NZXT_SMART2 is not set
CONFIG_SENSORS_OCC_P8_I2C=m
CONFIG_SENSORS_OCC=m
CONFIG_SENSORS_PCF8591=m
CONFIG_SENSORS_PECI_CPUTEMP=m
CONFIG_SENSORS_PECI_DIMMTEMP=m
CONFIG_SENSORS_PECI=m
CONFIG_PMBUS=m
CONFIG_SENSORS_PMBUS=m
# CONFIG_SENSORS_ADM1266 is not set
# CONFIG_SENSORS_ADM1275 is not set
CONFIG_SENSORS_BEL_PFE=m
CONFIG_SENSORS_BPA_RS600=m
# CONFIG_SENSORS_DELTA_AHE50DC_FAN is not set
CONFIG_SENSORS_FSP_3Y=m
# CONFIG_SENSORS_IBM_CFFPS is not set
CONFIG_SENSORS_DPS920AB=m
# CONFIG_SENSORS_INSPUR_IPSPS is not set
CONFIG_SENSORS_IR35221=m
CONFIG_SENSORS_IR36021=m
CONFIG_SENSORS_IR38064=m
# CONFIG_SENSORS_IR38064_REGULATOR is not set
# CONFIG_SENSORS_IRPS5401 is not set
CONFIG_SENSORS_ISL68137=m
CONFIG_SENSORS_LM25066=m
# CONFIG_SENSORS_LM25066_REGULATOR is not set
CONFIG_SENSORS_LT7182S=m
CONFIG_SENSORS_LTC2978=m
# CONFIG_SENSORS_LTC2978_REGULATOR is not set
# CONFIG_SENSORS_LTC3815 is not set
CONFIG_SENSORS_MAX15301=m
CONFIG_SENSORS_MAX16064=m
CONFIG_SENSORS_MAX16601=m
CONFIG_SENSORS_MAX20730=m
CONFIG_SENSORS_MAX20751=m
CONFIG_SENSORS_MAX31785=m
# CONFIG_SENSORS_MAX34440 is not set
CONFIG_SENSORS_MAX8688=m
# CONFIG_SENSORS_MP2888 is not set
CONFIG_SENSORS_MP2975=m
# CONFIG_SENSORS_MP5023 is not set
CONFIG_SENSORS_PIM4328=m
CONFIG_SENSORS_PLI1209BC=m
CONFIG_SENSORS_PLI1209BC_REGULATOR=y
CONFIG_SENSORS_PM6764TR=m
CONFIG_SENSORS_PXE1610=m
CONFIG_SENSORS_Q54SJ108A2=m
CONFIG_SENSORS_STPDDC60=m
# CONFIG_SENSORS_TPS40422 is not set
# CONFIG_SENSORS_TPS53679 is not set
CONFIG_SENSORS_TPS546D24=m
CONFIG_SENSORS_UCD9000=m
# CONFIG_SENSORS_UCD9200 is not set
CONFIG_SENSORS_XDPE152=m
CONFIG_SENSORS_XDPE122=m
CONFIG_SENSORS_XDPE122_REGULATOR=y
CONFIG_SENSORS_ZL6100=m
# CONFIG_SENSORS_PWM_FAN is not set
# CONFIG_SENSORS_RASPBERRYPI_HWMON is not set
CONFIG_SENSORS_SL28CPLD=m
CONFIG_SENSORS_SBTSI=m
CONFIG_SENSORS_SBRMI=m
CONFIG_SENSORS_SHT15=m
CONFIG_SENSORS_SHT21=m
CONFIG_SENSORS_SHT3x=m
# CONFIG_SENSORS_SHT4x is not set
CONFIG_SENSORS_SHTC1=m
CONFIG_SENSORS_SIS5595=m
CONFIG_SENSORS_SY7636A=m
# CONFIG_SENSORS_DME1737 is not set
# CONFIG_SENSORS_EMC1403 is not set
# CONFIG_SENSORS_EMC2103 is not set
CONFIG_SENSORS_EMC2305=m
CONFIG_SENSORS_EMC6W201=m
# CONFIG_SENSORS_SMSC47M1 is not set
# CONFIG_SENSORS_SMSC47M192 is not set
CONFIG_SENSORS_SMSC47B397=m
# CONFIG_SENSORS_STTS751 is not set
CONFIG_SENSORS_SMM665=m
# CONFIG_SENSORS_ADC128D818 is not set
CONFIG_SENSORS_ADS7828=m
CONFIG_SENSORS_ADS7871=m
# CONFIG_SENSORS_AMC6821 is not set
CONFIG_SENSORS_INA209=m
CONFIG_SENSORS_INA2XX=m
CONFIG_SENSORS_INA238=m
CONFIG_SENSORS_INA3221=m
CONFIG_SENSORS_TC74=m
# CONFIG_SENSORS_THMC50 is not set
CONFIG_SENSORS_TMP102=m
CONFIG_SENSORS_TMP103=m
# CONFIG_SENSORS_TMP108 is not set
CONFIG_SENSORS_TMP401=m
CONFIG_SENSORS_TMP421=m
CONFIG_SENSORS_TMP464=m
CONFIG_SENSORS_TMP513=m
CONFIG_SENSORS_VIA686A=m
# CONFIG_SENSORS_VT1211 is not set
CONFIG_SENSORS_VT8231=m
# CONFIG_SENSORS_W83773G is not set
CONFIG_SENSORS_W83781D=m
CONFIG_SENSORS_W83791D=m
# CONFIG_SENSORS_W83792D is not set
CONFIG_SENSORS_W83793=m
# CONFIG_SENSORS_W83795 is not set
# CONFIG_SENSORS_W83L785TS is not set
CONFIG_SENSORS_W83L786NG=m
CONFIG_SENSORS_W83627HF=m
# CONFIG_SENSORS_W83627EHF is not set
CONFIG_SENSORS_WM831X=m
# CONFIG_THERMAL is not set
# CONFIG_WATCHDOG is not set
CONFIG_SSB_POSSIBLE=y
CONFIG_SSB=y
CONFIG_SSB_SPROM=y
CONFIG_SSB_PCIHOST_POSSIBLE=y
CONFIG_SSB_PCIHOST=y
CONFIG_SSB_DRIVER_PCICORE_POSSIBLE=y
CONFIG_SSB_DRIVER_PCICORE=y
# CONFIG_SSB_DRIVER_GPIO is not set
CONFIG_BCMA_POSSIBLE=y
CONFIG_BCMA=m
CONFIG_BCMA_HOST_PCI_POSSIBLE=y
# CONFIG_BCMA_HOST_PCI is not set
CONFIG_BCMA_HOST_SOC=y
CONFIG_BCMA_DRIVER_PCI=y
# CONFIG_BCMA_DRIVER_MIPS is not set
CONFIG_BCMA_SFLASH=y
CONFIG_BCMA_DRIVER_GMAC_CMN=y
# CONFIG_BCMA_DRIVER_GPIO is not set
# CONFIG_BCMA_DEBUG is not set

#
# Multifunction device drivers
#
CONFIG_MFD_CORE=y
CONFIG_MFD_ACT8945A=y
CONFIG_MFD_SUN4I_GPADC=m
# CONFIG_MFD_AS3711 is not set
# CONFIG_MFD_AS3722 is not set
# CONFIG_PMIC_ADP5520 is not set
CONFIG_MFD_AAT2870_CORE=y
CONFIG_MFD_AT91_USART=m
CONFIG_MFD_ATMEL_FLEXCOM=m
CONFIG_MFD_ATMEL_HLCDC=m
CONFIG_MFD_ATMEL_SMC=y
# CONFIG_MFD_BCM590XX is not set
CONFIG_MFD_BD9571MWV=y
CONFIG_MFD_AXP20X=y
CONFIG_MFD_AXP20X_I2C=y
# CONFIG_MFD_MADERA is not set
CONFIG_MFD_ASIC3=y
# CONFIG_PMIC_DA903X is not set
CONFIG_PMIC_DA9052=y
CONFIG_MFD_DA9052_SPI=y
# CONFIG_MFD_DA9052_I2C is not set
CONFIG_MFD_DA9055=y
CONFIG_MFD_DA9062=y
CONFIG_MFD_DA9063=y
CONFIG_MFD_DA9150=m
CONFIG_MFD_DLN2=y
# CONFIG_MFD_ENE_KB3930 is not set
CONFIG_MFD_EXYNOS_LPASS=m
CONFIG_MFD_GATEWORKS_GSC=y
CONFIG_MFD_MC13XXX=y
CONFIG_MFD_MC13XXX_SPI=m
CONFIG_MFD_MC13XXX_I2C=y
CONFIG_MFD_MP2629=m
# CONFIG_MFD_MXS_LRADC is not set
CONFIG_MFD_MX25_TSADC=y
CONFIG_MFD_HI6421_PMIC=m
CONFIG_MFD_HI655X_PMIC=m
CONFIG_HTC_PASIC3=y
# CONFIG_HTC_I2CPLD is not set
CONFIG_LPC_ICH=m
CONFIG_LPC_SCH=y
CONFIG_MFD_IQS62X=m
CONFIG_MFD_JANZ_CMODIO=m
CONFIG_MFD_KEMPLD=m
CONFIG_MFD_88PM800=m
# CONFIG_MFD_88PM805 is not set
# CONFIG_MFD_88PM860X is not set
# CONFIG_MFD_MAX14577 is not set
# CONFIG_MFD_MAX77620 is not set
CONFIG_MFD_MAX77650=y
# CONFIG_MFD_MAX77686 is not set
# CONFIG_MFD_MAX77693 is not set
# CONFIG_MFD_MAX77714 is not set
CONFIG_MFD_MAX77843=y
# CONFIG_MFD_MAX8907 is not set
# CONFIG_MFD_MAX8925 is not set
# CONFIG_MFD_MAX8997 is not set
# CONFIG_MFD_MAX8998 is not set
# CONFIG_MFD_MT6360 is not set
CONFIG_MFD_MT6370=m
CONFIG_MFD_MT6397=y
CONFIG_MFD_MENF21BMC=y
CONFIG_MFD_OCELOT=y
# CONFIG_EZX_PCAP is not set
# CONFIG_MFD_CPCAP is not set
CONFIG_MFD_VIPERBOARD=y
# CONFIG_MFD_NTXEC is not set
# CONFIG_MFD_RETU is not set
CONFIG_MFD_PCF50633=m
CONFIG_PCF50633_ADC=m
CONFIG_PCF50633_GPIO=m
CONFIG_MFD_PM8XXX=m
CONFIG_MFD_SY7636A=y
CONFIG_MFD_RDC321X=m
# CONFIG_MFD_RT4831 is not set
# CONFIG_MFD_RT5033 is not set
CONFIG_MFD_RT5120=y
CONFIG_MFD_RC5T583=y
# CONFIG_MFD_RK808 is not set
# CONFIG_MFD_RN5T618 is not set
CONFIG_MFD_SEC_CORE=y
CONFIG_MFD_SI476X_CORE=m
CONFIG_MFD_SIMPLE_MFD_I2C=y
# CONFIG_MFD_SL28CPLD is not set
# CONFIG_MFD_SM501 is not set
CONFIG_MFD_SKY81452=y
CONFIG_MFD_SC27XX_PMIC=m
# CONFIG_ABX500_CORE is not set
CONFIG_MFD_STMPE=y

#
# STMicroelectronics STMPE Interface Drivers
#
# CONFIG_STMPE_I2C is not set
CONFIG_STMPE_SPI=y
# end of STMicroelectronics STMPE Interface Drivers

# CONFIG_MFD_SUN6I_PRCM is not set
CONFIG_MFD_SYSCON=y
CONFIG_MFD_TI_AM335X_TSCADC=m
CONFIG_MFD_LP3943=y
CONFIG_MFD_LP8788=y
CONFIG_MFD_TI_LMU=m
CONFIG_MFD_PALMAS=y
CONFIG_TPS6105X=m
# CONFIG_TPS65010 is not set
# CONFIG_TPS6507X is not set
CONFIG_MFD_TPS65086=m
# CONFIG_MFD_TPS65090 is not set
# CONFIG_MFD_TPS65217 is not set
CONFIG_MFD_TI_LP873X=y
CONFIG_MFD_TI_LP87565=y
CONFIG_MFD_TPS65218=m
# CONFIG_MFD_TPS6586X is not set
# CONFIG_MFD_TPS65910 is not set
CONFIG_MFD_TPS65912=m
CONFIG_MFD_TPS65912_I2C=m
CONFIG_MFD_TPS65912_SPI=m
CONFIG_TWL4030_CORE=y
# CONFIG_MFD_TWL4030_AUDIO is not set
CONFIG_TWL6040_CORE=y
CONFIG_MFD_WL1273_CORE=m
CONFIG_MFD_LM3533=m
CONFIG_MFD_TIMBERDALE=y
CONFIG_MFD_TC3589X=y
CONFIG_MFD_TQMX86=y
CONFIG_MFD_VX855=m
# CONFIG_MFD_LOCHNAGAR is not set
CONFIG_MFD_ARIZONA=y
# CONFIG_MFD_ARIZONA_I2C is not set
CONFIG_MFD_ARIZONA_SPI=y
CONFIG_MFD_CS47L24=y
# CONFIG_MFD_WM5102 is not set
# CONFIG_MFD_WM5110 is not set
# CONFIG_MFD_WM8997 is not set
# CONFIG_MFD_WM8998 is not set
CONFIG_MFD_WM8400=y
CONFIG_MFD_WM831X=y
CONFIG_MFD_WM831X_I2C=y
# CONFIG_MFD_WM831X_SPI is not set
# CONFIG_MFD_WM8350_I2C is not set
CONFIG_MFD_WM8994=y
CONFIG_MFD_STW481X=m
# CONFIG_MFD_ROHM_BD718XX is not set
# CONFIG_MFD_ROHM_BD71828 is not set
# CONFIG_MFD_ROHM_BD957XMUF is not set
CONFIG_MFD_STM32_LPTIMER=m
CONFIG_MFD_STM32_TIMERS=m
# CONFIG_MFD_STPMIC1 is not set
CONFIG_MFD_STMFX=m
CONFIG_MFD_ATC260X=y
CONFIG_MFD_ATC260X_I2C=y
CONFIG_MFD_KHADAS_MCU=m
CONFIG_MFD_ACER_A500_EC=y
CONFIG_MFD_QCOM_PM8008=y
CONFIG_RAVE_SP_CORE=m
# CONFIG_MFD_INTEL_M10_BMC is not set
CONFIG_MFD_RSMU_I2C=y
# CONFIG_MFD_RSMU_SPI is not set
# end of Multifunction device drivers

CONFIG_REGULATOR=y
# CONFIG_REGULATOR_DEBUG is not set
CONFIG_REGULATOR_FIXED_VOLTAGE=y
CONFIG_REGULATOR_VIRTUAL_CONSUMER=m
# CONFIG_REGULATOR_USERSPACE_CONSUMER is not set
# CONFIG_REGULATOR_88PG86X is not set
CONFIG_REGULATOR_88PM800=m
CONFIG_REGULATOR_ACT8865=m
# CONFIG_REGULATOR_ACT8945A is not set
CONFIG_REGULATOR_AD5398=y
# CONFIG_REGULATOR_ANATOP is not set
CONFIG_REGULATOR_AAT2870=m
CONFIG_REGULATOR_ATC260X=m
# CONFIG_REGULATOR_AXP20X is not set
# CONFIG_REGULATOR_BD9571MWV is not set
# CONFIG_REGULATOR_DA9052 is not set
# CONFIG_REGULATOR_DA9055 is not set
CONFIG_REGULATOR_DA9062=y
CONFIG_REGULATOR_DA9063=m
CONFIG_REGULATOR_DA9121=y
# CONFIG_REGULATOR_DA9210 is not set
# CONFIG_REGULATOR_DA9211 is not set
# CONFIG_REGULATOR_FAN53555 is not set
CONFIG_REGULATOR_FAN53880=m
# CONFIG_REGULATOR_GPIO is not set
# CONFIG_REGULATOR_HI6421 is not set
CONFIG_REGULATOR_HI6421V530=m
# CONFIG_REGULATOR_HI655X is not set
CONFIG_REGULATOR_ISL9305=y
CONFIG_REGULATOR_ISL6271A=y
CONFIG_REGULATOR_LM363X=m
CONFIG_REGULATOR_LP3971=y
CONFIG_REGULATOR_LP3972=m
CONFIG_REGULATOR_LP872X=m
CONFIG_REGULATOR_LP873X=m
# CONFIG_REGULATOR_LP8755 is not set
# CONFIG_REGULATOR_LP87565 is not set
# CONFIG_REGULATOR_LP8788 is not set
CONFIG_REGULATOR_LTC3589=y
CONFIG_REGULATOR_LTC3676=m
# CONFIG_REGULATOR_MAX1586 is not set
CONFIG_REGULATOR_MAX77620=y
# CONFIG_REGULATOR_MAX77650 is not set
# CONFIG_REGULATOR_MAX8649 is not set
CONFIG_REGULATOR_MAX8660=m
CONFIG_REGULATOR_MAX8893=y
CONFIG_REGULATOR_MAX8907=m
CONFIG_REGULATOR_MAX8952=y
CONFIG_REGULATOR_MAX20086=m
CONFIG_REGULATOR_MAX77686=m
CONFIG_REGULATOR_MAX77693=y
# CONFIG_REGULATOR_MAX77802 is not set
# CONFIG_REGULATOR_MAX77826 is not set
CONFIG_REGULATOR_MC13XXX_CORE=m
CONFIG_REGULATOR_MC13783=m
CONFIG_REGULATOR_MC13892=m
# CONFIG_REGULATOR_MCP16502 is not set
# CONFIG_REGULATOR_MP5416 is not set
# CONFIG_REGULATOR_MP8859 is not set
# CONFIG_REGULATOR_MP886X is not set
CONFIG_REGULATOR_MPQ7920=y
# CONFIG_REGULATOR_MT6311 is not set
# CONFIG_REGULATOR_MT6323 is not set
CONFIG_REGULATOR_MT6331=m
# CONFIG_REGULATOR_MT6332 is not set
CONFIG_REGULATOR_MT6357=m
CONFIG_REGULATOR_MT6358=y
CONFIG_REGULATOR_MT6359=m
CONFIG_REGULATOR_MT6370=m
CONFIG_REGULATOR_MT6380=m
CONFIG_REGULATOR_MT6397=m
CONFIG_REGULATOR_PALMAS=m
CONFIG_REGULATOR_PBIAS=m
# CONFIG_REGULATOR_PCA9450 is not set
# CONFIG_REGULATOR_PCF50633 is not set
CONFIG_REGULATOR_PF8X00=y
CONFIG_REGULATOR_PFUZE100=y
CONFIG_REGULATOR_PV88060=y
# CONFIG_REGULATOR_PV88080 is not set
CONFIG_REGULATOR_PV88090=m
# CONFIG_REGULATOR_PWM is not set
CONFIG_REGULATOR_QCOM_RPMH=m
# CONFIG_REGULATOR_QCOM_SMD_RPM is not set
CONFIG_REGULATOR_QCOM_SPMI=m
CONFIG_REGULATOR_QCOM_USB_VBUS=m
# CONFIG_REGULATOR_RASPBERRYPI_TOUCHSCREEN_ATTINY is not set
CONFIG_REGULATOR_RC5T583=m
CONFIG_REGULATOR_RT4801=m
CONFIG_REGULATOR_RT5120=m
CONFIG_REGULATOR_RT5190A=m
CONFIG_REGULATOR_RT5759=y
# CONFIG_REGULATOR_RT6160 is not set
CONFIG_REGULATOR_RT6190=y
CONFIG_REGULATOR_RT6245=m
CONFIG_REGULATOR_RTQ2134=y
# CONFIG_REGULATOR_RTMV20 is not set
CONFIG_REGULATOR_RTQ6752=y
CONFIG_REGULATOR_S2MPA01=m
# CONFIG_REGULATOR_S2MPS11 is not set
CONFIG_REGULATOR_S5M8767=y
CONFIG_REGULATOR_SC2731=m
# CONFIG_REGULATOR_SKY81452 is not set
CONFIG_REGULATOR_SLG51000=y
CONFIG_REGULATOR_STM32_BOOSTER=m
CONFIG_REGULATOR_STM32_VREFBUF=y
# CONFIG_REGULATOR_STM32_PWR is not set
CONFIG_REGULATOR_TI_ABB=y
CONFIG_REGULATOR_STW481X_VMMC=y
CONFIG_REGULATOR_SY7636A=y
CONFIG_REGULATOR_SY8106A=m
CONFIG_REGULATOR_SY8824X=m
# CONFIG_REGULATOR_SY8827N is not set
CONFIG_REGULATOR_TPS51632=m
CONFIG_REGULATOR_TPS6105X=m
CONFIG_REGULATOR_TPS62360=m
CONFIG_REGULATOR_TPS6286X=y
CONFIG_REGULATOR_TPS65023=m
# CONFIG_REGULATOR_TPS6507X is not set
# CONFIG_REGULATOR_TPS65086 is not set
CONFIG_REGULATOR_TPS65132=y
CONFIG_REGULATOR_TPS65218=m
CONFIG_REGULATOR_TPS6524X=y
# CONFIG_REGULATOR_TPS65912 is not set
# CONFIG_REGULATOR_TPS68470 is not set
CONFIG_REGULATOR_TWL4030=m
CONFIG_REGULATOR_UNIPHIER=y
CONFIG_REGULATOR_VCTRL=m
CONFIG_REGULATOR_WM831X=m
# CONFIG_REGULATOR_WM8400 is not set
# CONFIG_REGULATOR_WM8994 is not set
CONFIG_REGULATOR_QCOM_LABIBB=y
CONFIG_RC_CORE=m
CONFIG_LIRC=y
CONFIG_RC_MAP=m
# CONFIG_RC_DECODERS is not set
# CONFIG_RC_DEVICES is not set

#
# CEC support
#
# CONFIG_MEDIA_CEC_SUPPORT is not set
# end of CEC support

CONFIG_MEDIA_SUPPORT=y
# CONFIG_MEDIA_SUPPORT_FILTER is not set
# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set

#
# Media device types
#
CONFIG_MEDIA_CAMERA_SUPPORT=y
CONFIG_MEDIA_ANALOG_TV_SUPPORT=y
CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
CONFIG_MEDIA_RADIO_SUPPORT=y
CONFIG_MEDIA_SDR_SUPPORT=y
CONFIG_MEDIA_PLATFORM_SUPPORT=y
CONFIG_MEDIA_TEST_SUPPORT=y
# end of Media device types

#
# Media core support
#
CONFIG_VIDEO_DEV=y
CONFIG_MEDIA_CONTROLLER=y
CONFIG_DVB_CORE=m
# end of Media core support

#
# Video4Linux options
#
CONFIG_VIDEO_V4L2_I2C=y
CONFIG_VIDEO_V4L2_SUBDEV_API=y
# CONFIG_VIDEO_ADV_DEBUG is not set
CONFIG_VIDEO_FIXED_MINOR_RANGES=y
CONFIG_VIDEO_TUNER=m
CONFIG_V4L2_JPEG_HELPER=m
CONFIG_V4L2_H264=y
CONFIG_V4L2_VP9=y
CONFIG_V4L2_MEM2MEM_DEV=y
CONFIG_V4L2_FWNODE=y
CONFIG_V4L2_ASYNC=y
CONFIG_VIDEOBUF_GEN=y
CONFIG_VIDEOBUF_DMA_SG=y
# end of Video4Linux options

#
# Media controller options
#
CONFIG_MEDIA_CONTROLLER_DVB=y
CONFIG_MEDIA_CONTROLLER_REQUEST_API=y
# end of Media controller options

#
# Digital TV options
#
# CONFIG_DVB_MMAP is not set
CONFIG_DVB_MAX_ADAPTERS=16
CONFIG_DVB_DYNAMIC_MINORS=y
# CONFIG_DVB_DEMUX_SECTION_LOSS_LOG is not set
# CONFIG_DVB_ULE_DEBUG is not set
# end of Digital TV options

#
# Media drivers
#

#
# Media drivers
#
# CONFIG_MEDIA_USB_SUPPORT is not set
# CONFIG_MEDIA_PCI_SUPPORT is not set
CONFIG_RADIO_ADAPTERS=m
CONFIG_RADIO_MAXIRADIO=m
CONFIG_RADIO_SAA7706H=m
CONFIG_RADIO_SHARK=m
# CONFIG_RADIO_SHARK2 is not set
CONFIG_RADIO_SI4713=m
CONFIG_RADIO_TEA575X=m
CONFIG_RADIO_TEA5764=m
CONFIG_RADIO_TEF6862=m
CONFIG_RADIO_TIMBERDALE=m
CONFIG_RADIO_WL1273=m
# CONFIG_USB_DSBR is not set
# CONFIG_USB_KEENE is not set
CONFIG_USB_MA901=m
# CONFIG_USB_MR800 is not set
CONFIG_USB_RAREMONO=m
CONFIG_RADIO_SI470X=m
CONFIG_USB_SI470X=m
CONFIG_I2C_SI470X=m
CONFIG_USB_SI4713=m
# CONFIG_PLATFORM_SI4713 is not set
CONFIG_I2C_SI4713=m
CONFIG_RADIO_WL128X=m
CONFIG_V4L_RADIO_ISA_DRIVERS=y
CONFIG_RADIO_AZTECH=m
# CONFIG_RADIO_CADET is not set
CONFIG_RADIO_GEMTEK=m
CONFIG_RADIO_ISA=m
CONFIG_RADIO_RTRACK=m
# CONFIG_RADIO_RTRACK2 is not set
# CONFIG_RADIO_SF16FMI is not set
CONFIG_RADIO_SF16FMR2=m
CONFIG_RADIO_TERRATEC=m
CONFIG_RADIO_TRUST=m
CONFIG_RADIO_TYPHOON=m
CONFIG_RADIO_ZOLTRIX=m
CONFIG_MEDIA_PLATFORM_DRIVERS=y
# CONFIG_V4L_PLATFORM_DRIVERS is not set
# CONFIG_SDR_PLATFORM_DRIVERS is not set
CONFIG_DVB_PLATFORM_DRIVERS=y
CONFIG_V4L_MEM2MEM_DRIVERS=y
CONFIG_VIDEO_MEM2MEM_DEINTERLACE=y

#
# Allegro DVT media platform drivers
#
# CONFIG_VIDEO_ALLEGRO_DVT is not set

#
# Amlogic media platform drivers
#
CONFIG_VIDEO_MESON_GE2D=m

#
# Amphion drivers
#

#
# Aspeed media platform drivers
#

#
# Atmel media platform drivers
#

#
# Cadence media platform drivers
#
CONFIG_VIDEO_CADENCE_CSI2RX=y
CONFIG_VIDEO_CADENCE_CSI2TX=m

#
# Chips&Media media platform drivers
#
CONFIG_VIDEO_CODA=m
CONFIG_VIDEO_IMX_VDOA=m

#
# Intel media platform drivers
#

#
# Marvell media platform drivers
#

#
# Mediatek media platform drivers
#
# CONFIG_VIDEO_MEDIATEK_JPEG is not set
CONFIG_VIDEO_MEDIATEK_MDP=m
CONFIG_VIDEO_MEDIATEK_VCODEC_SCP=y
CONFIG_VIDEO_MEDIATEK_VCODEC_VPU=y
CONFIG_VIDEO_MEDIATEK_VCODEC=m
CONFIG_VIDEO_MEDIATEK_VPU=m
# CONFIG_VIDEO_MEDIATEK_MDP3 is not set

#
# Microchip Technology, Inc. media platform drivers
#

#
# NVidia media platform drivers
#
# CONFIG_VIDEO_TEGRA_VDE is not set

#
# NXP media platform drivers
#
CONFIG_VIDEO_IMX7_CSI=y
# CONFIG_VIDEO_IMX_MIPI_CSIS is not set
CONFIG_VIDEO_IMX_PXP=m
CONFIG_VIDEO_MX2_EMMAPRP=y
CONFIG_VIDEO_DW100=y
# CONFIG_VIDEO_IMX8_JPEG is not set

#
# Qualcomm media platform drivers
#

#
# Renesas media platform drivers
#
CONFIG_VIDEO_RENESAS_FCP=y
CONFIG_VIDEO_RENESAS_FDP1=y
# CONFIG_VIDEO_RENESAS_JPU is not set
CONFIG_VIDEO_RENESAS_VSP1=m

#
# Rockchip media platform drivers
#
CONFIG_VIDEO_ROCKCHIP_RGA=m

#
# Samsung media platform drivers
#
CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=y
CONFIG_VIDEO_SAMSUNG_S5P_G2D=y
# CONFIG_VIDEO_SAMSUNG_S5P_JPEG is not set
CONFIG_VIDEO_SAMSUNG_S5P_MFC=m

#
# STMicroelectronics media platform drivers
#
# CONFIG_VIDEO_STI_BDISP is not set
# CONFIG_DVB_C8SECTPFE is not set
# CONFIG_VIDEO_STI_DELTA is not set
CONFIG_VIDEO_STI_HVA=m
CONFIG_VIDEO_STM32_DMA2D=m

#
# Sunxi media platform drivers
#

#
# Texas Instruments drivers
#
CONFIG_VIDEO_TI_VPDMA=m
CONFIG_VIDEO_TI_SC=m
CONFIG_VIDEO_TI_CSC=m
CONFIG_VIDEO_TI_VPE=m
CONFIG_VIDEO_TI_VPE_DEBUG=y

#
# Verisilicon media platform drivers
#
CONFIG_VIDEO_HANTRO=m
# CONFIG_VIDEO_HANTRO_IMX8M is not set
CONFIG_VIDEO_HANTRO_SAMA5D4=y
# CONFIG_VIDEO_HANTRO_ROCKCHIP is not set
# CONFIG_VIDEO_HANTRO_SUNXI is not set

#
# VIA media platform drivers
#

#
# Xilinx media platform drivers
#
CONFIG_V4L_TEST_DRIVERS=y
# CONFIG_VIDEO_VIM2M is not set
# CONFIG_VIDEO_VICODEC is not set
CONFIG_VIDEO_VIMC=y
CONFIG_VIDEO_VISL=y
CONFIG_DVB_TEST_DRIVERS=y
CONFIG_DVB_VIDTV=m

#
# FireWire (IEEE 1394) Adapters
#
CONFIG_DVB_FIREDTV=m
CONFIG_DVB_FIREDTV_INPUT=y
CONFIG_TTPCI_EEPROM=m
CONFIG_VIDEO_V4L2_TPG=y
CONFIG_VIDEOBUF2_CORE=y
CONFIG_VIDEOBUF2_V4L2=y
CONFIG_VIDEOBUF2_MEMOPS=y
CONFIG_VIDEOBUF2_DMA_CONTIG=y
CONFIG_VIDEOBUF2_VMALLOC=y
CONFIG_VIDEOBUF2_DMA_SG=m
# end of Media drivers

#
# Media ancillary drivers
#
CONFIG_MEDIA_ATTACH=y
CONFIG_VIDEO_IR_I2C=m

#
# Camera sensor devices
#
CONFIG_VIDEO_APTINA_PLL=y
# CONFIG_VIDEO_AR0521 is not set
CONFIG_VIDEO_HI556=m
CONFIG_VIDEO_HI846=m
CONFIG_VIDEO_HI847=m
# CONFIG_VIDEO_IMX208 is not set
# CONFIG_VIDEO_IMX214 is not set
CONFIG_VIDEO_IMX219=m
# CONFIG_VIDEO_IMX258 is not set
CONFIG_VIDEO_IMX274=y
CONFIG_VIDEO_IMX290=y
# CONFIG_VIDEO_IMX319 is not set
CONFIG_VIDEO_IMX334=m
CONFIG_VIDEO_IMX335=y
CONFIG_VIDEO_IMX355=m
CONFIG_VIDEO_IMX412=y
CONFIG_VIDEO_MAX9271_LIB=y
CONFIG_VIDEO_MT9M001=y
# CONFIG_VIDEO_MT9M032 is not set
CONFIG_VIDEO_MT9M111=y
CONFIG_VIDEO_MT9P031=y
CONFIG_VIDEO_MT9T001=m
CONFIG_VIDEO_MT9T112=m
CONFIG_VIDEO_MT9V011=m
# CONFIG_VIDEO_MT9V032 is not set
CONFIG_VIDEO_MT9V111=m
CONFIG_VIDEO_NOON010PC30=y
# CONFIG_VIDEO_OG01A1B is not set
CONFIG_VIDEO_OV02A10=y
CONFIG_VIDEO_OV08D10=y
CONFIG_VIDEO_OV08X40=y
CONFIG_VIDEO_OV13858=y
CONFIG_VIDEO_OV13B10=y
CONFIG_VIDEO_OV2640=m
# CONFIG_VIDEO_OV2659 is not set
CONFIG_VIDEO_OV2680=m
CONFIG_VIDEO_OV2685=m
CONFIG_VIDEO_OV2740=m
CONFIG_VIDEO_OV4689=y
CONFIG_VIDEO_OV5640=y
CONFIG_VIDEO_OV5645=y
# CONFIG_VIDEO_OV5647 is not set
# CONFIG_VIDEO_OV5670 is not set
CONFIG_VIDEO_OV5675=m
CONFIG_VIDEO_OV5693=m
CONFIG_VIDEO_OV5695=m
# CONFIG_VIDEO_OV6650 is not set
CONFIG_VIDEO_OV7251=y
CONFIG_VIDEO_OV7640=m
# CONFIG_VIDEO_OV7670 is not set
# CONFIG_VIDEO_OV772X is not set
# CONFIG_VIDEO_OV7740 is not set
CONFIG_VIDEO_OV8856=y
# CONFIG_VIDEO_OV9282 is not set
CONFIG_VIDEO_OV9640=m
CONFIG_VIDEO_OV9650=y
# CONFIG_VIDEO_OV9734 is not set
CONFIG_VIDEO_RDACM20=y
CONFIG_VIDEO_RDACM21=m
# CONFIG_VIDEO_RJ54N1 is not set
CONFIG_VIDEO_S5C73M3=y
CONFIG_VIDEO_S5K5BAF=y
CONFIG_VIDEO_S5K6A3=y
CONFIG_VIDEO_S5K6AA=y
# CONFIG_VIDEO_SR030PC30 is not set
CONFIG_VIDEO_ST_VGXY61=y
# CONFIG_VIDEO_VS6624 is not set
# CONFIG_VIDEO_CCS is not set
CONFIG_VIDEO_ET8EK8=m
# CONFIG_VIDEO_M5MOLS is not set
# end of Camera sensor devices

#
# Lens drivers
#
CONFIG_VIDEO_AD5820=m
# CONFIG_VIDEO_AK7375 is not set
CONFIG_VIDEO_DW9714=y
# CONFIG_VIDEO_DW9768 is not set
# CONFIG_VIDEO_DW9807_VCM is not set
# end of Lens drivers

#
# Flash devices
#
CONFIG_VIDEO_ADP1653=m
CONFIG_VIDEO_LM3560=y
CONFIG_VIDEO_LM3646=m
# end of Flash devices

#
# Audio decoders, processors and mixers
#
# CONFIG_VIDEO_CS3308 is not set
CONFIG_VIDEO_CS5345=y
# CONFIG_VIDEO_CS53L32A is not set
CONFIG_VIDEO_MSP3400=m
CONFIG_VIDEO_SONY_BTF_MPX=m
CONFIG_VIDEO_TDA7432=y
CONFIG_VIDEO_TDA9840=m
# CONFIG_VIDEO_TEA6415C is not set
CONFIG_VIDEO_TEA6420=m
CONFIG_VIDEO_TLV320AIC23B=m
CONFIG_VIDEO_TVAUDIO=y
# CONFIG_VIDEO_UDA1342 is not set
# CONFIG_VIDEO_VP27SMPX is not set
CONFIG_VIDEO_WM8739=y
CONFIG_VIDEO_WM8775=m
# end of Audio decoders, processors and mixers

#
# RDS decoders
#
# CONFIG_VIDEO_SAA6588 is not set
# end of RDS decoders

#
# Video decoders
#
# CONFIG_VIDEO_ADV7180 is not set
CONFIG_VIDEO_ADV7183=m
CONFIG_VIDEO_ADV748X=m
# CONFIG_VIDEO_ADV7604 is not set
CONFIG_VIDEO_ADV7842=y
# CONFIG_VIDEO_ADV7842_CEC is not set
CONFIG_VIDEO_BT819=m
CONFIG_VIDEO_BT856=y
CONFIG_VIDEO_BT866=y
# CONFIG_VIDEO_ISL7998X is not set
# CONFIG_VIDEO_KS0127 is not set
CONFIG_VIDEO_MAX9286=m
CONFIG_VIDEO_ML86V7667=y
# CONFIG_VIDEO_SAA7110 is not set
CONFIG_VIDEO_SAA711X=y
# CONFIG_VIDEO_TC358743 is not set
# CONFIG_VIDEO_TVP514X is not set
# CONFIG_VIDEO_TVP5150 is not set
# CONFIG_VIDEO_TVP7002 is not set
CONFIG_VIDEO_TW2804=y
# CONFIG_VIDEO_TW9903 is not set
CONFIG_VIDEO_TW9906=m
CONFIG_VIDEO_TW9910=m
# CONFIG_VIDEO_VPX3220 is not set

#
# Video and audio decoders
#
CONFIG_VIDEO_SAA717X=y
CONFIG_VIDEO_CX25840=m
# end of Video decoders

#
# Video encoders
#
# CONFIG_VIDEO_AD9389B is not set
CONFIG_VIDEO_ADV7170=y
# CONFIG_VIDEO_ADV7175 is not set
CONFIG_VIDEO_ADV7343=y
CONFIG_VIDEO_ADV7393=y
# CONFIG_VIDEO_ADV7511 is not set
# CONFIG_VIDEO_AK881X is not set
# CONFIG_VIDEO_SAA7127 is not set
CONFIG_VIDEO_SAA7185=m
CONFIG_VIDEO_THS8200=y
# end of Video encoders

#
# Video improvement chips
#
# CONFIG_VIDEO_UPD64031A is not set
CONFIG_VIDEO_UPD64083=m
# end of Video improvement chips

#
# Audio/Video compression chips
#
CONFIG_VIDEO_SAA6752HS=m
# end of Audio/Video compression chips

#
# SDR tuner chips
#
CONFIG_SDR_MAX2175=y
# end of SDR tuner chips

#
# Miscellaneous helper chips
#
CONFIG_VIDEO_I2C=m
CONFIG_VIDEO_M52790=y
CONFIG_VIDEO_ST_MIPID02=y
CONFIG_VIDEO_THS7303=y
# end of Miscellaneous helper chips

#
# Media SPI Adapters
#
CONFIG_CXD2880_SPI_DRV=m
# CONFIG_VIDEO_GS1662 is not set
# end of Media SPI Adapters

CONFIG_MEDIA_TUNER=y

#
# Customize TV tuners
#
CONFIG_MEDIA_TUNER_E4000=y
CONFIG_MEDIA_TUNER_FC0011=m
CONFIG_MEDIA_TUNER_FC0012=m
# CONFIG_MEDIA_TUNER_FC0013 is not set
# CONFIG_MEDIA_TUNER_FC2580 is not set
# CONFIG_MEDIA_TUNER_IT913X is not set
# CONFIG_MEDIA_TUNER_M88RS6000T is not set
# CONFIG_MEDIA_TUNER_MAX2165 is not set
# CONFIG_MEDIA_TUNER_MC44S803 is not set
# CONFIG_MEDIA_TUNER_MSI001 is not set
CONFIG_MEDIA_TUNER_MT2060=m
CONFIG_MEDIA_TUNER_MT2063=y
# CONFIG_MEDIA_TUNER_MT20XX is not set
CONFIG_MEDIA_TUNER_MT2131=m
# CONFIG_MEDIA_TUNER_MT2266 is not set
CONFIG_MEDIA_TUNER_MXL301RF=m
# CONFIG_MEDIA_TUNER_MXL5005S is not set
CONFIG_MEDIA_TUNER_MXL5007T=y
# CONFIG_MEDIA_TUNER_QM1D1B0004 is not set
CONFIG_MEDIA_TUNER_QM1D1C0042=m
CONFIG_MEDIA_TUNER_QT1010=y
# CONFIG_MEDIA_TUNER_R820T is not set
CONFIG_MEDIA_TUNER_SI2157=m
CONFIG_MEDIA_TUNER_SIMPLE=m
CONFIG_MEDIA_TUNER_TDA18212=y
CONFIG_MEDIA_TUNER_TDA18218=y
CONFIG_MEDIA_TUNER_TDA18250=m
CONFIG_MEDIA_TUNER_TDA18271=m
CONFIG_MEDIA_TUNER_TDA827X=m
CONFIG_MEDIA_TUNER_TDA8290=m
CONFIG_MEDIA_TUNER_TDA9887=y
CONFIG_MEDIA_TUNER_TEA5761=y
CONFIG_MEDIA_TUNER_TEA5767=m
# CONFIG_MEDIA_TUNER_TUA9001 is not set
CONFIG_MEDIA_TUNER_XC2028=m
CONFIG_MEDIA_TUNER_XC4000=y
CONFIG_MEDIA_TUNER_XC5000=y
# end of Customize TV tuners

#
# Customise DVB Frontends
#

#
# Multistandard (satellite) frontends
#
# CONFIG_DVB_M88DS3103 is not set
CONFIG_DVB_MXL5XX=m
CONFIG_DVB_STB0899=m
CONFIG_DVB_STB6100=m
CONFIG_DVB_STV090x=m
# CONFIG_DVB_STV0910 is not set
# CONFIG_DVB_STV6110x is not set
# CONFIG_DVB_STV6111 is not set

#
# Multistandard (cable + terrestrial) frontends
#
CONFIG_DVB_DRXK=m
CONFIG_DVB_MN88472=m
# CONFIG_DVB_MN88473 is not set
CONFIG_DVB_SI2165=m
CONFIG_DVB_TDA18271C2DD=m

#
# DVB-S (satellite) frontends
#
CONFIG_DVB_CX24110=m
# CONFIG_DVB_CX24116 is not set
CONFIG_DVB_CX24117=m
# CONFIG_DVB_CX24120 is not set
CONFIG_DVB_CX24123=m
# CONFIG_DVB_DS3000 is not set
CONFIG_DVB_MB86A16=m
CONFIG_DVB_MT312=m
CONFIG_DVB_S5H1420=m
CONFIG_DVB_SI21XX=m
CONFIG_DVB_STB6000=m
# CONFIG_DVB_STV0288 is not set
CONFIG_DVB_STV0299=m
CONFIG_DVB_STV0900=m
CONFIG_DVB_STV6110=m
# CONFIG_DVB_TDA10071 is not set
CONFIG_DVB_TDA10086=m
CONFIG_DVB_TDA8083=m
CONFIG_DVB_TDA8261=m
CONFIG_DVB_TDA826X=m
CONFIG_DVB_TS2020=m
CONFIG_DVB_TUA6100=m
# CONFIG_DVB_TUNER_CX24113 is not set
CONFIG_DVB_TUNER_ITD1000=m
CONFIG_DVB_VES1X93=m
# CONFIG_DVB_ZL10036 is not set
CONFIG_DVB_ZL10039=m

#
# DVB-T (terrestrial) frontends
#
CONFIG_DVB_AF9013=m
# CONFIG_DVB_CX22700 is not set
# CONFIG_DVB_CX22702 is not set
CONFIG_DVB_CXD2820R=m
# CONFIG_DVB_CXD2841ER is not set
CONFIG_DVB_DIB3000MB=m
CONFIG_DVB_DIB3000MC=m
CONFIG_DVB_DIB7000M=m
CONFIG_DVB_DIB7000P=m
# CONFIG_DVB_DIB9000 is not set
# CONFIG_DVB_DRXD is not set
# CONFIG_DVB_EC100 is not set
CONFIG_DVB_L64781=m
CONFIG_DVB_MT352=m
# CONFIG_DVB_NXT6000 is not set
CONFIG_DVB_RTL2830=m
CONFIG_DVB_RTL2832=m
CONFIG_DVB_RTL2832_SDR=m
# CONFIG_DVB_S5H1432 is not set
# CONFIG_DVB_SI2168 is not set
CONFIG_DVB_SP887X=m
# CONFIG_DVB_STV0367 is not set
CONFIG_DVB_TDA10048=m
CONFIG_DVB_TDA1004X=m
CONFIG_DVB_ZD1301_DEMOD=m
CONFIG_DVB_ZL10353=m
CONFIG_DVB_CXD2880=m

#
# DVB-C (cable) frontends
#
CONFIG_DVB_STV0297=m
CONFIG_DVB_TDA10021=m
# CONFIG_DVB_TDA10023 is not set
# CONFIG_DVB_VES1820 is not set

#
# ATSC (North American/Korean Terrestrial/Cable DTV) frontends
#
CONFIG_DVB_AU8522=m
# CONFIG_DVB_AU8522_DTV is not set
CONFIG_DVB_AU8522_V4L=m
CONFIG_DVB_BCM3510=m
# CONFIG_DVB_LG2160 is not set
# CONFIG_DVB_LGDT3305 is not set
# CONFIG_DVB_LGDT3306A is not set
CONFIG_DVB_LGDT330X=m
CONFIG_DVB_MXL692=m
CONFIG_DVB_NXT200X=m
# CONFIG_DVB_OR51132 is not set
CONFIG_DVB_OR51211=m
CONFIG_DVB_S5H1409=m
# CONFIG_DVB_S5H1411 is not set

#
# ISDB-T (terrestrial) frontends
#
# CONFIG_DVB_DIB8000 is not set
CONFIG_DVB_MB86A20S=m
CONFIG_DVB_S921=m

#
# ISDB-S (satellite) & ISDB-T (terrestrial) frontends
#
CONFIG_DVB_MN88443X=m
CONFIG_DVB_TC90522=m

#
# Digital terrestrial only tuners/PLL
#
# CONFIG_DVB_PLL is not set
CONFIG_DVB_TUNER_DIB0070=m
CONFIG_DVB_TUNER_DIB0090=m

#
# SEC control devices for DVB-S
#
CONFIG_DVB_A8293=m
CONFIG_DVB_AF9033=m
CONFIG_DVB_ASCOT2E=m
# CONFIG_DVB_ATBM8830 is not set
# CONFIG_DVB_HELENE is not set
CONFIG_DVB_HORUS3A=m
# CONFIG_DVB_ISL6405 is not set
CONFIG_DVB_ISL6421=m
# CONFIG_DVB_ISL6423 is not set
CONFIG_DVB_IX2505V=m
CONFIG_DVB_LGS8GL5=m
# CONFIG_DVB_LGS8GXX is not set
CONFIG_DVB_LNBH25=m
CONFIG_DVB_LNBH29=m
CONFIG_DVB_LNBP21=m
CONFIG_DVB_LNBP22=m
CONFIG_DVB_M88RS2000=m
CONFIG_DVB_TDA665x=m
# CONFIG_DVB_DRX39XYJ is not set

#
# Common Interface (EN50221) controller drivers
#
CONFIG_DVB_CXD2099=m
# CONFIG_DVB_SP2 is not set
# end of Customise DVB Frontends

#
# Tools to develop new frontends
#
# CONFIG_DVB_DUMMY_FE is not set
# end of Media ancillary drivers

#
# Graphics support
#
# CONFIG_IMX_IPUV3_CORE is not set

#
# ARM devices
#
# end of ARM devices

#
# Frame buffer Devices
#
# CONFIG_FB is not set
# CONFIG_MMP_DISP is not set
# end of Frame buffer Devices

#
# Backlight & LCD device support
#
CONFIG_LCD_CLASS_DEVICE=y
# CONFIG_LCD_L4F00242T03 is not set
# CONFIG_LCD_LMS283GF05 is not set
CONFIG_LCD_LTV350QV=m
CONFIG_LCD_ILI922X=y
CONFIG_LCD_ILI9320=y
CONFIG_LCD_TDO24M=m
CONFIG_LCD_VGG2432A4=m
CONFIG_LCD_PLATFORM=y
CONFIG_LCD_AMS369FG06=m
CONFIG_LCD_LMS501KF03=m
# CONFIG_LCD_HX8357 is not set
CONFIG_LCD_OTM3225A=y
CONFIG_BACKLIGHT_CLASS_DEVICE=m
# CONFIG_BACKLIGHT_KTD253 is not set
# CONFIG_BACKLIGHT_LM3533 is not set
CONFIG_BACKLIGHT_OMAP1=m
CONFIG_BACKLIGHT_PWM=m
CONFIG_BACKLIGHT_DA9052=m
CONFIG_BACKLIGHT_MT6370=m
CONFIG_BACKLIGHT_QCOM_WLED=m
# CONFIG_BACKLIGHT_WM831X is not set
# CONFIG_BACKLIGHT_ADP8860 is not set
# CONFIG_BACKLIGHT_ADP8870 is not set
CONFIG_BACKLIGHT_PCF50633=m
CONFIG_BACKLIGHT_AAT2870=m
CONFIG_BACKLIGHT_LM3630A=m
CONFIG_BACKLIGHT_LM3639=m
CONFIG_BACKLIGHT_LP855X=m
CONFIG_BACKLIGHT_LP8788=m
# CONFIG_BACKLIGHT_PANDORA is not set
# CONFIG_BACKLIGHT_SKY81452 is not set
# CONFIG_BACKLIGHT_GPIO is not set
CONFIG_BACKLIGHT_LV5207LP=m
CONFIG_BACKLIGHT_BD6107=m
CONFIG_BACKLIGHT_ARCXCNN=m
CONFIG_BACKLIGHT_RAVE_SP=m
CONFIG_BACKLIGHT_LED=m
# end of Backlight & LCD device support

CONFIG_HDMI=y

#
# Console display driver support
#
CONFIG_DUMMY_CONSOLE=y
CONFIG_DUMMY_CONSOLE_COLUMNS=80
CONFIG_DUMMY_CONSOLE_ROWS=25
# end of Console display driver support
# end of Graphics support

# CONFIG_SOUND is not set

#
# HID support
#
CONFIG_HID=y
# CONFIG_HID_BATTERY_STRENGTH is not set
# CONFIG_HIDRAW is not set
CONFIG_UHID=y
CONFIG_HID_GENERIC=y

#
# Special HID drivers
#
CONFIG_HID_A4TECH=y
CONFIG_HID_ACCUTOUCH=y
CONFIG_HID_ACRUX=m
# CONFIG_HID_ACRUX_FF is not set
CONFIG_HID_APPLE=y
CONFIG_HID_APPLEIR=m
CONFIG_HID_ASUS=y
CONFIG_HID_AUREAL=y
CONFIG_HID_BELKIN=y
CONFIG_HID_BETOP_FF=m
# CONFIG_HID_BIGBEN_FF is not set
CONFIG_HID_CHERRY=m
# CONFIG_HID_CHICONY is not set
CONFIG_HID_CORSAIR=m
CONFIG_HID_COUGAR=y
CONFIG_HID_MACALLY=m
CONFIG_HID_CMEDIA=m
CONFIG_HID_CREATIVE_SB0540=m
CONFIG_HID_CYPRESS=y
CONFIG_HID_DRAGONRISE=m
CONFIG_DRAGONRISE_FF=y
# CONFIG_HID_EMS_FF is not set
# CONFIG_HID_ELAN is not set
# CONFIG_HID_ELECOM is not set
# CONFIG_HID_ELO is not set
CONFIG_HID_EZKEY=y
CONFIG_HID_GEMBIRD=m
# CONFIG_HID_GFRM is not set
CONFIG_HID_GLORIOUS=m
CONFIG_HID_HOLTEK=y
CONFIG_HOLTEK_FF=y
CONFIG_HID_VIVALDI_COMMON=m
CONFIG_HID_VIVALDI=m
CONFIG_HID_GT683R=m
# CONFIG_HID_KEYTOUCH is not set
CONFIG_HID_KYE=y
CONFIG_HID_UCLOGIC=y
CONFIG_HID_WALTOP=y
# CONFIG_HID_VIEWSONIC is not set
CONFIG_HID_VRC2=m
# CONFIG_HID_XIAOMI is not set
CONFIG_HID_GYRATION=m
# CONFIG_HID_ICADE is not set
CONFIG_HID_ITE=m
# CONFIG_HID_JABRA is not set
# CONFIG_HID_TWINHAN is not set
CONFIG_HID_KENSINGTON=y
CONFIG_HID_LCPOWER=y
CONFIG_HID_LED=y
CONFIG_HID_LENOVO=m
CONFIG_HID_LETSKETCH=m
CONFIG_HID_LOGITECH=y
CONFIG_HID_LOGITECH_HIDPP=m
CONFIG_LOGITECH_FF=y
# CONFIG_LOGIRUMBLEPAD2_FF is not set
# CONFIG_LOGIG940_FF is not set
# CONFIG_LOGIWHEELS_FF is not set
CONFIG_HID_MAGICMOUSE=m
CONFIG_HID_MALTRON=y
# CONFIG_HID_MAYFLASH is not set
CONFIG_HID_MEGAWORLD_FF=y
# CONFIG_HID_REDRAGON is not set
CONFIG_HID_MICROSOFT=m
CONFIG_HID_MONTEREY=y
CONFIG_HID_MULTITOUCH=y
CONFIG_HID_NINTENDO=m
CONFIG_NINTENDO_FF=y
# CONFIG_HID_NTI is not set
CONFIG_HID_NTRIG=y
# CONFIG_HID_ORTEK is not set
CONFIG_HID_PANTHERLORD=m
CONFIG_PANTHERLORD_FF=y
CONFIG_HID_PENMOUNT=y
# CONFIG_HID_PETALYNX is not set
# CONFIG_HID_PICOLCD is not set
CONFIG_HID_PLANTRONICS=m
CONFIG_HID_PXRC=y
# CONFIG_HID_RAZER is not set
# CONFIG_HID_PRIMAX is not set
CONFIG_HID_RETRODE=y
CONFIG_HID_ROCCAT=m
CONFIG_HID_SAITEK=y
# CONFIG_HID_SAMSUNG is not set
# CONFIG_HID_SEMITEK is not set
# CONFIG_HID_SIGMAMICRO is not set
# CONFIG_HID_SONY is not set
# CONFIG_HID_SPEEDLINK is not set
# CONFIG_HID_STEAM is not set
CONFIG_HID_STEELSERIES=y
# CONFIG_HID_SUNPLUS is not set
CONFIG_HID_RMI=m
# CONFIG_HID_GREENASIA is not set
CONFIG_HID_SMARTJOYPLUS=m
# CONFIG_SMARTJOYPLUS_FF is not set
CONFIG_HID_TIVO=m
CONFIG_HID_TOPSEED=m
# CONFIG_HID_TOPRE is not set
# CONFIG_HID_THINGM is not set
CONFIG_HID_THRUSTMASTER=m
# CONFIG_THRUSTMASTER_FF is not set
# CONFIG_HID_UDRAW_PS3 is not set
CONFIG_HID_U2FZERO=m
CONFIG_HID_WACOM=y
# CONFIG_HID_WIIMOTE is not set
# CONFIG_HID_XINMO is not set
CONFIG_HID_ZEROPLUS=m
# CONFIG_ZEROPLUS_FF is not set
CONFIG_HID_ZYDACRON=y
CONFIG_HID_SENSOR_HUB=m
# CONFIG_HID_SENSOR_CUSTOM_SENSOR is not set
CONFIG_HID_ALPS=y
# CONFIG_HID_MCP2221 is not set
# end of Special HID drivers

#
# USB HID support
#
CONFIG_USB_HID=y
CONFIG_HID_PID=y
# CONFIG_USB_HIDDEV is not set
# end of USB HID support

#
# I2C HID support
#
CONFIG_I2C_HID_OF=y
CONFIG_I2C_HID_OF_ELAN=y
# CONFIG_I2C_HID_OF_GOODIX is not set
# end of I2C HID support

CONFIG_I2C_HID_CORE=y

#
# Intel ISH HID support
#
# end of Intel ISH HID support

#
# AMD SFH HID Support
#
# CONFIG_AMD_SFH_HID is not set
# end of AMD SFH HID Support
# end of HID support

CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_EHCI_BIG_ENDIAN_MMIO=y
CONFIG_USB_EHCI_BIG_ENDIAN_DESC=y
CONFIG_USB_UHCI_BIG_ENDIAN_MMIO=y
CONFIG_USB_UHCI_BIG_ENDIAN_DESC=y
CONFIG_USB_SUPPORT=y
CONFIG_USB_COMMON=y
# CONFIG_USB_LED_TRIG is not set
CONFIG_USB_ULPI_BUS=m
CONFIG_USB_CONN_GPIO=y
CONFIG_USB_ARCH_HAS_HCD=y
CONFIG_USB=y
# CONFIG_USB_PCI is not set
# CONFIG_USB_ANNOUNCE_NEW_DEVICES is not set

#
# Miscellaneous USB options
#
CONFIG_USB_DEFAULT_PERSIST=y
# CONFIG_USB_FEW_INIT_RETRIES is not set
CONFIG_USB_DYNAMIC_MINORS=y
CONFIG_USB_OTG_PRODUCTLIST=y
# CONFIG_USB_LEDS_TRIGGER_USBPORT is not set
CONFIG_USB_AUTOSUSPEND_DELAY=2
CONFIG_USB_MON=y

#
# USB Host Controller Drivers
#
CONFIG_USB_C67X00_HCD=y
# CONFIG_USB_XHCI_HCD is not set
CONFIG_USB_BRCMSTB=y
# CONFIG_USB_EHCI_HCD is not set
CONFIG_USB_OXU210HP_HCD=m
# CONFIG_USB_ISP116X_HCD is not set
CONFIG_USB_ISP1362_HCD=y
# CONFIG_USB_MAX3421_HCD is not set
# CONFIG_USB_OHCI_HCD is not set
CONFIG_USB_UHCI_HCD=y
CONFIG_USB_UHCI_SUPPORT_NON_PCI_HC=y
CONFIG_USB_U132_HCD=y
CONFIG_USB_SL811_HCD=m
CONFIG_USB_SL811_HCD_ISO=y
CONFIG_USB_R8A66597_HCD=m
# CONFIG_USB_RENESAS_USBHS_HCD is not set
CONFIG_USB_HCD_BCMA=m
CONFIG_USB_HCD_SSB=y
CONFIG_USB_HCD_TEST_MODE=y
CONFIG_USB_RENESAS_USBHS=m

#
# USB Device Class drivers
#
CONFIG_USB_ACM=m
# CONFIG_USB_PRINTER is not set
CONFIG_USB_WDM=y
CONFIG_USB_TMC=m

#
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
#

#
# also be needed; see USB_STORAGE Help for more info
#
# CONFIG_USB_STORAGE is not set

#
# USB Imaging devices
#
CONFIG_USB_MDC800=y
CONFIG_USB_MICROTEK=m
CONFIG_USBIP_CORE=m
# CONFIG_USBIP_VHCI_HCD is not set
# CONFIG_USBIP_HOST is not set
CONFIG_USBIP_VUDC=m
# CONFIG_USBIP_DEBUG is not set

#
# USB dual-mode controller drivers
#
CONFIG_USB_CDNS_SUPPORT=m
CONFIG_USB_CDNS_HOST=y
CONFIG_USB_CDNS3=m
CONFIG_USB_CDNS3_GADGET=y
CONFIG_USB_CDNS3_HOST=y
CONFIG_USB_CDNS3_TI=m
CONFIG_USB_CDNS3_IMX=m
# CONFIG_USB_FOTG210 is not set
# CONFIG_USB_MTU3 is not set
# CONFIG_USB_MUSB_HDRC is not set
CONFIG_USB_DWC3=m
CONFIG_USB_DWC3_ULPI=y
# CONFIG_USB_DWC3_HOST is not set
# CONFIG_USB_DWC3_GADGET is not set
CONFIG_USB_DWC3_DUAL_ROLE=y

#
# Platform Glue Driver Support
#
CONFIG_USB_DWC3_OMAP=m
CONFIG_USB_DWC3_EXYNOS=m
CONFIG_USB_DWC3_KEYSTONE=m
CONFIG_USB_DWC3_MESON_G12A=m
# CONFIG_USB_DWC3_OF_SIMPLE is not set
CONFIG_USB_DWC3_ST=m
CONFIG_USB_DWC3_QCOM=m
# CONFIG_USB_DWC3_IMX8MP is not set
CONFIG_USB_DWC3_XILINX=m
# CONFIG_USB_DWC3_AM62 is not set
CONFIG_USB_DWC2=y
CONFIG_USB_DWC2_HOST=y

#
# Gadget/Dual-role mode requires USB Gadget support to be enabled
#
CONFIG_USB_DWC2_DEBUG=y
CONFIG_USB_DWC2_VERBOSE=y
# CONFIG_USB_DWC2_TRACK_MISSED_SOFS is not set
# CONFIG_USB_DWC2_DEBUG_PERIODIC is not set
CONFIG_USB_CHIPIDEA=m
# CONFIG_USB_CHIPIDEA_UDC is not set
CONFIG_USB_CHIPIDEA_MSM=m
CONFIG_USB_CHIPIDEA_IMX=m
CONFIG_USB_CHIPIDEA_GENERIC=m
CONFIG_USB_CHIPIDEA_TEGRA=m
CONFIG_USB_ISP1760=m
CONFIG_USB_ISP1761_UDC=y
# CONFIG_USB_ISP1760_HOST_ROLE is not set
CONFIG_USB_ISP1760_GADGET_ROLE=y
# CONFIG_USB_ISP1760_DUAL_ROLE is not set

#
# USB port drivers
#
# CONFIG_USB_SERIAL is not set

#
# USB Miscellaneous drivers
#
# CONFIG_USB_EMI62 is not set
CONFIG_USB_EMI26=m
# CONFIG_USB_ADUTUX is not set
# CONFIG_USB_SEVSEG is not set
CONFIG_USB_LEGOTOWER=y
CONFIG_USB_LCD=y
# CONFIG_USB_CYPRESS_CY7C63 is not set
# CONFIG_USB_CYTHERM is not set
# CONFIG_USB_IDMOUSE is not set
CONFIG_USB_FTDI_ELAN=y
CONFIG_USB_APPLEDISPLAY=m
CONFIG_USB_QCOM_EUD=m
CONFIG_APPLE_MFI_FASTCHARGE=m
CONFIG_USB_LD=y
CONFIG_USB_TRANCEVIBRATOR=y
# CONFIG_USB_IOWARRIOR is not set
CONFIG_USB_TEST=m
# CONFIG_USB_EHSET_TEST_FIXTURE is not set
# CONFIG_USB_ISIGHTFW is not set
CONFIG_USB_YUREX=y
CONFIG_USB_EZUSB_FX2=m
# CONFIG_USB_HUB_USB251XB is not set
# CONFIG_USB_HSIC_USB3503 is not set
CONFIG_USB_HSIC_USB4604=y
CONFIG_USB_LINK_LAYER_TEST=y
CONFIG_USB_CHAOSKEY=m
CONFIG_BRCM_USB_PINMAP=m
CONFIG_USB_ONBOARD_HUB=m

#
# USB Physical Layer drivers
#
CONFIG_USB_PHY=y
# CONFIG_KEYSTONE_USB_PHY is not set
CONFIG_NOP_USB_XCEIV=m
# CONFIG_AM335X_PHY_USB is not set
CONFIG_USB_ISP1301=m
CONFIG_USB_TEGRA_PHY=m
CONFIG_USB_ULPI=y
CONFIG_USB_ULPI_VIEWPORT=y
# end of USB Physical Layer drivers

CONFIG_USB_GADGET=m
CONFIG_USB_GADGET_DEBUG_FILES=y
CONFIG_USB_GADGET_VBUS_DRAW=2
CONFIG_USB_GADGET_STORAGE_NUM_BUFFERS=2
# CONFIG_U_SERIAL_CONSOLE is not set

#
# USB Peripheral Controller
#
CONFIG_USB_LPC32XX=m
CONFIG_USB_FUSB300=m
# CONFIG_USB_GR_UDC is not set
# CONFIG_USB_R8A66597 is not set
CONFIG_USB_RENESAS_USBHS_UDC=m
CONFIG_USB_RENESAS_USB3=m
# CONFIG_USB_PXA27X is not set
CONFIG_USB_MV_UDC=m
CONFIG_USB_MV_U3D=m
# CONFIG_USB_SNP_UDC_PLAT is not set
# CONFIG_USB_M66592 is not set
# CONFIG_USB_BDC_UDC is not set
CONFIG_USB_NET2272=m
CONFIG_USB_NET2272_DMA=y
CONFIG_USB_GADGET_XILINX=m
CONFIG_USB_MAX3420_UDC=m
# CONFIG_USB_ASPEED_UDC is not set
CONFIG_USB_ASPEED_VHUB=m
CONFIG_USB_DUMMY_HCD=m
# end of USB Peripheral Controller

CONFIG_USB_LIBCOMPOSITE=m
CONFIG_USB_F_ACM=m
CONFIG_USB_F_SS_LB=m
CONFIG_USB_U_SERIAL=m
CONFIG_USB_U_ETHER=m
CONFIG_USB_F_SERIAL=m
CONFIG_USB_F_OBEX=m
CONFIG_USB_F_NCM=m
CONFIG_USB_F_ECM=m
CONFIG_USB_F_PHONET=m
CONFIG_USB_F_EEM=m
CONFIG_USB_F_SUBSET=m
CONFIG_USB_F_RNDIS=m
CONFIG_USB_F_MASS_STORAGE=m
CONFIG_USB_F_FS=m
CONFIG_USB_F_UVC=m
CONFIG_USB_F_HID=m
CONFIG_USB_F_PRINTER=m
CONFIG_USB_CONFIGFS=m
CONFIG_USB_CONFIGFS_SERIAL=y
# CONFIG_USB_CONFIGFS_ACM is not set
CONFIG_USB_CONFIGFS_OBEX=y
# CONFIG_USB_CONFIGFS_NCM is not set
CONFIG_USB_CONFIGFS_ECM=y
# CONFIG_USB_CONFIGFS_ECM_SUBSET is not set
CONFIG_USB_CONFIGFS_RNDIS=y
CONFIG_USB_CONFIGFS_EEM=y
# CONFIG_USB_CONFIGFS_PHONET is not set
# CONFIG_USB_CONFIGFS_MASS_STORAGE is not set
CONFIG_USB_CONFIGFS_F_LB_SS=y
CONFIG_USB_CONFIGFS_F_FS=y
# CONFIG_USB_CONFIGFS_F_HID is not set
CONFIG_USB_CONFIGFS_F_UVC=y
# CONFIG_USB_CONFIGFS_F_PRINTER is not set
# CONFIG_USB_CONFIGFS_F_TCM is not set

#
# USB Gadget precomposed configurations
#
# CONFIG_USB_ZERO is not set
CONFIG_USB_ETH=m
# CONFIG_USB_ETH_RNDIS is not set
# CONFIG_USB_ETH_EEM is not set
CONFIG_USB_G_NCM=m
CONFIG_USB_GADGETFS=m
# CONFIG_USB_FUNCTIONFS is not set
# CONFIG_USB_MASS_STORAGE is not set
# CONFIG_USB_GADGET_TARGET is not set
# CONFIG_USB_G_SERIAL is not set
CONFIG_USB_G_PRINTER=m
# CONFIG_USB_CDC_COMPOSITE is not set
CONFIG_USB_G_NOKIA=m
CONFIG_USB_G_ACM_MS=m
CONFIG_USB_G_MULTI=m
# CONFIG_USB_G_MULTI_RNDIS is not set
CONFIG_USB_G_MULTI_CDC=y
CONFIG_USB_G_HID=m
CONFIG_USB_G_DBGP=m
CONFIG_USB_G_DBGP_PRINTK=y
# CONFIG_USB_G_DBGP_SERIAL is not set
CONFIG_USB_G_WEBCAM=m
CONFIG_USB_RAW_GADGET=m
# end of USB Gadget precomposed configurations

CONFIG_TYPEC=m
# CONFIG_TYPEC_TCPM is not set
CONFIG_TYPEC_TPS6598X=m
CONFIG_TYPEC_ANX7411=m
CONFIG_TYPEC_RT1719=m
CONFIG_TYPEC_HD3SS3220=m
CONFIG_TYPEC_STUSB160X=m
CONFIG_TYPEC_QCOM_PMIC=m
# CONFIG_TYPEC_WUSB3801 is not set

#
# USB Type-C Multiplexer/DeMultiplexer Switch support
#
# CONFIG_TYPEC_MUX_FSA4480 is not set
# CONFIG_TYPEC_MUX_PI3USB30532 is not set
# end of USB Type-C Multiplexer/DeMultiplexer Switch support

#
# USB Type-C Alternate Mode drivers
#
# end of USB Type-C Alternate Mode drivers

CONFIG_USB_ROLE_SWITCH=y
# CONFIG_MMC is not set
CONFIG_SCSI_UFSHCD=y
CONFIG_SCSI_UFS_BSG=y
CONFIG_SCSI_UFS_HPB=y
# CONFIG_SCSI_UFSHCD_PCI is not set
CONFIG_SCSI_UFSHCD_PLATFORM=m
CONFIG_SCSI_UFS_CDNS_PLATFORM=m
CONFIG_SCSI_UFS_DWC_TC_PLATFORM=m
CONFIG_SCSI_UFS_HISI=m
# CONFIG_SCSI_UFS_RENESAS is not set
# CONFIG_SCSI_UFS_TI_J721E is not set
# CONFIG_SCSI_UFS_EXYNOS is not set
CONFIG_MEMSTICK=y
CONFIG_MEMSTICK_DEBUG=y

#
# MemoryStick drivers
#
# CONFIG_MEMSTICK_UNSAFE_RESUME is not set
# CONFIG_MSPRO_BLOCK is not set
# CONFIG_MS_BLOCK is not set

#
# MemoryStick Host Controller Drivers
#
CONFIG_MEMSTICK_TIFM_MS=m
# CONFIG_MEMSTICK_JMICRON_38X is not set
CONFIG_MEMSTICK_R592=y
CONFIG_MEMSTICK_REALTEK_PCI=m
# CONFIG_MEMSTICK_REALTEK_USB is not set
CONFIG_NEW_LEDS=y
CONFIG_LEDS_CLASS=y
# CONFIG_LEDS_CLASS_FLASH is not set
# CONFIG_LEDS_CLASS_MULTICOLOR is not set
# CONFIG_LEDS_BRIGHTNESS_HW_CHANGED is not set

#
# LED drivers
#
# CONFIG_LEDS_AN30259A is not set
CONFIG_LEDS_ARIEL=m
CONFIG_LEDS_AW2013=m
CONFIG_LEDS_BCM6328=m
CONFIG_LEDS_BCM6358=y
CONFIG_LEDS_CR0014114=m
CONFIG_LEDS_EL15203000=y
CONFIG_LEDS_LM3530=y
# CONFIG_LEDS_LM3532 is not set
# CONFIG_LEDS_LM3533 is not set
# CONFIG_LEDS_LM3642 is not set
CONFIG_LEDS_LM3692X=y
# CONFIG_LEDS_MT6323 is not set
CONFIG_LEDS_S3C24XX=m
CONFIG_LEDS_COBALT_QUBE=y
CONFIG_LEDS_COBALT_RAQ=y
CONFIG_LEDS_PCA9532=m
CONFIG_LEDS_PCA9532_GPIO=y
CONFIG_LEDS_GPIO=m
CONFIG_LEDS_LP3944=m
# CONFIG_LEDS_LP3952 is not set
# CONFIG_LEDS_LP50XX is not set
CONFIG_LEDS_LP55XX_COMMON=y
CONFIG_LEDS_LP5521=m
CONFIG_LEDS_LP5523=m
CONFIG_LEDS_LP5562=m
CONFIG_LEDS_LP8501=m
# CONFIG_LEDS_LP8788 is not set
CONFIG_LEDS_LP8860=m
CONFIG_LEDS_PCA955X=m
# CONFIG_LEDS_PCA955X_GPIO is not set
CONFIG_LEDS_PCA963X=y
CONFIG_LEDS_WM831X_STATUS=m
CONFIG_LEDS_DA9052=y
CONFIG_LEDS_DAC124S085=m
CONFIG_LEDS_PWM=m
CONFIG_LEDS_REGULATOR=y
CONFIG_LEDS_BD2802=m
# CONFIG_LEDS_LT3593 is not set
# CONFIG_LEDS_MC13783 is not set
CONFIG_LEDS_NS2=m
CONFIG_LEDS_NETXBIG=m
CONFIG_LEDS_ASIC3=y
CONFIG_LEDS_TCA6507=m
CONFIG_LEDS_TLC591XX=m
CONFIG_LEDS_MAX77650=y
CONFIG_LEDS_LM355x=y
CONFIG_LEDS_OT200=y
# CONFIG_LEDS_MENF21BMC is not set
CONFIG_LEDS_IS31FL319X=y
# CONFIG_LEDS_IS31FL32XX is not set
CONFIG_LEDS_SC27XX_BLTC=m

#
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
#
# CONFIG_LEDS_BLINKM is not set
# CONFIG_LEDS_SYSCON is not set
# CONFIG_LEDS_PM8058 is not set
CONFIG_LEDS_MLXREG=m
CONFIG_LEDS_USER=m
CONFIG_LEDS_SPI_BYTE=y
CONFIG_LEDS_TI_LMU_COMMON=m
CONFIG_LEDS_LM3697=m
# CONFIG_LEDS_LM36274 is not set
# CONFIG_LEDS_TPS6105X is not set
CONFIG_LEDS_IP30=m
CONFIG_LEDS_ACER_A500=y
CONFIG_LEDS_BCM63138=y
CONFIG_LEDS_LGM=m

#
# Flash and Torch LED drivers
#

#
# RGB LED drivers
#

#
# LED Triggers
#
CONFIG_LEDS_TRIGGERS=y
CONFIG_LEDS_TRIGGER_TIMER=y
CONFIG_LEDS_TRIGGER_ONESHOT=y
CONFIG_LEDS_TRIGGER_DISK=y
CONFIG_LEDS_TRIGGER_MTD=y
CONFIG_LEDS_TRIGGER_HEARTBEAT=m
CONFIG_LEDS_TRIGGER_BACKLIGHT=y
# CONFIG_LEDS_TRIGGER_CPU is not set
CONFIG_LEDS_TRIGGER_ACTIVITY=y
# CONFIG_LEDS_TRIGGER_GPIO is not set
CONFIG_LEDS_TRIGGER_DEFAULT_ON=m

#
# iptables trigger is under Netfilter config (LED target)
#
# CONFIG_LEDS_TRIGGER_TRANSIENT is not set
CONFIG_LEDS_TRIGGER_CAMERA=y
CONFIG_LEDS_TRIGGER_PANIC=y
# CONFIG_LEDS_TRIGGER_NETDEV is not set
CONFIG_LEDS_TRIGGER_PATTERN=y
CONFIG_LEDS_TRIGGER_AUDIO=y
CONFIG_LEDS_TRIGGER_TTY=m

#
# Simple LED drivers
#
# CONFIG_ACCESSIBILITY is not set
CONFIG_RTC_LIB=y
CONFIG_RTC_CLASS=y
CONFIG_RTC_HCTOSYS=y
CONFIG_RTC_HCTOSYS_DEVICE="rtc0"
CONFIG_RTC_SYSTOHC=y
CONFIG_RTC_SYSTOHC_DEVICE="rtc0"
CONFIG_RTC_DEBUG=y
# CONFIG_RTC_LIB_KUNIT_TEST is not set
# CONFIG_RTC_NVMEM is not set

#
# RTC interfaces
#
CONFIG_RTC_INTF_SYSFS=y
# CONFIG_RTC_INTF_PROC is not set
CONFIG_RTC_INTF_DEV=y
CONFIG_RTC_INTF_DEV_UIE_EMUL=y
# CONFIG_RTC_DRV_TEST is not set

#
# I2C RTC drivers
#
CONFIG_RTC_DRV_88PM80X=m
# CONFIG_RTC_DRV_ABB5ZES3 is not set
# CONFIG_RTC_DRV_ABEOZ9 is not set
# CONFIG_RTC_DRV_ABX80X is not set
# CONFIG_RTC_DRV_BRCMSTB is not set
CONFIG_RTC_DRV_DS1307=y
CONFIG_RTC_DRV_DS1307_CENTURY=y
CONFIG_RTC_DRV_DS1374=m
# CONFIG_RTC_DRV_DS1672 is not set
# CONFIG_RTC_DRV_HYM8563 is not set
CONFIG_RTC_DRV_LP8788=m
CONFIG_RTC_DRV_MAX6900=y
# CONFIG_RTC_DRV_MAX8907 is not set
CONFIG_RTC_DRV_MAX77686=m
# CONFIG_RTC_DRV_NCT3018Y is not set
CONFIG_RTC_DRV_RS5C372=m
CONFIG_RTC_DRV_ISL1208=y
# CONFIG_RTC_DRV_ISL12022 is not set
CONFIG_RTC_DRV_ISL12026=m
# CONFIG_RTC_DRV_X1205 is not set
CONFIG_RTC_DRV_PCF8523=m
# CONFIG_RTC_DRV_PCF85063 is not set
CONFIG_RTC_DRV_PCF85363=y
# CONFIG_RTC_DRV_PCF8563 is not set
CONFIG_RTC_DRV_PCF8583=m
CONFIG_RTC_DRV_M41T80=m
CONFIG_RTC_DRV_M41T80_WDT=y
CONFIG_RTC_DRV_BQ32K=y
# CONFIG_RTC_DRV_TWL4030 is not set
CONFIG_RTC_DRV_PALMAS=y
# CONFIG_RTC_DRV_RC5T583 is not set
CONFIG_RTC_DRV_S35390A=m
CONFIG_RTC_DRV_FM3130=m
# CONFIG_RTC_DRV_RX8010 is not set
# CONFIG_RTC_DRV_RX8581 is not set
CONFIG_RTC_DRV_RX8025=m
# CONFIG_RTC_DRV_EM3027 is not set
CONFIG_RTC_DRV_RV3028=m
# CONFIG_RTC_DRV_RV3032 is not set
# CONFIG_RTC_DRV_RV8803 is not set
CONFIG_RTC_DRV_S5M=y
# CONFIG_RTC_DRV_SD3078 is not set

#
# SPI RTC drivers
#
CONFIG_RTC_DRV_M41T93=m
CONFIG_RTC_DRV_M41T94=m
CONFIG_RTC_DRV_DS1302=m
CONFIG_RTC_DRV_DS1305=m
CONFIG_RTC_DRV_DS1343=y
CONFIG_RTC_DRV_DS1347=y
CONFIG_RTC_DRV_DS1390=y
# CONFIG_RTC_DRV_MAX6916 is not set
CONFIG_RTC_DRV_R9701=m
# CONFIG_RTC_DRV_RX4581 is not set
CONFIG_RTC_DRV_RS5C348=y
CONFIG_RTC_DRV_MAX6902=m
CONFIG_RTC_DRV_PCF2123=y
# CONFIG_RTC_DRV_MCP795 is not set
CONFIG_RTC_I2C_AND_SPI=y

#
# SPI and I2C RTC drivers
#
# CONFIG_RTC_DRV_DS3232 is not set
CONFIG_RTC_DRV_PCF2127=y
CONFIG_RTC_DRV_RV3029C2=y
# CONFIG_RTC_DRV_RX6110 is not set

#
# Platform RTC drivers
#
CONFIG_RTC_DRV_DS1286=m
CONFIG_RTC_DRV_DS1511=y
CONFIG_RTC_DRV_DS1553=m
CONFIG_RTC_DRV_DS1685_FAMILY=y
# CONFIG_RTC_DRV_DS1685 is not set
# CONFIG_RTC_DRV_DS1689 is not set
CONFIG_RTC_DRV_DS17285=y
# CONFIG_RTC_DRV_DS17485 is not set
# CONFIG_RTC_DRV_DS17885 is not set
CONFIG_RTC_DRV_DS1742=m
CONFIG_RTC_DRV_DS2404=y
CONFIG_RTC_DRV_DA9052=y
CONFIG_RTC_DRV_DA9055=m
CONFIG_RTC_DRV_DA9063=y
CONFIG_RTC_DRV_STK17TA8=y
CONFIG_RTC_DRV_M48T86=m
# CONFIG_RTC_DRV_M48T35 is not set
CONFIG_RTC_DRV_M48T59=y
CONFIG_RTC_DRV_MSM6242=y
CONFIG_RTC_DRV_BQ4802=y
# CONFIG_RTC_DRV_RP5C01 is not set
CONFIG_RTC_DRV_V3020=y
CONFIG_RTC_DRV_GAMECUBE=m
CONFIG_RTC_DRV_WM831X=y
CONFIG_RTC_DRV_SC27XX=y
CONFIG_RTC_DRV_SPEAR=m
# CONFIG_RTC_DRV_PCF50633 is not set
# CONFIG_RTC_DRV_ZYNQMP is not set

#
# on-CPU RTC drivers
#
CONFIG_RTC_DRV_ASM9260=y
CONFIG_RTC_DRV_DIGICOLOR=m
CONFIG_RTC_DRV_FSL_FTM_ALARM=y
# CONFIG_RTC_DRV_MESON is not set
# CONFIG_RTC_DRV_MESON_VRTC is not set
CONFIG_RTC_DRV_OMAP=m
# CONFIG_RTC_DRV_S3C is not set
CONFIG_RTC_DRV_EP93XX=y
CONFIG_RTC_DRV_AT91RM9200=y
CONFIG_RTC_DRV_AT91SAM9=y
CONFIG_RTC_DRV_RZN1=y
CONFIG_RTC_DRV_GENERIC=m
CONFIG_RTC_DRV_VT8500=m
# CONFIG_RTC_DRV_SUN6I is not set
# CONFIG_RTC_DRV_SUNXI is not set
CONFIG_RTC_DRV_MV=y
CONFIG_RTC_DRV_ARMADA38X=y
# CONFIG_RTC_DRV_CADENCE is not set
CONFIG_RTC_DRV_FTRTC010=y
CONFIG_RTC_DRV_STMP=m
CONFIG_RTC_DRV_MC13XXX=m
CONFIG_RTC_DRV_JZ4740=y
CONFIG_RTC_DRV_LPC24XX=m
CONFIG_RTC_DRV_LPC32XX=m
CONFIG_RTC_DRV_PM8XXX=m
CONFIG_RTC_DRV_TEGRA=m
CONFIG_RTC_DRV_MXC=m
CONFIG_RTC_DRV_MXC_V2=m
CONFIG_RTC_DRV_SNVS=m
CONFIG_RTC_DRV_MOXART=y
CONFIG_RTC_DRV_MT2712=y
CONFIG_RTC_DRV_MT6397=y
CONFIG_RTC_DRV_MT7622=y
CONFIG_RTC_DRV_XGENE=m
CONFIG_RTC_DRV_R7301=m
CONFIG_RTC_DRV_STM32=m
CONFIG_RTC_DRV_RTD119X=y
CONFIG_RTC_DRV_ASPEED=m
CONFIG_RTC_DRV_TI_K3=m

#
# HID Sensor RTC drivers
#
# CONFIG_RTC_DRV_HID_SENSOR_TIME is not set
CONFIG_RTC_DRV_GOLDFISH=y
CONFIG_RTC_DRV_MSC313=y
# CONFIG_DMADEVICES is not set

#
# DMABUF options
#
# CONFIG_SYNC_FILE is not set
# CONFIG_UDMABUF is not set
CONFIG_DMABUF_MOVE_NOTIFY=y
# CONFIG_DMABUF_DEBUG is not set
CONFIG_DMABUF_SELFTESTS=m
# CONFIG_DMABUF_HEAPS is not set
CONFIG_DMABUF_SYSFS_STATS=y
# end of DMABUF options

CONFIG_AUXDISPLAY=y
CONFIG_CHARLCD=y
CONFIG_LINEDISP=y
CONFIG_HD44780_COMMON=m
# CONFIG_HD44780 is not set
CONFIG_IMG_ASCII_LCD=y
# CONFIG_LCD2S is not set
# CONFIG_PANEL_CHANGE_MESSAGE is not set
CONFIG_CHARLCD_BL_OFF=y
# CONFIG_CHARLCD_BL_ON is not set
# CONFIG_CHARLCD_BL_FLASH is not set
CONFIG_UIO=y
CONFIG_UIO_CIF=y
CONFIG_UIO_PDRV_GENIRQ=y
CONFIG_UIO_DMEM_GENIRQ=m
CONFIG_UIO_AEC=y
# CONFIG_UIO_SERCOS3 is not set
# CONFIG_UIO_PCI_GENERIC is not set
CONFIG_UIO_NETX=m
CONFIG_UIO_PRUSS=y
CONFIG_UIO_MF624=m
# CONFIG_UIO_DFL is not set
CONFIG_VFIO=m
# CONFIG_VFIO_CONTAINER is not set
CONFIG_VFIO_VIRQFD=y
CONFIG_VFIO_PCI_CORE=m
CONFIG_VFIO_PCI_MMAP=y
CONFIG_VFIO_PCI_INTX=y
CONFIG_VFIO_PCI=m
CONFIG_VFIO_PLATFORM=m
CONFIG_VFIO_AMBA=m
# CONFIG_VFIO_PLATFORM_CALXEDAXGMAC_RESET is not set
CONFIG_VFIO_PLATFORM_AMDXGBE_RESET=m
CONFIG_VFIO_PLATFORM_BCMFLEXRM_RESET=m
CONFIG_VFIO_MDEV=m
CONFIG_IRQ_BYPASS_MANAGER=m
# CONFIG_VIRT_DRIVERS is not set
CONFIG_VIRTIO_ANCHOR=y
CONFIG_VIRTIO=y
CONFIG_VIRTIO_PCI_LIB=m
CONFIG_VIRTIO_PCI_LIB_LEGACY=m
CONFIG_VIRTIO_MENU=y
CONFIG_VIRTIO_PCI=m
CONFIG_VIRTIO_PCI_LEGACY=y
CONFIG_VIRTIO_VDPA=m
CONFIG_VIRTIO_BALLOON=y
CONFIG_VIRTIO_INPUT=y
CONFIG_VIRTIO_MMIO=m
# CONFIG_VIRTIO_MMIO_CMDLINE_DEVICES is not set
CONFIG_VDPA=m
# CONFIG_VDPA_USER is not set
# CONFIG_IFCVF is not set
CONFIG_VP_VDPA=m
CONFIG_VHOST_IOTLB=y
CONFIG_VHOST=y
CONFIG_VHOST_MENU=y
CONFIG_VHOST_NET=y
CONFIG_VHOST_SCSI=m
CONFIG_VHOST_VSOCK=m
# CONFIG_VHOST_VDPA is not set
CONFIG_VHOST_CROSS_ENDIAN_LEGACY=y

#
# Microsoft Hyper-V guest support
#
# end of Microsoft Hyper-V guest support

CONFIG_GREYBUS=m
# CONFIG_GREYBUS_ES2 is not set
# CONFIG_COMEDI is not set
CONFIG_STAGING=y
CONFIG_RTS5208=m
CONFIG_OCTEON_ETHERNET=y

#
# IIO staging drivers
#

#
# Accelerometers
#
CONFIG_ADIS16203=m
CONFIG_ADIS16240=y
# end of Accelerometers

#
# Analog to digital converters
#
CONFIG_AD7816=m
# end of Analog to digital converters

#
# Analog digital bi-direction converters
#
CONFIG_ADT7316=m
# CONFIG_ADT7316_SPI is not set
# CONFIG_ADT7316_I2C is not set
# end of Analog digital bi-direction converters

#
# Direct Digital Synthesis
#
CONFIG_AD9832=y
CONFIG_AD9834=m
# end of Direct Digital Synthesis

#
# Network Analyzer, Impedance Converters
#
CONFIG_AD5933=m
# end of Network Analyzer, Impedance Converters

#
# Active energy metering IC
#
CONFIG_ADE7854=y
CONFIG_ADE7854_I2C=m
CONFIG_ADE7854_SPI=y
# end of Active energy metering IC

#
# Resolver to digital converters
#
CONFIG_AD2S1210=y
# end of Resolver to digital converters
# end of IIO staging drivers

CONFIG_USB_EMXX=m
CONFIG_STAGING_MEDIA=y
CONFIG_VIDEO_IMX_MEDIA=y

#
# i.MX5/6/7/8 Media Sub devices
#
# end of i.MX5/6/7/8 Media Sub devices

CONFIG_VIDEO_IMX8MQ_MIPI_CSI2=m
CONFIG_VIDEO_MAX96712=m
CONFIG_VIDEO_MESON_VDEC=y
CONFIG_VIDEO_OMAP4=y
CONFIG_VIDEO_ROCKCHIP_VDEC=y
# CONFIG_VIDEO_SUNXI is not set
CONFIG_STAGING_MEDIA_DEPRECATED=y

#
# Atmel media platform drivers
#
CONFIG_VIDEO_CPIA2=y
CONFIG_VIDEO_SAA7146=y
CONFIG_VIDEO_SAA7146_VV=y
# CONFIG_DVB_AV7110 is not set
CONFIG_VIDEO_HEXIUM_GEMINI=y
CONFIG_VIDEO_HEXIUM_ORION=m
CONFIG_VIDEO_MXB=m
CONFIG_DVB_BUDGET_CORE=m
CONFIG_DVB_BUDGET=m
# CONFIG_DVB_BUDGET_CI is not set
CONFIG_DVB_BUDGET_AV=m
# CONFIG_VIDEO_TM6000 is not set
# CONFIG_USB_ZR364XX is not set
# CONFIG_LTE_GDM724X is not set
# CONFIG_GREYBUS_BOOTROM is not set
CONFIG_GREYBUS_FIRMWARE=m
# CONFIG_GREYBUS_HID is not set
# CONFIG_GREYBUS_LIGHT is not set
# CONFIG_GREYBUS_LOG is not set
CONFIG_GREYBUS_LOOPBACK=m
CONFIG_GREYBUS_POWER=m
# CONFIG_GREYBUS_RAW is not set
# CONFIG_GREYBUS_VIBRATOR is not set
# CONFIG_GREYBUS_BRIDGED_PHY is not set
CONFIG_GREYBUS_ARCHE=m
CONFIG_BCM_VIDEOCORE=m
CONFIG_BCM2835_VCHIQ=m
# CONFIG_VCHIQ_CDEV is not set
# CONFIG_VIDEO_BCM2835 is not set
CONFIG_BCM2835_VCHIQ_MMAL=m
# CONFIG_PI433 is not set
# CONFIG_XIL_AXIS_FIFO is not set
# CONFIG_FIELDBUS_DEV is not set
CONFIG_QLGE=y
# CONFIG_VME_BUS is not set
# CONFIG_GOLDFISH is not set
CONFIG_CHROME_PLATFORMS=y
# CONFIG_CROS_EC is not set
CONFIG_MELLANOX_PLATFORM=y
CONFIG_MLXREG_HOTPLUG=m
# CONFIG_MLXREG_IO is not set
# CONFIG_MLXREG_LC is not set
CONFIG_NVSW_SN2201=m
# CONFIG_OLPC_XO175 is not set
CONFIG_SURFACE_PLATFORMS=y
CONFIG_HAVE_CLK=y
CONFIG_HAVE_CLK_PREPARE=y
CONFIG_COMMON_CLK=y
# CONFIG_COMMON_CLK_WM831X is not set

#
# Clock driver for ARM Reference designs
#
CONFIG_CLK_ICST=y
CONFIG_CLK_SP810=y
# end of Clock driver for ARM Reference designs

CONFIG_CLK_HSDK=y
CONFIG_LMK04832=y
# CONFIG_COMMON_CLK_APPLE_NCO is not set
# CONFIG_COMMON_CLK_MAX77686 is not set
# CONFIG_COMMON_CLK_MAX9485 is not set
CONFIG_COMMON_CLK_HI655X=m
CONFIG_COMMON_CLK_SCMI=m
CONFIG_COMMON_CLK_SCPI=y
CONFIG_COMMON_CLK_SI5341=y
# CONFIG_COMMON_CLK_SI5351 is not set
# CONFIG_COMMON_CLK_SI514 is not set
CONFIG_COMMON_CLK_SI544=y
CONFIG_COMMON_CLK_SI570=y
# CONFIG_COMMON_CLK_BM1880 is not set
CONFIG_COMMON_CLK_CDCE706=m
CONFIG_COMMON_CLK_TPS68470=y
# CONFIG_COMMON_CLK_CDCE925 is not set
# CONFIG_COMMON_CLK_CS2000_CP is not set
CONFIG_COMMON_CLK_EN7523=y
CONFIG_COMMON_CLK_FSL_FLEXSPI=m
CONFIG_COMMON_CLK_FSL_SAI=y
CONFIG_COMMON_CLK_GEMINI=y
CONFIG_COMMON_CLK_LAN966X=y
CONFIG_COMMON_CLK_ASPEED=y
# CONFIG_COMMON_CLK_S2MPS11 is not set
CONFIG_CLK_TWL6040=y
CONFIG_COMMON_CLK_AXI_CLKGEN=y
CONFIG_CLK_QORIQ=y
CONFIG_CLK_LS1028A_PLLDIG=y
# CONFIG_COMMON_CLK_XGENE is not set
CONFIG_COMMON_CLK_PALMAS=m
# CONFIG_COMMON_CLK_PWM is not set
# CONFIG_COMMON_CLK_OXNAS is not set
# CONFIG_COMMON_CLK_RS9_PCIE is not set
CONFIG_COMMON_CLK_VC5=y
CONFIG_COMMON_CLK_VC7=m
# CONFIG_COMMON_CLK_MMP2_AUDIO is not set
CONFIG_COMMON_CLK_FIXED_MMIO=y
CONFIG_CLK_ACTIONS=y
# CONFIG_CLK_OWL_S500 is not set
# CONFIG_CLK_OWL_S700 is not set
CONFIG_CLK_OWL_S900=y
# CONFIG_CLK_BAIKAL_T1 is not set
CONFIG_CLK_BCM2711_DVP=m
# CONFIG_CLK_BCM2835 is not set
# CONFIG_CLK_BCM_63XX is not set
# CONFIG_CLK_BCM_63XX_GATE is not set
CONFIG_CLK_BCM_KONA=y
CONFIG_COMMON_CLK_IPROC=y
CONFIG_CLK_BCM_CYGNUS=y
# CONFIG_CLK_BCM_HR2 is not set
# CONFIG_CLK_BCM_NSP is not set
CONFIG_CLK_BCM_NS2=y
# CONFIG_CLK_BCM_SR is not set
CONFIG_CLK_RASPBERRYPI=m
CONFIG_COMMON_CLK_HI3516CV300=y
# CONFIG_COMMON_CLK_HI3519 is not set
CONFIG_COMMON_CLK_HI3559A=y
CONFIG_COMMON_CLK_HI3660=y
# CONFIG_COMMON_CLK_HI3670 is not set
CONFIG_COMMON_CLK_HI3798CV200=m
# CONFIG_COMMON_CLK_HI6220 is not set
CONFIG_RESET_HISI=y
# CONFIG_COMMON_CLK_BOSTON is not set
CONFIG_MXC_CLK=y
CONFIG_CLK_IMX8MM=y
CONFIG_CLK_IMX8MN=y
CONFIG_CLK_IMX8MP=m
CONFIG_CLK_IMX8MQ=y
CONFIG_CLK_IMX8ULP=m
# CONFIG_CLK_IMX93 is not set

#
# Ingenic SoCs drivers
#
CONFIG_INGENIC_CGU_COMMON=y
# CONFIG_INGENIC_CGU_JZ4740 is not set
CONFIG_INGENIC_CGU_JZ4755=y
# CONFIG_INGENIC_CGU_JZ4725B is not set
CONFIG_INGENIC_CGU_JZ4760=y
# CONFIG_INGENIC_CGU_JZ4770 is not set
# CONFIG_INGENIC_CGU_JZ4780 is not set
# CONFIG_INGENIC_CGU_X1000 is not set
# CONFIG_INGENIC_CGU_X1830 is not set
# CONFIG_INGENIC_TCU_CLK is not set
# end of Ingenic SoCs drivers

CONFIG_COMMON_CLK_KEYSTONE=m
CONFIG_TI_SYSCON_CLK=m

#
# Clock driver for MediaTek SoC
#
CONFIG_COMMON_CLK_MEDIATEK=y
# CONFIG_COMMON_CLK_MEDIATEK_FHCTL is not set
CONFIG_COMMON_CLK_MT2701=y
# CONFIG_COMMON_CLK_MT2701_MMSYS is not set
# CONFIG_COMMON_CLK_MT2701_IMGSYS is not set
# CONFIG_COMMON_CLK_MT2701_VDECSYS is not set
CONFIG_COMMON_CLK_MT2701_HIFSYS=y
CONFIG_COMMON_CLK_MT2701_ETHSYS=y
# CONFIG_COMMON_CLK_MT2701_BDPSYS is not set
# CONFIG_COMMON_CLK_MT2701_AUDSYS is not set
# CONFIG_COMMON_CLK_MT2701_G3DSYS is not set
CONFIG_COMMON_CLK_MT2712=y
CONFIG_COMMON_CLK_MT2712_BDPSYS=y
# CONFIG_COMMON_CLK_MT2712_IMGSYS is not set
CONFIG_COMMON_CLK_MT2712_JPGDECSYS=y
# CONFIG_COMMON_CLK_MT2712_MFGCFG is not set
# CONFIG_COMMON_CLK_MT2712_MMSYS is not set
# CONFIG_COMMON_CLK_MT2712_VDECSYS is not set
CONFIG_COMMON_CLK_MT2712_VENCSYS=y
CONFIG_COMMON_CLK_MT6765=y
CONFIG_COMMON_CLK_MT6765_AUDIOSYS=y
# CONFIG_COMMON_CLK_MT6765_CAMSYS is not set
CONFIG_COMMON_CLK_MT6765_GCESYS=y
# CONFIG_COMMON_CLK_MT6765_MMSYS is not set
CONFIG_COMMON_CLK_MT6765_IMGSYS=y
# CONFIG_COMMON_CLK_MT6765_VCODECSYS is not set
# CONFIG_COMMON_CLK_MT6765_MFGSYS is not set
CONFIG_COMMON_CLK_MT6765_MIPI0ASYS=y
# CONFIG_COMMON_CLK_MT6765_MIPI0BSYS is not set
# CONFIG_COMMON_CLK_MT6765_MIPI1ASYS is not set
# CONFIG_COMMON_CLK_MT6765_MIPI1BSYS is not set
CONFIG_COMMON_CLK_MT6765_MIPI2ASYS=y
CONFIG_COMMON_CLK_MT6765_MIPI2BSYS=y
CONFIG_COMMON_CLK_MT6779=m
# CONFIG_COMMON_CLK_MT6779_MMSYS is not set
CONFIG_COMMON_CLK_MT6779_IMGSYS=m
CONFIG_COMMON_CLK_MT6779_IPESYS=m
CONFIG_COMMON_CLK_MT6779_CAMSYS=m
# CONFIG_COMMON_CLK_MT6779_VDECSYS is not set
# CONFIG_COMMON_CLK_MT6779_VENCSYS is not set
# CONFIG_COMMON_CLK_MT6779_MFGCFG is not set
CONFIG_COMMON_CLK_MT6779_AUDSYS=m
CONFIG_COMMON_CLK_MT6795=y
CONFIG_COMMON_CLK_MT6795_MFGCFG=y
CONFIG_COMMON_CLK_MT6795_MMSYS=y
CONFIG_COMMON_CLK_MT6795_VDECSYS=m
CONFIG_COMMON_CLK_MT6795_VENCSYS=y
CONFIG_COMMON_CLK_MT6797=y
# CONFIG_COMMON_CLK_MT6797_MMSYS is not set
# CONFIG_COMMON_CLK_MT6797_IMGSYS is not set
# CONFIG_COMMON_CLK_MT6797_VDECSYS is not set
# CONFIG_COMMON_CLK_MT6797_VENCSYS is not set
# CONFIG_COMMON_CLK_MT7622 is not set
# CONFIG_COMMON_CLK_MT7629 is not set
CONFIG_COMMON_CLK_MT7986=y
# CONFIG_COMMON_CLK_MT7986_ETHSYS is not set
# CONFIG_COMMON_CLK_MT8135 is not set
# CONFIG_COMMON_CLK_MT8167 is not set
CONFIG_COMMON_CLK_MT8173=y
# CONFIG_COMMON_CLK_MT8173_MMSYS is not set
CONFIG_COMMON_CLK_MT8183=y
# CONFIG_COMMON_CLK_MT8183_AUDIOSYS is not set
# CONFIG_COMMON_CLK_MT8183_CAMSYS is not set
CONFIG_COMMON_CLK_MT8183_IMGSYS=y
# CONFIG_COMMON_CLK_MT8183_IPU_CORE0 is not set
CONFIG_COMMON_CLK_MT8183_IPU_CORE1=y
# CONFIG_COMMON_CLK_MT8183_IPU_ADL is not set
# CONFIG_COMMON_CLK_MT8183_IPU_CONN is not set
CONFIG_COMMON_CLK_MT8183_MFGCFG=y
# CONFIG_COMMON_CLK_MT8183_MMSYS is not set
CONFIG_COMMON_CLK_MT8183_VDECSYS=y
# CONFIG_COMMON_CLK_MT8183_VENCSYS is not set
# CONFIG_COMMON_CLK_MT8186 is not set
CONFIG_COMMON_CLK_MT8192=y
# CONFIG_COMMON_CLK_MT8192_AUDSYS is not set
# CONFIG_COMMON_CLK_MT8192_CAMSYS is not set
CONFIG_COMMON_CLK_MT8192_IMGSYS=y
# CONFIG_COMMON_CLK_MT8192_IMP_IIC_WRAP is not set
CONFIG_COMMON_CLK_MT8192_IPESYS=y
CONFIG_COMMON_CLK_MT8192_MDPSYS=y
# CONFIG_COMMON_CLK_MT8192_MFGCFG is not set
# CONFIG_COMMON_CLK_MT8192_MMSYS is not set
CONFIG_COMMON_CLK_MT8192_MSDC=y
CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
# CONFIG_COMMON_CLK_MT8192_VDECSYS is not set
CONFIG_COMMON_CLK_MT8192_VENCSYS=y
# CONFIG_COMMON_CLK_MT8195 is not set
CONFIG_COMMON_CLK_MT8365=y
# CONFIG_COMMON_CLK_MT8365_APU is not set
CONFIG_COMMON_CLK_MT8365_CAM=y
CONFIG_COMMON_CLK_MT8365_MFG=y
CONFIG_COMMON_CLK_MT8365_MMSYS=m
CONFIG_COMMON_CLK_MT8365_VDEC=m
CONFIG_COMMON_CLK_MT8365_VENC=y
# CONFIG_COMMON_CLK_MT8516 is not set
# end of Clock driver for MediaTek SoC

#
# Clock support for Amlogic platforms
#
# end of Clock support for Amlogic platforms

# CONFIG_MSTAR_MSC313_CPUPLL is not set
CONFIG_MSTAR_MSC313_MPLL=y
# CONFIG_MCHP_CLK_MPFS is not set
# CONFIG_COMMON_CLK_PISTACHIO is not set
CONFIG_QCOM_GDSC=y
CONFIG_COMMON_CLK_QCOM=m
CONFIG_QCOM_A53PLL=m
CONFIG_QCOM_A7PLL=m
CONFIG_QCOM_CLK_APCS_MSM8916=m
# CONFIG_QCOM_CLK_APCS_SDX55 is not set
# CONFIG_QCOM_CLK_SMD_RPM is not set
CONFIG_QCOM_CLK_RPMH=m
# CONFIG_APQ_GCC_8084 is not set
# CONFIG_APQ_MMCC_8084 is not set
# CONFIG_IPQ_APSS_PLL is not set
# CONFIG_IPQ_APSS_6018 is not set
# CONFIG_IPQ_GCC_4019 is not set
CONFIG_IPQ_GCC_6018=m
CONFIG_IPQ_GCC_806X=m
CONFIG_IPQ_LCC_806X=m
CONFIG_IPQ_GCC_8074=m
CONFIG_MSM_GCC_8660=m
CONFIG_MSM_GCC_8909=m
CONFIG_MSM_GCC_8916=m
CONFIG_MSM_GCC_8939=m
CONFIG_MSM_GCC_8960=m
# CONFIG_MSM_LCC_8960 is not set
# CONFIG_MDM_GCC_9607 is not set
CONFIG_MDM_GCC_9615=m
CONFIG_MDM_LCC_9615=m
# CONFIG_MSM_MMCC_8960 is not set
CONFIG_MSM_GCC_8953=m
CONFIG_MSM_GCC_8974=m
CONFIG_MSM_MMCC_8974=m
CONFIG_MSM_GCC_8976=m
# CONFIG_MSM_MMCC_8994 is not set
CONFIG_MSM_GCC_8994=m
CONFIG_MSM_GCC_8996=m
CONFIG_MSM_MMCC_8996=m
CONFIG_MSM_GCC_8998=m
CONFIG_MSM_GPUCC_8998=m
CONFIG_MSM_MMCC_8998=m
CONFIG_QCM_GCC_2290=m
CONFIG_QCM_DISPCC_2290=m
CONFIG_QCS_GCC_404=m
# CONFIG_SC_CAMCC_7180 is not set
# CONFIG_SC_CAMCC_7280 is not set
CONFIG_SC_DISPCC_7180=m
CONFIG_SC_DISPCC_7280=m
# CONFIG_SC_DISPCC_8280XP is not set
CONFIG_SC_GCC_7180=m
CONFIG_SC_GCC_7280=m
CONFIG_SC_GCC_8180X=m
CONFIG_SC_GCC_8280XP=m
CONFIG_SC_GPUCC_7180=m
# CONFIG_SC_GPUCC_7280 is not set
CONFIG_SC_GPUCC_8280XP=m
# CONFIG_SC_LPASSCC_7280 is not set
CONFIG_SC_LPASS_CORECC_7180=m
CONFIG_SC_LPASS_CORECC_7280=m
CONFIG_SC_MSS_7180=m
CONFIG_SC_VIDEOCC_7180=m
CONFIG_SC_VIDEOCC_7280=m
CONFIG_SDM_CAMCC_845=m
CONFIG_SDM_GCC_660=m
CONFIG_SDM_MMCC_660=m
# CONFIG_SDM_GPUCC_660 is not set
# CONFIG_QCS_TURING_404 is not set
# CONFIG_QCS_Q6SSTOP_404 is not set
CONFIG_SDM_GCC_845=m
CONFIG_SDM_GPUCC_845=m
CONFIG_SDM_VIDEOCC_845=m
# CONFIG_SDM_DISPCC_845 is not set
# CONFIG_SDM_LPASSCC_845 is not set
CONFIG_SDX_GCC_55=m
# CONFIG_SDX_GCC_65 is not set
# CONFIG_SM_CAMCC_8250 is not set
CONFIG_SM_CAMCC_8450=m
CONFIG_SM_DISPCC_6125=m
# CONFIG_SM_DISPCC_8250 is not set
# CONFIG_SM_DISPCC_6350 is not set
CONFIG_SM_DISPCC_6375=m
CONFIG_SM_DISPCC_8450=m
# CONFIG_SM_GCC_6115 is not set
CONFIG_SM_GCC_6125=m
CONFIG_SM_GCC_6350=m
CONFIG_SM_GCC_6375=m
CONFIG_SM_GCC_8150=m
CONFIG_SM_GCC_8250=m
CONFIG_SM_GCC_8350=m
CONFIG_SM_GCC_8450=m
# CONFIG_SM_GCC_8550 is not set
CONFIG_SM_GPUCC_6350=m
CONFIG_SM_GPUCC_8150=m
CONFIG_SM_GPUCC_8250=m
# CONFIG_SM_GPUCC_8350 is not set
# CONFIG_SM_VIDEOCC_8150 is not set
CONFIG_SM_VIDEOCC_8250=m
CONFIG_SPMI_PMIC_CLKDIV=m
CONFIG_QCOM_HFPLL=m
CONFIG_KPSS_XCC=m
CONFIG_CLK_GFM_LPASS_SM8250=m
CONFIG_CLK_MT7621=y
# CONFIG_CLK_RENESAS is not set
CONFIG_COMMON_CLK_SAMSUNG=y
CONFIG_S3C64XX_COMMON_CLK=y
CONFIG_S5PV210_COMMON_CLK=y
# CONFIG_EXYNOS_3250_COMMON_CLK is not set
CONFIG_EXYNOS_4_COMMON_CLK=y
CONFIG_EXYNOS_5250_COMMON_CLK=y
CONFIG_EXYNOS_5260_COMMON_CLK=y
# CONFIG_EXYNOS_5410_COMMON_CLK is not set
# CONFIG_EXYNOS_5420_COMMON_CLK is not set
# CONFIG_EXYNOS_ARM64_COMMON_CLK is not set
CONFIG_EXYNOS_AUDSS_CLK_CON=y
CONFIG_EXYNOS_CLKOUT=y
CONFIG_S3C2410_COMMON_CLK=y
CONFIG_S3C2412_COMMON_CLK=y
# CONFIG_S3C2443_COMMON_CLK is not set
# CONFIG_CLK_SIFIVE is not set
CONFIG_CLK_INTEL_SOCFPGA=y
CONFIG_CLK_INTEL_SOCFPGA32=y
CONFIG_CLK_INTEL_SOCFPGA64=y
# CONFIG_SPRD_COMMON_CLK is not set
CONFIG_CLK_STARFIVE_JH7100=y
CONFIG_CLK_STARFIVE_JH7100_AUDIO=y
CONFIG_CLK_SUNXI=y
# CONFIG_CLK_SUNXI_CLOCKS is not set
CONFIG_CLK_SUNXI_PRCM_SUN6I=y
# CONFIG_CLK_SUNXI_PRCM_SUN8I is not set
CONFIG_CLK_SUNXI_PRCM_SUN9I=y
# CONFIG_SUNXI_CCU is not set
# CONFIG_COMMON_CLK_TI_ADPLL is not set
CONFIG_CLK_UNIPHIER=y
# CONFIG_COMMON_CLK_VISCONTI is not set
CONFIG_CLK_LGM_CGU=y
CONFIG_XILINX_VCU=y
# CONFIG_COMMON_CLK_XLNX_CLKWZRD is not set
CONFIG_COMMON_CLK_ZYNQMP=y
# CONFIG_CLK_KUNIT_TEST is not set
CONFIG_CLK_GATE_KUNIT_TEST=m
# CONFIG_HWSPINLOCK is not set

#
# Clock Source drivers
#
CONFIG_TIMER_OF=y
CONFIG_TIMER_PROBE=y
CONFIG_CLKSRC_MMIO=y
CONFIG_BCM2835_TIMER=y
CONFIG_BCM_KONA_TIMER=y
CONFIG_DAVINCI_TIMER=y
# CONFIG_DIGICOLOR_TIMER is not set
# CONFIG_OMAP_DM_TIMER is not set
CONFIG_DW_APB_TIMER=y
CONFIG_FTTMR010_TIMER=y
# CONFIG_IXP4XX_TIMER is not set
CONFIG_MESON6_TIMER=y
# CONFIG_OWL_TIMER is not set
CONFIG_RDA_TIMER=y
# CONFIG_SUN4I_TIMER is not set
# CONFIG_SUN5I_HSTIMER is not set
CONFIG_TEGRA_TIMER=y
CONFIG_VT8500_TIMER=y
CONFIG_NPCM7XX_TIMER=y
# CONFIG_CADENCE_TTC_TIMER is not set
# CONFIG_ASM9260_TIMER is not set
# CONFIG_CLKSRC_DBX500_PRCMU is not set
# CONFIG_CLPS711X_TIMER is not set
CONFIG_MXS_TIMER=y
# CONFIG_NSPIRE_TIMER is not set
# CONFIG_INTEGRATOR_AP_TIMER is not set
# CONFIG_CLKSRC_PISTACHIO is not set
CONFIG_CLKSRC_STM32_LP=y
CONFIG_ARMV7M_SYSTICK=y
# CONFIG_ATMEL_PIT is not set
# CONFIG_ATMEL_ST is not set
CONFIG_CLKSRC_SAMSUNG_PWM=y
# CONFIG_FSL_FTM_TIMER is not set
CONFIG_OXNAS_RPS_TIMER=y
# CONFIG_MTK_TIMER is not set
CONFIG_CLKSRC_JCORE_PIT=y
# CONFIG_SH_TIMER_CMT is not set
# CONFIG_SH_TIMER_MTU2 is not set
# CONFIG_RENESAS_OSTM is not set
# CONFIG_SH_TIMER_TMU is not set
# CONFIG_EM_TIMER_STI is not set
CONFIG_CLKSRC_PXA=y
# CONFIG_TIMER_IMX_SYS_CTR is not set
# CONFIG_CLKSRC_ST_LPC is not set
# CONFIG_GXP_TIMER is not set
# CONFIG_MSC313E_TIMER is not set
# CONFIG_INGENIC_TIMER is not set
CONFIG_INGENIC_SYSOST=y
# CONFIG_INGENIC_OST is not set
# CONFIG_MICROCHIP_PIT64B is not set
CONFIG_GOLDFISH_TIMER=y
# end of Clock Source drivers

# CONFIG_MAILBOX is not set
CONFIG_IOMMU_API=y
CONFIG_IOMMU_SUPPORT=y

#
# Generic IOMMU Pagetable Support
#
CONFIG_IOMMU_IO_PGTABLE=y
CONFIG_IOMMU_IO_PGTABLE_ARMV7S=y
# CONFIG_IOMMU_IO_PGTABLE_ARMV7S_SELFTEST is not set
# end of Generic IOMMU Pagetable Support

# CONFIG_IOMMU_DEFAULT_DMA_STRICT is not set
CONFIG_IOMMU_DEFAULT_DMA_LAZY=y
# CONFIG_IOMMU_DEFAULT_PASSTHROUGH is not set
CONFIG_OF_IOMMU=y
CONFIG_IOMMUFD=m
CONFIG_IOMMUFD_VFIO_CONTAINER=y
# CONFIG_OMAP_IOMMU is not set
# CONFIG_ROCKCHIP_IOMMU is not set
# CONFIG_SUN50I_IOMMU is not set
CONFIG_S390_CCW_IOMMU=y
CONFIG_S390_AP_IOMMU=y
CONFIG_MTK_IOMMU=y
CONFIG_SPRD_IOMMU=y

#
# Remoteproc drivers
#
CONFIG_REMOTEPROC=y
CONFIG_REMOTEPROC_CDEV=y
# CONFIG_INGENIC_VPU_RPROC is not set
CONFIG_MTK_SCP=y
# CONFIG_MESON_MX_AO_ARC_REMOTEPROC is not set
CONFIG_RCAR_REMOTEPROC=y
# end of Remoteproc drivers

#
# Rpmsg drivers
#
CONFIG_RPMSG=y
CONFIG_RPMSG_CHAR=y
CONFIG_RPMSG_CTRL=y
CONFIG_RPMSG_NS=m
CONFIG_RPMSG_MTK_SCP=y
# CONFIG_RPMSG_VIRTIO is not set
# end of Rpmsg drivers

# CONFIG_SOUNDWIRE is not set

#
# SOC (System On Chip) specific Drivers
#

#
# Amlogic SoC drivers
#
CONFIG_MESON_CANVAS=y
CONFIG_MESON_CLK_MEASURE=y
# CONFIG_MESON_GX_SOCINFO is not set
# CONFIG_MESON_MX_SOCINFO is not set
# end of Amlogic SoC drivers

#
# Apple SoC drivers
#
CONFIG_APPLE_SART=y
# end of Apple SoC drivers

#
# ASPEED SoC drivers
#
CONFIG_ASPEED_LPC_CTRL=y
CONFIG_ASPEED_LPC_SNOOP=m
# CONFIG_ASPEED_UART_ROUTING is not set
CONFIG_ASPEED_P2A_CTRL=y
# CONFIG_ASPEED_SOCINFO is not set
# end of ASPEED SoC drivers

CONFIG_AT91_SOC_ID=y
# CONFIG_AT91_SOC_SFR is not set

#
# Broadcom SoC drivers
#
CONFIG_BCM2835_POWER=y
# CONFIG_SOC_BCM63XX is not set
# CONFIG_SOC_BRCMSTB is not set
# CONFIG_BCM_PMB is not set
# end of Broadcom SoC drivers

#
# NXP/Freescale QorIQ SoC drivers
#
CONFIG_QUICC_ENGINE=y
CONFIG_UCC_SLOW=y
CONFIG_UCC_FAST=y
CONFIG_UCC=y
CONFIG_QE_TDM=y
CONFIG_DPAA2_CONSOLE=y
# end of NXP/Freescale QorIQ SoC drivers

#
# fujitsu SoC drivers
#
# end of fujitsu SoC drivers

#
# i.MX SoC drivers
#
CONFIG_SOC_IMX8M=y
CONFIG_SOC_IMX9=m
# end of i.MX SoC drivers

#
# IXP4xx SoC drivers
#
CONFIG_IXP4XX_QMGR=y
# CONFIG_IXP4XX_NPE is not set
# end of IXP4xx SoC drivers

#
# Enable LiteX SoC Builder specific drivers
#
CONFIG_LITEX=y
CONFIG_LITEX_SOC_CONTROLLER=y
# end of Enable LiteX SoC Builder specific drivers

CONFIG_LOONGSON2_GUTS=m

#
# MediaTek SoC drivers
#
# CONFIG_MTK_CMDQ is not set
CONFIG_MTK_DEVAPC=m
CONFIG_MTK_INFRACFG=y
CONFIG_MTK_PMIC_WRAP=y
# CONFIG_MTK_SCPSYS is not set
CONFIG_MTK_MMSYS=y
# CONFIG_MTK_SVS is not set
# end of MediaTek SoC drivers

#
# Qualcomm SoC drivers
#
CONFIG_QCOM_COMMAND_DB=m
CONFIG_QCOM_GENI_SE=m
# CONFIG_QCOM_GSBI is not set
# CONFIG_QCOM_LLCC is not set
CONFIG_QCOM_PDR_HELPERS=m
CONFIG_QCOM_QMI_HELPERS=m
CONFIG_QCOM_RPMH=m
# CONFIG_QCOM_RPMHPD is not set
CONFIG_QCOM_SMD_RPM=m
# CONFIG_QCOM_SPM is not set
CONFIG_QCOM_WCNSS_CTRL=y
CONFIG_QCOM_APR=m
CONFIG_QCOM_ICC_BWMON=m
# end of Qualcomm SoC drivers

CONFIG_SOC_RENESAS=y
CONFIG_RST_RCAR=y
CONFIG_SYSC_RCAR=y
CONFIG_SYSC_RCAR_GEN4=y
CONFIG_SYSC_R8A77995=y
CONFIG_SYSC_R8A7794=y
CONFIG_SYSC_R8A77990=y
# CONFIG_SYSC_R8A7779 is not set
CONFIG_SYSC_R8A7790=y
CONFIG_SYSC_R8A7795=y
# CONFIG_SYSC_R8A7791 is not set
CONFIG_SYSC_R8A77965=y
# CONFIG_SYSC_R8A77960 is not set
# CONFIG_SYSC_R8A77961 is not set
CONFIG_SYSC_R8A779F0=y
CONFIG_SYSC_R8A7792=y
CONFIG_SYSC_R8A77980=y
CONFIG_SYSC_R8A77970=y
CONFIG_SYSC_R8A779A0=y
# CONFIG_SYSC_R8A779G0 is not set
CONFIG_SYSC_RMOBILE=y
CONFIG_SYSC_R8A77470=y
CONFIG_SYSC_R8A7745=y
CONFIG_SYSC_R8A7742=y
# CONFIG_SYSC_R8A7743 is not set
CONFIG_SYSC_R8A774C0=y
# CONFIG_SYSC_R8A774E1 is not set
# CONFIG_SYSC_R8A774A1 is not set
CONFIG_SYSC_R8A774B1=y
# CONFIG_ROCKCHIP_GRF is not set
# CONFIG_ROCKCHIP_IODOMAIN is not set
CONFIG_ROCKCHIP_DTPM=m
CONFIG_SOC_SAMSUNG=y
CONFIG_EXYNOS_ASV_ARM=y
CONFIG_EXYNOS_CHIPID=y
CONFIG_EXYNOS_USI=y
CONFIG_EXYNOS_PM_DOMAINS=y
CONFIG_EXYNOS_REGULATOR_COUPLER=y
CONFIG_SOC_TEGRA20_VOLTAGE_COUPLER=y
# CONFIG_SOC_TEGRA30_VOLTAGE_COUPLER is not set
CONFIG_SOC_TI=y
CONFIG_UX500_SOC_ID=y

#
# Xilinx SoC drivers
#
# end of Xilinx SoC drivers
# end of SOC (System On Chip) specific Drivers

CONFIG_PM_DEVFREQ=y

#
# DEVFREQ Governors
#
CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
CONFIG_DEVFREQ_GOV_PERFORMANCE=y
# CONFIG_DEVFREQ_GOV_POWERSAVE is not set
CONFIG_DEVFREQ_GOV_USERSPACE=y
CONFIG_DEVFREQ_GOV_PASSIVE=y

#
# DEVFREQ Drivers
#
CONFIG_ARM_EXYNOS_BUS_DEVFREQ=y
CONFIG_ARM_IMX_BUS_DEVFREQ=y
CONFIG_ARM_TEGRA_DEVFREQ=m
# CONFIG_ARM_MEDIATEK_CCI_DEVFREQ is not set
CONFIG_ARM_SUN8I_A33_MBUS_DEVFREQ=y
CONFIG_PM_DEVFREQ_EVENT=y
CONFIG_DEVFREQ_EVENT_EXYNOS_NOCP=y
CONFIG_DEVFREQ_EVENT_EXYNOS_PPMU=y
# CONFIG_DEVFREQ_EVENT_ROCKCHIP_DFI is not set
CONFIG_EXTCON=y

#
# Extcon Device Drivers
#
# CONFIG_EXTCON_ADC_JACK is not set
CONFIG_EXTCON_FSA9480=y
CONFIG_EXTCON_GPIO=y
CONFIG_EXTCON_MAX3355=m
CONFIG_EXTCON_MAX77843=y
# CONFIG_EXTCON_PALMAS is not set
CONFIG_EXTCON_PTN5150=m
CONFIG_EXTCON_QCOM_SPMI_MISC=y
CONFIG_EXTCON_RT8973A=m
CONFIG_EXTCON_SM5502=y
CONFIG_EXTCON_USB_GPIO=y
# CONFIG_EXTCON_USBC_TUSB320 is not set
CONFIG_MEMORY=y
CONFIG_DDR=y
CONFIG_ATMEL_SDRAMC=y
# CONFIG_ATMEL_EBI is not set
CONFIG_BRCMSTB_DPFE=y
CONFIG_BRCMSTB_MEMC=y
CONFIG_BT1_L2_CTL=y
CONFIG_TI_AEMIF=m
CONFIG_TI_EMIF=m
CONFIG_FPGA_DFL_EMIF=m
# CONFIG_MVEBU_DEVBUS is not set
CONFIG_FSL_CORENET_CF=m
# CONFIG_FSL_IFC is not set
# CONFIG_JZ4780_NEMC is not set
CONFIG_MTK_SMI=y
# CONFIG_DA8XX_DDRCTL is not set
CONFIG_RENESAS_RPCIF=y
CONFIG_STM32_FMC2_EBI=y
# CONFIG_SAMSUNG_MC is not set
# CONFIG_TEGRA_MC is not set
CONFIG_IIO=y
CONFIG_IIO_BUFFER=y
CONFIG_IIO_BUFFER_CB=y
CONFIG_IIO_BUFFER_DMA=m
CONFIG_IIO_BUFFER_DMAENGINE=m
CONFIG_IIO_BUFFER_HW_CONSUMER=y
CONFIG_IIO_KFIFO_BUF=y
CONFIG_IIO_TRIGGERED_BUFFER=y
CONFIG_IIO_CONFIGFS=y
CONFIG_IIO_TRIGGER=y
CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
CONFIG_IIO_SW_DEVICE=m
CONFIG_IIO_SW_TRIGGER=y
CONFIG_IIO_TRIGGERED_EVENT=m

#
# Accelerometers
#
# CONFIG_ADIS16201 is not set
# CONFIG_ADIS16209 is not set
# CONFIG_ADXL313_I2C is not set
# CONFIG_ADXL313_SPI is not set
CONFIG_ADXL355=y
CONFIG_ADXL355_I2C=y
CONFIG_ADXL355_SPI=y
CONFIG_ADXL367=y
CONFIG_ADXL367_SPI=y
CONFIG_ADXL367_I2C=m
CONFIG_ADXL372=y
CONFIG_ADXL372_SPI=y
CONFIG_ADXL372_I2C=m
# CONFIG_BMA220 is not set
CONFIG_BMA400=y
CONFIG_BMA400_I2C=y
CONFIG_BMA400_SPI=y
# CONFIG_BMC150_ACCEL is not set
CONFIG_BMI088_ACCEL=m
CONFIG_BMI088_ACCEL_SPI=m
CONFIG_DA280=m
# CONFIG_DA311 is not set
CONFIG_DMARD06=m
CONFIG_DMARD09=y
CONFIG_DMARD10=y
CONFIG_FXLS8962AF=m
# CONFIG_FXLS8962AF_I2C is not set
CONFIG_FXLS8962AF_SPI=m
# CONFIG_HID_SENSOR_ACCEL_3D is not set
CONFIG_IIO_KX022A=y
CONFIG_IIO_KX022A_SPI=y
CONFIG_IIO_KX022A_I2C=m
CONFIG_KXSD9=m
CONFIG_KXSD9_SPI=m
# CONFIG_KXSD9_I2C is not set
CONFIG_KXCJK1013=m
# CONFIG_MC3230 is not set
CONFIG_MMA7455=m
CONFIG_MMA7455_I2C=m
CONFIG_MMA7455_SPI=m
# CONFIG_MMA7660 is not set
CONFIG_MMA8452=y
CONFIG_MMA9551_CORE=m
CONFIG_MMA9551=m
CONFIG_MMA9553=m
CONFIG_MSA311=m
# CONFIG_MXC4005 is not set
CONFIG_MXC6255=y
# CONFIG_SCA3000 is not set
CONFIG_SCA3300=m
# CONFIG_STK8312 is not set
CONFIG_STK8BA50=y
# end of Accelerometers

#
# Analog to digital converters
#
CONFIG_AD_SIGMA_DELTA=y
CONFIG_AD4130=y
CONFIG_AD7091R5=m
# CONFIG_AD7124 is not set
CONFIG_AD7192=m
CONFIG_AD7266=y
CONFIG_AD7280=m
CONFIG_AD7291=y
CONFIG_AD7292=y
CONFIG_AD7298=m
CONFIG_AD7476=y
CONFIG_AD7606=y
CONFIG_AD7606_IFACE_PARALLEL=y
# CONFIG_AD7606_IFACE_SPI is not set
# CONFIG_AD7766 is not set
CONFIG_AD7768_1=m
CONFIG_AD7780=y
CONFIG_AD7791=m
# CONFIG_AD7793 is not set
CONFIG_AD7887=y
CONFIG_AD7923=y
# CONFIG_AD7949 is not set
# CONFIG_AD799X is not set
# CONFIG_AD9467 is not set
CONFIG_ADI_AXI_ADC=m
# CONFIG_ASPEED_ADC is not set
# CONFIG_AT91_ADC is not set
# CONFIG_AT91_SAMA5D2_ADC is not set
# CONFIG_AXP20X_ADC is not set
# CONFIG_AXP288_ADC is not set
CONFIG_BCM_IPROC_ADC=y
CONFIG_BERLIN2_ADC=m
CONFIG_CC10001_ADC=m
# CONFIG_DA9150_GPADC is not set
CONFIG_DLN2_ADC=y
CONFIG_ENVELOPE_DETECTOR=y
CONFIG_EXYNOS_ADC=y
# CONFIG_FSL_MX25_ADC is not set
CONFIG_HI8435=m
CONFIG_HX711=y
# CONFIG_INA2XX_ADC is not set
# CONFIG_INGENIC_ADC is not set
CONFIG_IMX7D_ADC=m
CONFIG_IMX8QXP_ADC=m
CONFIG_LP8788_ADC=m
CONFIG_LPC18XX_ADC=y
CONFIG_LPC32XX_ADC=m
CONFIG_LTC2471=m
# CONFIG_LTC2485 is not set
# CONFIG_LTC2496 is not set
CONFIG_LTC2497=y
CONFIG_MAX1027=y
# CONFIG_MAX11100 is not set
# CONFIG_MAX1118 is not set
CONFIG_MAX11205=m
# CONFIG_MAX11410 is not set
# CONFIG_MAX1241 is not set
CONFIG_MAX1363=y
CONFIG_MAX9611=m
CONFIG_MCP320X=m
CONFIG_MCP3422=y
CONFIG_MCP3911=y
CONFIG_MEDIATEK_MT6370_ADC=m
CONFIG_MEDIATEK_MT6577_AUXADC=y
# CONFIG_MESON_SARADC is not set
CONFIG_MP2629_ADC=m
CONFIG_NAU7802=y
CONFIG_NPCM_ADC=y
CONFIG_PALMAS_GPADC=m
CONFIG_QCOM_VADC_COMMON=m
CONFIG_QCOM_PM8XXX_XOADC=m
CONFIG_RCAR_GYRO_ADC=y
CONFIG_ROCKCHIP_SARADC=y
CONFIG_RICHTEK_RTQ6056=m
CONFIG_RZG2L_ADC=m
CONFIG_SC27XX_ADC=m
CONFIG_SPEAR_ADC=y
CONFIG_SD_ADC_MODULATOR=y
# CONFIG_STM32_ADC_CORE is not set
CONFIG_STM32_DFSDM_CORE=m
# CONFIG_STM32_DFSDM_ADC is not set
# CONFIG_STMPE_ADC is not set
# CONFIG_SUN4I_GPADC is not set
# CONFIG_TI_ADC081C is not set
# CONFIG_TI_ADC0832 is not set
CONFIG_TI_ADC084S021=y
# CONFIG_TI_ADC12138 is not set
CONFIG_TI_ADC108S102=m
CONFIG_TI_ADC128S052=m
CONFIG_TI_ADC161S626=m
CONFIG_TI_ADS1015=y
CONFIG_TI_ADS7950=m
CONFIG_TI_ADS8344=y
CONFIG_TI_ADS8688=m
# CONFIG_TI_ADS124S08 is not set
CONFIG_TI_ADS131E08=y
CONFIG_TI_AM335X_ADC=m
# CONFIG_TI_TLC4541 is not set
CONFIG_TI_TSC2046=m
CONFIG_TWL4030_MADC=y
CONFIG_TWL6030_GPADC=y
CONFIG_VF610_ADC=m
# CONFIG_VIPERBOARD_ADC is not set
# CONFIG_XILINX_XADC is not set
# CONFIG_XILINX_AMS is not set
# end of Analog to digital converters

#
# Analog to digital and digital to analog converters
#
CONFIG_AD74115=m
CONFIG_AD74413R=m
# end of Analog to digital and digital to analog converters

#
# Analog Front Ends
#
CONFIG_IIO_RESCALE=y
# end of Analog Front Ends

#
# Amplifiers
#
# CONFIG_AD8366 is not set
# CONFIG_ADA4250 is not set
CONFIG_HMC425=m
# end of Amplifiers

#
# Capacitance to digital converters
#
CONFIG_AD7150=m
CONFIG_AD7746=y
# end of Capacitance to digital converters

#
# Chemical Sensors
#
# CONFIG_ATLAS_PH_SENSOR is not set
CONFIG_ATLAS_EZO_SENSOR=m
CONFIG_BME680=y
CONFIG_BME680_I2C=y
CONFIG_BME680_SPI=y
CONFIG_CCS811=m
# CONFIG_IAQCORE is not set
CONFIG_PMS7003=m
CONFIG_SCD30_CORE=m
CONFIG_SCD30_I2C=m
CONFIG_SCD30_SERIAL=m
CONFIG_SCD4X=m
CONFIG_SENSIRION_SGP30=y
# CONFIG_SENSIRION_SGP40 is not set
# CONFIG_SPS30_I2C is not set
# CONFIG_SPS30_SERIAL is not set
CONFIG_SENSEAIR_SUNRISE_CO2=y
CONFIG_VZ89X=m
# end of Chemical Sensors

#
# Hid Sensor IIO Common
#
CONFIG_HID_SENSOR_IIO_COMMON=m
CONFIG_HID_SENSOR_IIO_TRIGGER=m
# end of Hid Sensor IIO Common

CONFIG_IIO_MS_SENSORS_I2C=y

#
# IIO SCMI Sensors
#
# end of IIO SCMI Sensors

#
# SSP Sensor Common
#
# CONFIG_IIO_SSP_SENSORHUB is not set
# end of SSP Sensor Common

CONFIG_IIO_ST_SENSORS_I2C=y
CONFIG_IIO_ST_SENSORS_SPI=m
CONFIG_IIO_ST_SENSORS_CORE=y

#
# Digital to analog converters
#
CONFIG_AD3552R=y
CONFIG_AD5064=m
# CONFIG_AD5360 is not set
# CONFIG_AD5380 is not set
# CONFIG_AD5421 is not set
CONFIG_AD5446=m
# CONFIG_AD5449 is not set
CONFIG_AD5592R_BASE=y
CONFIG_AD5592R=y
CONFIG_AD5593R=m
# CONFIG_AD5504 is not set
CONFIG_AD5624R_SPI=y
# CONFIG_LTC2688 is not set
CONFIG_AD5686=m
# CONFIG_AD5686_SPI is not set
CONFIG_AD5696_I2C=m
CONFIG_AD5755=y
# CONFIG_AD5758 is not set
CONFIG_AD5761=m
# CONFIG_AD5764 is not set
CONFIG_AD5766=y
# CONFIG_AD5770R is not set
CONFIG_AD5791=y
CONFIG_AD7293=m
CONFIG_AD7303=m
# CONFIG_AD8801 is not set
CONFIG_DPOT_DAC=m
CONFIG_DS4424=y
CONFIG_LPC18XX_DAC=m
CONFIG_LTC1660=y
# CONFIG_LTC2632 is not set
CONFIG_M62332=y
CONFIG_MAX517=y
CONFIG_MAX5821=m
CONFIG_MCP4725=m
# CONFIG_MCP4922 is not set
CONFIG_STM32_DAC=m
CONFIG_STM32_DAC_CORE=m
# CONFIG_TI_DAC082S085 is not set
CONFIG_TI_DAC5571=m
CONFIG_TI_DAC7311=m
CONFIG_TI_DAC7612=m
# CONFIG_VF610_DAC is not set
# end of Digital to analog converters

#
# IIO dummy driver
#
# CONFIG_IIO_SIMPLE_DUMMY is not set
# end of IIO dummy driver

#
# Filters
#
# end of Filters

#
# Frequency Synthesizers DDS/PLL
#

#
# Clock Generator/Distribution
#
# CONFIG_AD9523 is not set
# end of Clock Generator/Distribution

#
# Phase-Locked Loop (PLL) frequency synthesizers
#
CONFIG_ADF4350=y
CONFIG_ADF4371=y
CONFIG_ADF4377=m
CONFIG_ADMV1013=y
CONFIG_ADMV4420=m
CONFIG_ADRF6780=y
# end of Phase-Locked Loop (PLL) frequency synthesizers
# end of Frequency Synthesizers DDS/PLL

#
# Digital gyroscope sensors
#
CONFIG_ADIS16080=y
CONFIG_ADIS16130=y
CONFIG_ADIS16136=y
CONFIG_ADIS16260=y
# CONFIG_ADXRS290 is not set
CONFIG_ADXRS450=m
CONFIG_BMG160=y
CONFIG_BMG160_I2C=y
CONFIG_BMG160_SPI=y
CONFIG_FXAS21002C=y
CONFIG_FXAS21002C_I2C=y
CONFIG_FXAS21002C_SPI=y
CONFIG_HID_SENSOR_GYRO_3D=m
CONFIG_MPU3050=y
CONFIG_MPU3050_I2C=y
CONFIG_IIO_ST_GYRO_3AXIS=y
CONFIG_IIO_ST_GYRO_I2C_3AXIS=y
CONFIG_IIO_ST_GYRO_SPI_3AXIS=m
CONFIG_ITG3200=y
# end of Digital gyroscope sensors

#
# Health Sensors
#

#
# Heart Rate Monitors
#
CONFIG_AFE4403=y
CONFIG_AFE4404=y
# CONFIG_MAX30100 is not set
CONFIG_MAX30102=m
# end of Heart Rate Monitors
# end of Health Sensors

#
# Humidity sensors
#
# CONFIG_AM2315 is not set
CONFIG_DHT11=m
CONFIG_HDC100X=m
# CONFIG_HDC2010 is not set
# CONFIG_HID_SENSOR_HUMIDITY is not set
CONFIG_HTS221=m
CONFIG_HTS221_I2C=m
CONFIG_HTS221_SPI=m
CONFIG_HTU21=m
CONFIG_SI7005=y
CONFIG_SI7020=m
# end of Humidity sensors

#
# Inertial measurement units
#
CONFIG_ADIS16400=y
# CONFIG_ADIS16460 is not set
# CONFIG_ADIS16475 is not set
# CONFIG_ADIS16480 is not set
CONFIG_BMI160=m
CONFIG_BMI160_I2C=m
# CONFIG_BMI160_SPI is not set
CONFIG_BOSCH_BNO055=m
CONFIG_BOSCH_BNO055_SERIAL=m
# CONFIG_BOSCH_BNO055_I2C is not set
CONFIG_FXOS8700=m
CONFIG_FXOS8700_I2C=m
# CONFIG_FXOS8700_SPI is not set
# CONFIG_KMX61 is not set
CONFIG_INV_ICM42600=y
CONFIG_INV_ICM42600_I2C=y
# CONFIG_INV_ICM42600_SPI is not set
CONFIG_INV_MPU6050_IIO=y
# CONFIG_INV_MPU6050_I2C is not set
CONFIG_INV_MPU6050_SPI=y
CONFIG_IIO_ST_LSM6DSX=y
CONFIG_IIO_ST_LSM6DSX_I2C=y
CONFIG_IIO_ST_LSM6DSX_SPI=y
CONFIG_IIO_ST_LSM6DSX_I3C=m
# end of Inertial measurement units

CONFIG_IIO_ADIS_LIB=y
CONFIG_IIO_ADIS_LIB_BUFFER=y

#
# Light sensors
#
# CONFIG_ADJD_S311 is not set
CONFIG_ADUX1020=y
CONFIG_AL3010=m
CONFIG_AL3320A=m
CONFIG_APDS9300=y
# CONFIG_APDS9960 is not set
CONFIG_AS73211=m
CONFIG_BH1750=y
# CONFIG_BH1780 is not set
CONFIG_CM32181=y
CONFIG_CM3232=m
CONFIG_CM3323=y
CONFIG_CM3605=y
CONFIG_CM36651=m
CONFIG_GP2AP002=m
CONFIG_GP2AP020A00F=y
CONFIG_IQS621_ALS=m
CONFIG_SENSORS_ISL29018=m
# CONFIG_SENSORS_ISL29028 is not set
CONFIG_ISL29125=m
# CONFIG_HID_SENSOR_ALS is not set
CONFIG_HID_SENSOR_PROX=m
CONFIG_JSA1212=m
CONFIG_RPR0521=y
# CONFIG_SENSORS_LM3533 is not set
CONFIG_LTR501=m
# CONFIG_LTRF216A is not set
CONFIG_LV0104CS=y
CONFIG_MAX44000=y
CONFIG_MAX44009=m
CONFIG_NOA1305=m
CONFIG_OPT3001=m
CONFIG_PA12203001=m
# CONFIG_SI1133 is not set
# CONFIG_SI1145 is not set
CONFIG_STK3310=m
CONFIG_ST_UVIS25=m
CONFIG_ST_UVIS25_I2C=m
CONFIG_ST_UVIS25_SPI=m
CONFIG_TCS3414=y
CONFIG_TCS3472=y
CONFIG_SENSORS_TSL2563=m
CONFIG_TSL2583=y
# CONFIG_TSL2591 is not set
# CONFIG_TSL2772 is not set
CONFIG_TSL4531=y
CONFIG_US5182D=m
CONFIG_VCNL4000=y
CONFIG_VCNL4035=m
CONFIG_VEML6030=y
CONFIG_VEML6070=y
# CONFIG_VL6180 is not set
CONFIG_ZOPT2201=y
# end of Light sensors

#
# Magnetometer sensors
#
CONFIG_AK8974=m
CONFIG_AK8975=m
CONFIG_AK09911=m
CONFIG_BMC150_MAGN=m
CONFIG_BMC150_MAGN_I2C=m
# CONFIG_BMC150_MAGN_SPI is not set
CONFIG_MAG3110=m
CONFIG_HID_SENSOR_MAGNETOMETER_3D=m
# CONFIG_MMC35240 is not set
CONFIG_IIO_ST_MAGN_3AXIS=m
# CONFIG_IIO_ST_MAGN_I2C_3AXIS is not set
CONFIG_IIO_ST_MAGN_SPI_3AXIS=m
CONFIG_SENSORS_HMC5843=y
CONFIG_SENSORS_HMC5843_I2C=y
CONFIG_SENSORS_HMC5843_SPI=y
CONFIG_SENSORS_RM3100=y
CONFIG_SENSORS_RM3100_I2C=y
CONFIG_SENSORS_RM3100_SPI=y
# CONFIG_YAMAHA_YAS530 is not set
# end of Magnetometer sensors

#
# Multiplexers
#
CONFIG_IIO_MUX=y
# end of Multiplexers

#
# Inclinometer sensors
#
# CONFIG_HID_SENSOR_INCLINOMETER_3D is not set
# CONFIG_HID_SENSOR_DEVICE_ROTATION is not set
# end of Inclinometer sensors

CONFIG_IIO_RESCALE_KUNIT_TEST=m
# CONFIG_IIO_FORMAT_KUNIT_TEST is not set

#
# Triggers - standalone
#
CONFIG_IIO_HRTIMER_TRIGGER=y
# CONFIG_IIO_INTERRUPT_TRIGGER is not set
# CONFIG_IIO_STM32_LPTIMER_TRIGGER is not set
# CONFIG_IIO_STM32_TIMER_TRIGGER is not set
# CONFIG_IIO_TIGHTLOOP_TRIGGER is not set
# CONFIG_IIO_SYSFS_TRIGGER is not set
# end of Triggers - standalone

#
# Linear and angular position sensors
#
# CONFIG_IQS624_POS is not set
# CONFIG_HID_SENSOR_CUSTOM_INTEL_HINGE is not set
# end of Linear and angular position sensors

#
# Digital potentiometers
#
CONFIG_AD5110=y
CONFIG_AD5272=y
CONFIG_DS1803=y
CONFIG_MAX5432=y
# CONFIG_MAX5481 is not set
CONFIG_MAX5487=m
CONFIG_MCP4018=m
CONFIG_MCP4131=y
CONFIG_MCP4531=y
CONFIG_MCP41010=y
# CONFIG_TPL0102 is not set
# end of Digital potentiometers

#
# Digital potentiostats
#
CONFIG_LMP91000=y
# end of Digital potentiostats

#
# Pressure sensors
#
# CONFIG_ABP060MG is not set
CONFIG_BMP280=m
CONFIG_BMP280_I2C=m
CONFIG_BMP280_SPI=m
# CONFIG_DLHL60D is not set
CONFIG_DPS310=m
# CONFIG_HID_SENSOR_PRESS is not set
# CONFIG_HP03 is not set
CONFIG_ICP10100=y
CONFIG_MPL115=m
CONFIG_MPL115_I2C=m
# CONFIG_MPL115_SPI is not set
CONFIG_MPL3115=y
CONFIG_MS5611=y
CONFIG_MS5611_I2C=m
CONFIG_MS5611_SPI=y
CONFIG_MS5637=m
CONFIG_IIO_ST_PRESS=m
CONFIG_IIO_ST_PRESS_I2C=m
CONFIG_IIO_ST_PRESS_SPI=m
# CONFIG_T5403 is not set
CONFIG_HP206C=y
CONFIG_ZPA2326=y
CONFIG_ZPA2326_I2C=y
CONFIG_ZPA2326_SPI=y
# end of Pressure sensors

#
# Lightning sensors
#
CONFIG_AS3935=y
# end of Lightning sensors

#
# Proximity and distance sensors
#
# CONFIG_ISL29501 is not set
# CONFIG_LIDAR_LITE_V2 is not set
CONFIG_MB1232=y
CONFIG_PING=m
# CONFIG_RFD77402 is not set
CONFIG_SRF04=y
CONFIG_SX_COMMON=y
CONFIG_SX9310=m
CONFIG_SX9324=y
# CONFIG_SX9360 is not set
CONFIG_SX9500=m
CONFIG_SRF08=m
CONFIG_VCNL3020=y
CONFIG_VL53L0X_I2C=m
# end of Proximity and distance sensors

#
# Resolver to digital converters
#
CONFIG_AD2S90=y
CONFIG_AD2S1200=y
# end of Resolver to digital converters

#
# Temperature sensors
#
# CONFIG_IQS620AT_TEMP is not set
# CONFIG_LTC2983 is not set
# CONFIG_MAXIM_THERMOCOUPLE is not set
CONFIG_HID_SENSOR_TEMP=m
CONFIG_MLX90614=y
# CONFIG_MLX90632 is not set
CONFIG_TMP006=y
CONFIG_TMP007=m
# CONFIG_TMP117 is not set
CONFIG_TSYS01=y
# CONFIG_TSYS02D is not set
CONFIG_MAX30208=y
# CONFIG_MAX31856 is not set
# CONFIG_MAX31865 is not set
# end of Temperature sensors

CONFIG_NTB=y
CONFIG_NTB_MSI=y
# CONFIG_NTB_IDT is not set
# CONFIG_NTB_EPF is not set
# CONFIG_NTB_SWITCHTEC is not set
CONFIG_NTB_PINGPONG=m
# CONFIG_NTB_TOOL is not set
CONFIG_NTB_PERF=m
# CONFIG_NTB_MSI_TEST is not set
# CONFIG_NTB_TRANSPORT is not set
CONFIG_PWM=y
CONFIG_PWM_SYSFS=y
CONFIG_PWM_ATMEL=y
CONFIG_PWM_ATMEL_HLCDC_PWM=m
CONFIG_PWM_ATMEL_TCB=m
CONFIG_PWM_BCM_IPROC=y
CONFIG_PWM_BCM_KONA=m
CONFIG_PWM_BCM2835=y
CONFIG_PWM_BERLIN=y
CONFIG_PWM_BRCMSTB=m
# CONFIG_PWM_CLK is not set
CONFIG_PWM_CLPS711X=y
CONFIG_PWM_DWC=y
CONFIG_PWM_EP93XX=y
# CONFIG_PWM_FSL_FTM is not set
CONFIG_PWM_HIBVT=m
CONFIG_PWM_IMG=m
CONFIG_PWM_IMX1=y
CONFIG_PWM_IMX27=m
CONFIG_PWM_IMX_TPM=m
# CONFIG_PWM_INTEL_LGM is not set
# CONFIG_PWM_IQS620A is not set
CONFIG_PWM_JZ4740=m
CONFIG_PWM_KEEMBAY=m
# CONFIG_PWM_LP3943 is not set
# CONFIG_PWM_LPC18XX_SCT is not set
CONFIG_PWM_LPC32XX=m
CONFIG_PWM_LPSS=y
CONFIG_PWM_LPSS_PCI=y
# CONFIG_PWM_LPSS_PLATFORM is not set
CONFIG_PWM_MESON=m
CONFIG_PWM_MTK_DISP=y
# CONFIG_PWM_MEDIATEK is not set
# CONFIG_PWM_MXS is not set
CONFIG_PWM_OMAP_DMTIMER=m
# CONFIG_PWM_PCA9685 is not set
# CONFIG_PWM_PXA is not set
# CONFIG_PWM_RASPBERRYPI_POE is not set
CONFIG_PWM_RCAR=y
# CONFIG_PWM_RENESAS_TPU is not set
# CONFIG_PWM_ROCKCHIP is not set
CONFIG_PWM_SAMSUNG=y
CONFIG_PWM_SIFIVE=y
# CONFIG_PWM_SL28CPLD is not set
CONFIG_PWM_SPEAR=y
CONFIG_PWM_SPRD=y
CONFIG_PWM_STI=m
CONFIG_PWM_STM32=y
CONFIG_PWM_STM32_LP=m
# CONFIG_PWM_STMPE is not set
# CONFIG_PWM_SUN4I is not set
# CONFIG_PWM_SUNPLUS is not set
CONFIG_PWM_TEGRA=m
# CONFIG_PWM_TIECAP is not set
# CONFIG_PWM_TIEHRPWM is not set
CONFIG_PWM_TWL=m
# CONFIG_PWM_TWL_LED is not set
CONFIG_PWM_VISCONTI=m
CONFIG_PWM_VT8500=m

#
# IRQ chip support
#
CONFIG_AL_FIC=y
# CONFIG_JCORE_AIC is not set
# CONFIG_RENESAS_INTC_IRQPIN is not set
CONFIG_RENESAS_IRQC=y
CONFIG_RENESAS_RZA1_IRQC=y
# CONFIG_RENESAS_RZG2L_IRQC is not set
# CONFIG_SL28CPLD_INTC is not set
# CONFIG_TS4800_IRQ is not set
CONFIG_INGENIC_TCU_IRQ=y
CONFIG_IRQ_UNIPHIER_AIDET=y
# CONFIG_MESON_IRQ_GPIO is not set
# CONFIG_IMX_IRQSTEER is not set
# CONFIG_IMX_INTMUX is not set
# CONFIG_IMX_MU_MSI is not set
# CONFIG_EXYNOS_IRQ_COMBINER is not set
# CONFIG_MST_IRQ is not set
# CONFIG_MCHP_EIC is not set
CONFIG_SUNPLUS_SP7021_INTC=y
# end of IRQ chip support

CONFIG_IPACK_BUS=y
CONFIG_BOARD_TPCI200=m
# CONFIG_SERIAL_IPOCTAL is not set
CONFIG_RESET_CONTROLLER=y
CONFIG_RESET_A10SR=m
# CONFIG_RESET_ATH79 is not set
# CONFIG_RESET_AXS10X is not set
CONFIG_RESET_BCM6345=y
CONFIG_RESET_BERLIN=y
CONFIG_RESET_BRCMSTB=y
CONFIG_RESET_BRCMSTB_RESCAL=m
# CONFIG_RESET_HSDK is not set
CONFIG_RESET_IMX7=m
CONFIG_RESET_INTEL_GW=y
# CONFIG_RESET_K210 is not set
CONFIG_RESET_LANTIQ=y
CONFIG_RESET_LPC18XX=y
CONFIG_RESET_MCHP_SPARX5=y
# CONFIG_RESET_MESON is not set
# CONFIG_RESET_MESON_AUDIO_ARB is not set
CONFIG_RESET_NPCM=y
# CONFIG_RESET_PISTACHIO is not set
CONFIG_RESET_QCOM_AOSS=y
CONFIG_RESET_QCOM_PDC=y
# CONFIG_RESET_RASPBERRYPI is not set
# CONFIG_RESET_RZG2L_USBPHY_CTRL is not set
# CONFIG_RESET_SCMI is not set
CONFIG_RESET_SIMPLE=y
# CONFIG_RESET_SOCFPGA is not set
CONFIG_RESET_STARFIVE_JH7100=y
# CONFIG_RESET_SUNPLUS is not set
CONFIG_RESET_SUNXI=y
# CONFIG_RESET_TI_SCI is not set
CONFIG_RESET_TI_SYSCON=m
# CONFIG_RESET_TI_TPS380X is not set
CONFIG_RESET_TN48M_CPLD=y
# CONFIG_RESET_UNIPHIER is not set
# CONFIG_RESET_UNIPHIER_GLUE is not set
# CONFIG_RESET_ZYNQ is not set
CONFIG_COMMON_RESET_HI3660=m
CONFIG_COMMON_RESET_HI6220=m

#
# PHY Subsystem
#
CONFIG_GENERIC_PHY=y
CONFIG_GENERIC_PHY_MIPI_DPHY=y
CONFIG_PHY_LPC18XX_USB_OTG=m
CONFIG_PHY_PISTACHIO_USB=m
# CONFIG_PHY_XGENE is not set
CONFIG_USB_LGM_PHY=m
CONFIG_PHY_CAN_TRANSCEIVER=m
CONFIG_PHY_SUN4I_USB=y
CONFIG_PHY_SUN6I_MIPI_DPHY=y
CONFIG_PHY_SUN9I_USB=y
CONFIG_PHY_SUN50I_USB3=m
CONFIG_PHY_MESON8_HDMI_TX=y
CONFIG_PHY_MESON8B_USB2=y
# CONFIG_PHY_MESON_GXL_USB2 is not set
# CONFIG_PHY_MESON_G12A_MIPI_DPHY_ANALOG is not set
CONFIG_PHY_MESON_G12A_USB2=m
CONFIG_PHY_MESON_G12A_USB3_PCIE=y
CONFIG_PHY_MESON_AXG_PCIE=y
CONFIG_PHY_MESON_AXG_MIPI_PCIE_ANALOG=m
CONFIG_PHY_MESON_AXG_MIPI_DPHY=y

#
# PHY drivers for Broadcom platforms
#
CONFIG_PHY_BCM63XX_USBH=m
CONFIG_PHY_CYGNUS_PCIE=y
# CONFIG_PHY_BCM_SR_USB is not set
CONFIG_BCM_KONA_USB2_PHY=y
# CONFIG_PHY_BCM_NS_USB2 is not set
CONFIG_PHY_BCM_NS_USB3=y
CONFIG_PHY_NS2_PCIE=y
CONFIG_PHY_NS2_USB_DRD=m
CONFIG_PHY_BRCM_SATA=y
# CONFIG_PHY_BRCM_USB is not set
# CONFIG_PHY_BCM_SR_PCIE is not set
# end of PHY drivers for Broadcom platforms

CONFIG_PHY_CADENCE_TORRENT=y
# CONFIG_PHY_CADENCE_DPHY is not set
# CONFIG_PHY_CADENCE_DPHY_RX is not set
# CONFIG_PHY_CADENCE_SIERRA is not set
CONFIG_PHY_CADENCE_SALVO=m
CONFIG_PHY_FSL_IMX8MQ_USB=y
# CONFIG_PHY_MIXEL_LVDS_PHY is not set
CONFIG_PHY_MIXEL_MIPI_DPHY=m
CONFIG_PHY_FSL_IMX8M_PCIE=y
CONFIG_PHY_FSL_LYNX_28G=m
# CONFIG_PHY_HI6220_USB is not set
CONFIG_PHY_HI3660_USB=m
# CONFIG_PHY_HI3670_USB is not set
CONFIG_PHY_HI3670_PCIE=y
CONFIG_PHY_HISTB_COMBPHY=y
CONFIG_PHY_HISI_INNO_USB2=m
CONFIG_PHY_INGENIC_USB=y
# CONFIG_PHY_LANTIQ_VRX200_PCIE is not set
CONFIG_PHY_LANTIQ_RCU_USB2=m
CONFIG_ARMADA375_USBCLUSTER_PHY=y
CONFIG_PHY_BERLIN_SATA=y
CONFIG_PHY_BERLIN_USB=m
CONFIG_PHY_MVEBU_A3700_UTMI=m
CONFIG_PHY_MVEBU_A38X_COMPHY=m
CONFIG_PHY_MVEBU_CP110_UTMI=y
CONFIG_PHY_PXA_28NM_HSIC=y
CONFIG_PHY_PXA_28NM_USB2=m
# CONFIG_PHY_PXA_USB is not set
CONFIG_PHY_MMP3_USB=y
CONFIG_PHY_MMP3_HSIC=y
# CONFIG_PHY_MTK_PCIE is not set
CONFIG_PHY_MTK_UFS=m
CONFIG_PHY_MTK_HDMI=m
# CONFIG_PHY_MTK_MIPI_DSI is not set
CONFIG_PHY_MTK_DP=y
CONFIG_PHY_SPARX5_SERDES=y
# CONFIG_PHY_LAN966X_SERDES is not set
# CONFIG_PHY_CPCAP_USB is not set
CONFIG_PHY_MAPPHONE_MDM6600=y
CONFIG_PHY_OCELOT_SERDES=m
# CONFIG_PHY_ATH79_USB is not set
CONFIG_PHY_QCOM_EDP=y
CONFIG_PHY_QCOM_IPQ4019_USB=m
# CONFIG_PHY_QCOM_PCIE2 is not set
CONFIG_PHY_QCOM_QMP=y
CONFIG_PHY_QCOM_QUSB2=y
# CONFIG_PHY_QCOM_USB_HS is not set
CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=y
CONFIG_PHY_QCOM_USB_HSIC=m
# CONFIG_PHY_QCOM_USB_HS_28NM is not set
# CONFIG_PHY_QCOM_USB_SS is not set
# CONFIG_PHY_QCOM_IPQ806X_USB is not set
CONFIG_PHY_MT7621_PCI=m
# CONFIG_PHY_RALINK_USB is not set
# CONFIG_PHY_R8A779F0_ETHERNET_SERDES is not set
CONFIG_PHY_RCAR_GEN3_USB3=y
CONFIG_PHY_ROCKCHIP_DPHY_RX0=y
CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
# CONFIG_PHY_ROCKCHIP_INNO_USB2 is not set
# CONFIG_PHY_ROCKCHIP_INNO_CSIDPHY is not set
CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
CONFIG_PHY_ROCKCHIP_PCIE=y
# CONFIG_PHY_ROCKCHIP_SNPS_PCIE3 is not set
CONFIG_PHY_ROCKCHIP_TYPEC=y
CONFIG_PHY_EXYNOS_DP_VIDEO=y
CONFIG_PHY_EXYNOS_MIPI_VIDEO=m
# CONFIG_PHY_EXYNOS_PCIE is not set
CONFIG_PHY_SAMSUNG_UFS=y
CONFIG_PHY_SAMSUNG_USB2=m
CONFIG_PHY_S5PV210_USB2=y
CONFIG_PHY_EXYNOS5_USBDRD=m
# CONFIG_PHY_UNIPHIER_USB2 is not set
# CONFIG_PHY_UNIPHIER_USB3 is not set
# CONFIG_PHY_UNIPHIER_PCIE is not set
# CONFIG_PHY_UNIPHIER_AHCI is not set
CONFIG_PHY_ST_SPEAR1310_MIPHY=m
CONFIG_PHY_ST_SPEAR1340_MIPHY=m
# CONFIG_PHY_STIH407_USB is not set
CONFIG_PHY_STM32_USBPHYC=y
# CONFIG_PHY_SUNPLUS_USB is not set
CONFIG_PHY_TEGRA194_P2U=m
CONFIG_PHY_DA8XX_USB=m
CONFIG_PHY_DM816X_USB=y
CONFIG_PHY_AM654_SERDES=y
CONFIG_OMAP_CONTROL_PHY=y
# CONFIG_TI_PIPE3 is not set
CONFIG_PHY_TUSB1210=m
CONFIG_PHY_INTEL_KEEMBAY_EMMC=m
CONFIG_PHY_INTEL_KEEMBAY_USB=y
# CONFIG_PHY_INTEL_LGM_COMBO is not set
CONFIG_PHY_INTEL_LGM_EMMC=m
CONFIG_PHY_INTEL_THUNDERBAY_EMMC=y
CONFIG_PHY_XILINX_ZYNQMP=y
# end of PHY Subsystem

CONFIG_POWERCAP=y
CONFIG_DTPM=y
# CONFIG_MCB is not set
CONFIG_RAS=y
CONFIG_USB4=y
# CONFIG_USB4_DEBUGFS_WRITE is not set

#
# Android
#
CONFIG_ANDROID_BINDER_IPC=y
CONFIG_ANDROID_BINDERFS=y
CONFIG_ANDROID_BINDER_DEVICES="binder,hwbinder,vndbinder"
CONFIG_ANDROID_BINDER_IPC_SELFTEST=y
# end of Android

CONFIG_DAX=y
CONFIG_NVMEM=y
CONFIG_NVMEM_SYSFS=y
CONFIG_NVMEM_APPLE_EFUSES=y
CONFIG_NVMEM_BCM_OCOTP=m
CONFIG_NVMEM_BRCM_NVRAM=m
CONFIG_NVMEM_IMX_IIM=m
CONFIG_NVMEM_IMX_OCOTP=y
# CONFIG_NVMEM_JZ4780_EFUSE is not set
# CONFIG_NVMEM_LAN9662_OTPC is not set
CONFIG_NVMEM_LAYERSCAPE_SFP=y
# CONFIG_NVMEM_LPC18XX_EEPROM is not set
CONFIG_NVMEM_LPC18XX_OTP=y
CONFIG_NVMEM_MESON_MX_EFUSE=m
# CONFIG_NVMEM_MICROCHIP_OTPC is not set
CONFIG_NVMEM_MTK_EFUSE=y
# CONFIG_NVMEM_MXS_OCOTP is not set
# CONFIG_NVMEM_NINTENDO_OTP is not set
CONFIG_NVMEM_QCOM_QFPROM=y
# CONFIG_NVMEM_RAVE_SP_EEPROM is not set
CONFIG_NVMEM_RMEM=m
CONFIG_NVMEM_ROCKCHIP_EFUSE=m
# CONFIG_NVMEM_ROCKCHIP_OTP is not set
CONFIG_NVMEM_SC27XX_EFUSE=y
CONFIG_NVMEM_SNVS_LPGPR=y
CONFIG_NVMEM_SPRD_EFUSE=m
CONFIG_NVMEM_STM32_ROMEM=m
# CONFIG_NVMEM_SUNPLUS_OCOTP is not set
# CONFIG_NVMEM_U_BOOT_ENV is not set
CONFIG_NVMEM_UNIPHIER_EFUSE=m
CONFIG_NVMEM_VF610_OCOTP=y

#
# HW tracing support
#
CONFIG_STM=m
# CONFIG_STM_PROTO_BASIC is not set
# CONFIG_STM_PROTO_SYS_T is not set
CONFIG_STM_DUMMY=m
CONFIG_STM_SOURCE_CONSOLE=m
# CONFIG_STM_SOURCE_HEARTBEAT is not set
CONFIG_INTEL_TH=y
CONFIG_INTEL_TH_PCI=y
# CONFIG_INTEL_TH_GTH is not set
CONFIG_INTEL_TH_STH=m
# CONFIG_INTEL_TH_MSU is not set
CONFIG_INTEL_TH_PTI=y
# end of HW tracing support

CONFIG_FPGA=m
# CONFIG_FPGA_MGR_SOCFPGA is not set
# CONFIG_FPGA_MGR_SOCFPGA_A10 is not set
# CONFIG_ALTERA_PR_IP_CORE is not set
CONFIG_FPGA_MGR_ALTERA_PS_SPI=m
CONFIG_FPGA_MGR_ALTERA_CVP=m
CONFIG_FPGA_MGR_ZYNQ_FPGA=m
CONFIG_FPGA_MGR_XILINX_SPI=m
CONFIG_FPGA_MGR_ICE40_SPI=m
CONFIG_FPGA_MGR_MACHXO2_SPI=m
CONFIG_FPGA_BRIDGE=m
CONFIG_ALTERA_FREEZE_BRIDGE=m
# CONFIG_XILINX_PR_DECOUPLER is not set
CONFIG_FPGA_REGION=m
CONFIG_OF_FPGA_REGION=m
CONFIG_FPGA_DFL=m
CONFIG_FPGA_DFL_AFU=m
CONFIG_FPGA_DFL_NIOS_INTEL_PAC_N3000=m
CONFIG_FPGA_DFL_PCI=m
# CONFIG_FPGA_MGR_ZYNQMP_FPGA is not set
# CONFIG_FPGA_MGR_VERSAL_FPGA is not set
# CONFIG_FPGA_MGR_MICROCHIP_SPI is not set
CONFIG_FPGA_MGR_LATTICE_SYSCONFIG=m
CONFIG_FPGA_MGR_LATTICE_SYSCONFIG_SPI=m
CONFIG_FSI=y
# CONFIG_FSI_NEW_DEV_NODE is not set
CONFIG_FSI_MASTER_GPIO=y
CONFIG_FSI_MASTER_HUB=m
CONFIG_FSI_MASTER_AST_CF=m
CONFIG_FSI_MASTER_ASPEED=y
CONFIG_FSI_SCOM=y
CONFIG_TEE=y
CONFIG_MULTIPLEXER=y

#
# Multiplexer drivers
#
# CONFIG_MUX_ADG792A is not set
# CONFIG_MUX_ADGS1408 is not set
# CONFIG_MUX_GPIO is not set
CONFIG_MUX_MMIO=y
# end of Multiplexer drivers

CONFIG_PM_OPP=y
CONFIG_SIOX=y
CONFIG_SIOX_BUS_GPIO=y
# CONFIG_SLIMBUS is not set
# CONFIG_INTERCONNECT is not set
CONFIG_COUNTER=y
# CONFIG_104_QUAD_8 is not set
CONFIG_INTERRUPT_CNT=y
# CONFIG_STM32_TIMER_CNT is not set
CONFIG_STM32_LPTIMER_CNT=y
# CONFIG_TI_EQEP is not set
CONFIG_FTM_QUADDEC=y
# CONFIG_MICROCHIP_TCB_CAPTURE is not set
CONFIG_INTEL_QEP=m
# CONFIG_TI_ECAP_CAPTURE is not set
# CONFIG_MOST is not set
CONFIG_PECI=m
CONFIG_PECI_CPU=m
# CONFIG_PECI_ASPEED is not set
# CONFIG_HTE is not set
# end of Device Drivers

#
# File systems
#
CONFIG_VALIDATE_FS_PARSER=y
CONFIG_FS_IOMAP=y
# CONFIG_EXT2_FS is not set
# CONFIG_EXT3_FS is not set
# CONFIG_EXT4_FS is not set
CONFIG_REISERFS_FS=y
# CONFIG_REISERFS_CHECK is not set
# CONFIG_REISERFS_PROC_INFO is not set
# CONFIG_REISERFS_FS_XATTR is not set
# CONFIG_JFS_FS is not set
# CONFIG_XFS_FS is not set
CONFIG_GFS2_FS=y
# CONFIG_BTRFS_FS is not set
CONFIG_NILFS2_FS=m
# CONFIG_F2FS_FS is not set
CONFIG_ZONEFS_FS=y
CONFIG_FS_POSIX_ACL=y
CONFIG_EXPORTFS=y
# CONFIG_EXPORTFS_BLOCK_OPS is not set
CONFIG_FILE_LOCKING=y
CONFIG_FS_ENCRYPTION=y
CONFIG_FS_ENCRYPTION_ALGS=m
# CONFIG_FS_VERITY is not set
CONFIG_FSNOTIFY=y
# CONFIG_DNOTIFY is not set
CONFIG_INOTIFY_USER=y
CONFIG_FANOTIFY=y
CONFIG_QUOTA=y
# CONFIG_QUOTA_NETLINK_INTERFACE is not set
# CONFIG_PRINT_QUOTA_WARNING is not set
# CONFIG_QUOTA_DEBUG is not set
CONFIG_QUOTA_TREE=m
CONFIG_QFMT_V1=y
CONFIG_QFMT_V2=m
CONFIG_QUOTACTL=y
CONFIG_AUTOFS4_FS=y
CONFIG_AUTOFS_FS=y
# CONFIG_FUSE_FS is not set
CONFIG_OVERLAY_FS=m
# CONFIG_OVERLAY_FS_REDIRECT_DIR is not set
CONFIG_OVERLAY_FS_REDIRECT_ALWAYS_FOLLOW=y
CONFIG_OVERLAY_FS_INDEX=y
CONFIG_OVERLAY_FS_NFS_EXPORT=y
# CONFIG_OVERLAY_FS_METACOPY is not set

#
# Caches
#
CONFIG_NETFS_SUPPORT=m
CONFIG_NETFS_STATS=y
CONFIG_FSCACHE=m
CONFIG_FSCACHE_STATS=y
# CONFIG_FSCACHE_DEBUG is not set
# CONFIG_CACHEFILES is not set
# end of Caches

#
# CD-ROM/DVD Filesystems
#
# CONFIG_ISO9660_FS is not set
CONFIG_UDF_FS=m
# end of CD-ROM/DVD Filesystems

#
# DOS/FAT/EXFAT/NT Filesystems
#
CONFIG_FAT_FS=m
# CONFIG_MSDOS_FS is not set
CONFIG_VFAT_FS=m
CONFIG_FAT_DEFAULT_CODEPAGE=437
CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"
CONFIG_FAT_DEFAULT_UTF8=y
CONFIG_FAT_KUNIT_TEST=m
CONFIG_EXFAT_FS=m
CONFIG_EXFAT_DEFAULT_IOCHARSET="utf8"
CONFIG_NTFS_FS=m
# CONFIG_NTFS_DEBUG is not set
# CONFIG_NTFS_RW is not set
CONFIG_NTFS3_FS=y
# CONFIG_NTFS3_LZX_XPRESS is not set
CONFIG_NTFS3_FS_POSIX_ACL=y
# end of DOS/FAT/EXFAT/NT Filesystems

#
# Pseudo filesystems
#
CONFIG_PROC_FS=y
CONFIG_PROC_KCORE=y
CONFIG_PROC_SYSCTL=y
CONFIG_PROC_PAGE_MONITOR=y
# CONFIG_PROC_CHILDREN is not set
CONFIG_KERNFS=y
CONFIG_SYSFS=y
CONFIG_TMPFS=y
CONFIG_TMPFS_POSIX_ACL=y
CONFIG_TMPFS_XATTR=y
CONFIG_MEMFD_CREATE=y
CONFIG_CONFIGFS_FS=y
# end of Pseudo filesystems

CONFIG_MISC_FILESYSTEMS=y
# CONFIG_ORANGEFS_FS is not set
CONFIG_ADFS_FS=m
# CONFIG_ADFS_FS_RW is not set
# CONFIG_AFFS_FS is not set
CONFIG_ECRYPT_FS=m
CONFIG_ECRYPT_FS_MESSAGING=y
CONFIG_HFS_FS=m
CONFIG_HFSPLUS_FS=y
# CONFIG_BEFS_FS is not set
CONFIG_BFS_FS=y
# CONFIG_EFS_FS is not set
CONFIG_JFFS2_FS=m
CONFIG_JFFS2_FS_DEBUG=0
CONFIG_JFFS2_FS_WRITEBUFFER=y
# CONFIG_JFFS2_FS_WBUF_VERIFY is not set
CONFIG_JFFS2_SUMMARY=y
# CONFIG_JFFS2_FS_XATTR is not set
# CONFIG_JFFS2_COMPRESSION_OPTIONS is not set
CONFIG_JFFS2_ZLIB=y
CONFIG_JFFS2_RTIME=y
CONFIG_UBIFS_FS=m
# CONFIG_UBIFS_FS_ADVANCED_COMPR is not set
CONFIG_UBIFS_FS_LZO=y
CONFIG_UBIFS_FS_ZLIB=y
CONFIG_UBIFS_FS_ZSTD=y
CONFIG_UBIFS_ATIME_SUPPORT=y
CONFIG_UBIFS_FS_XATTR=y
# CONFIG_UBIFS_FS_SECURITY is not set
CONFIG_UBIFS_FS_AUTHENTICATION=y
CONFIG_CRAMFS=y
CONFIG_CRAMFS_BLOCKDEV=y
CONFIG_CRAMFS_MTD=y
CONFIG_SQUASHFS=y
CONFIG_SQUASHFS_FILE_CACHE=y
# CONFIG_SQUASHFS_FILE_DIRECT is not set
CONFIG_SQUASHFS_DECOMP_SINGLE=y
CONFIG_SQUASHFS_DECOMP_MULTI=y
CONFIG_SQUASHFS_DECOMP_MULTI_PERCPU=y
CONFIG_SQUASHFS_CHOICE_DECOMP_BY_MOUNT=y
CONFIG_SQUASHFS_MOUNT_DECOMP_THREADS=y
# CONFIG_SQUASHFS_XATTR is not set
# CONFIG_SQUASHFS_ZLIB is not set
# CONFIG_SQUASHFS_LZ4 is not set
# CONFIG_SQUASHFS_LZO is not set
# CONFIG_SQUASHFS_XZ is not set
CONFIG_SQUASHFS_ZSTD=y
CONFIG_SQUASHFS_4K_DEVBLK_SIZE=y
CONFIG_SQUASHFS_EMBEDDED=y
CONFIG_SQUASHFS_FRAGMENT_CACHE_SIZE=3
# CONFIG_VXFS_FS is not set
CONFIG_MINIX_FS=m
CONFIG_MINIX_FS_NATIVE_ENDIAN=y
CONFIG_OMFS_FS=m
CONFIG_HPFS_FS=m
CONFIG_QNX4FS_FS=y
CONFIG_QNX6FS_FS=m
# CONFIG_QNX6FS_DEBUG is not set
# CONFIG_ROMFS_FS is not set
CONFIG_PSTORE=m
CONFIG_PSTORE_DEFAULT_KMSG_BYTES=10240
# CONFIG_PSTORE_DEFLATE_COMPRESS is not set
# CONFIG_PSTORE_LZO_COMPRESS is not set
CONFIG_PSTORE_LZ4_COMPRESS=m
CONFIG_PSTORE_LZ4HC_COMPRESS=m
CONFIG_PSTORE_842_COMPRESS=y
# CONFIG_PSTORE_ZSTD_COMPRESS is not set
CONFIG_PSTORE_COMPRESS=y
CONFIG_PSTORE_LZ4_COMPRESS_DEFAULT=y
# CONFIG_PSTORE_LZ4HC_COMPRESS_DEFAULT is not set
# CONFIG_PSTORE_842_COMPRESS_DEFAULT is not set
CONFIG_PSTORE_COMPRESS_DEFAULT="lz4"
CONFIG_PSTORE_CONSOLE=y
# CONFIG_PSTORE_PMSG is not set
# CONFIG_PSTORE_RAM is not set
# CONFIG_PSTORE_BLK is not set
# CONFIG_SYSV_FS is not set
# CONFIG_UFS_FS is not set
# CONFIG_EROFS_FS is not set
# CONFIG_NETWORK_FILESYSTEMS is not set
CONFIG_NLS=y
CONFIG_NLS_DEFAULT="iso8859-1"
CONFIG_NLS_CODEPAGE_437=m
CONFIG_NLS_CODEPAGE_737=m
CONFIG_NLS_CODEPAGE_775=y
# CONFIG_NLS_CODEPAGE_850 is not set
CONFIG_NLS_CODEPAGE_852=y
CONFIG_NLS_CODEPAGE_855=m
CONFIG_NLS_CODEPAGE_857=m
CONFIG_NLS_CODEPAGE_860=m
# CONFIG_NLS_CODEPAGE_861 is not set
CONFIG_NLS_CODEPAGE_862=y
# CONFIG_NLS_CODEPAGE_863 is not set
CONFIG_NLS_CODEPAGE_864=y
# CONFIG_NLS_CODEPAGE_865 is not set
CONFIG_NLS_CODEPAGE_866=m
CONFIG_NLS_CODEPAGE_869=m
CONFIG_NLS_CODEPAGE_936=m
CONFIG_NLS_CODEPAGE_950=m
# CONFIG_NLS_CODEPAGE_932 is not set
CONFIG_NLS_CODEPAGE_949=y
CONFIG_NLS_CODEPAGE_874=m
# CONFIG_NLS_ISO8859_8 is not set
# CONFIG_NLS_CODEPAGE_1250 is not set
# CONFIG_NLS_CODEPAGE_1251 is not set
CONFIG_NLS_ASCII=m
# CONFIG_NLS_ISO8859_1 is not set
CONFIG_NLS_ISO8859_2=y
# CONFIG_NLS_ISO8859_3 is not set
# CONFIG_NLS_ISO8859_4 is not set
CONFIG_NLS_ISO8859_5=m
CONFIG_NLS_ISO8859_6=m
CONFIG_NLS_ISO8859_7=y
# CONFIG_NLS_ISO8859_9 is not set
CONFIG_NLS_ISO8859_13=m
# CONFIG_NLS_ISO8859_14 is not set
# CONFIG_NLS_ISO8859_15 is not set
CONFIG_NLS_KOI8_R=y
# CONFIG_NLS_KOI8_U is not set
CONFIG_NLS_MAC_ROMAN=m
# CONFIG_NLS_MAC_CELTIC is not set
CONFIG_NLS_MAC_CENTEURO=m
CONFIG_NLS_MAC_CROATIAN=y
CONFIG_NLS_MAC_CYRILLIC=y
CONFIG_NLS_MAC_GAELIC=y
# CONFIG_NLS_MAC_GREEK is not set
# CONFIG_NLS_MAC_ICELAND is not set
# CONFIG_NLS_MAC_INUIT is not set
CONFIG_NLS_MAC_ROMANIAN=y
CONFIG_NLS_MAC_TURKISH=m
CONFIG_NLS_UTF8=y
CONFIG_UNICODE=y
CONFIG_UNICODE_NORMALIZATION_SELFTEST=m
CONFIG_IO_WQ=y
# end of File systems

#
# Security options
#
CONFIG_KEYS=y
CONFIG_KEYS_REQUEST_CACHE=y
CONFIG_PERSISTENT_KEYRINGS=y
CONFIG_TRUSTED_KEYS=m
CONFIG_TRUSTED_KEYS_TEE=y
# CONFIG_ENCRYPTED_KEYS is not set
# CONFIG_KEY_DH_OPERATIONS is not set
# CONFIG_SECURITY_DMESG_RESTRICT is not set
# CONFIG_SECURITY is not set
# CONFIG_SECURITYFS is not set
CONFIG_HAVE_HARDENED_USERCOPY_ALLOCATOR=y
# CONFIG_HARDENED_USERCOPY is not set
CONFIG_STATIC_USERMODEHELPER=y
CONFIG_STATIC_USERMODEHELPER_PATH="/sbin/usermode-helper"
CONFIG_DEFAULT_SECURITY_DAC=y
CONFIG_LSM="landlock,lockdown,yama,loadpin,safesetid,integrity,bpf"

#
# Kernel hardening options
#

#
# Memory initialization
#
CONFIG_CC_HAS_AUTO_VAR_INIT_PATTERN=y
CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO_BARE=y
CONFIG_CC_HAS_AUTO_VAR_INIT_ZERO=y
# CONFIG_INIT_STACK_NONE is not set
# CONFIG_INIT_STACK_ALL_PATTERN is not set
CONFIG_INIT_STACK_ALL_ZERO=y
CONFIG_INIT_ON_ALLOC_DEFAULT_ON=y
CONFIG_INIT_ON_FREE_DEFAULT_ON=y
CONFIG_CC_HAS_ZERO_CALL_USED_REGS=y
# CONFIG_ZERO_CALL_USED_REGS is not set
# end of Memory initialization

CONFIG_RANDSTRUCT_NONE=y
# end of Kernel hardening options
# end of Security options

CONFIG_CRYPTO=y

#
# Crypto core or helper
#
CONFIG_CRYPTO_ALGAPI=y
CONFIG_CRYPTO_ALGAPI2=y
CONFIG_CRYPTO_AEAD=y
CONFIG_CRYPTO_AEAD2=y
CONFIG_CRYPTO_SKCIPHER=y
CONFIG_CRYPTO_SKCIPHER2=y
CONFIG_CRYPTO_HASH=y
CONFIG_CRYPTO_HASH2=y
CONFIG_CRYPTO_RNG=y
CONFIG_CRYPTO_RNG2=y
CONFIG_CRYPTO_RNG_DEFAULT=y
CONFIG_CRYPTO_AKCIPHER2=y
CONFIG_CRYPTO_AKCIPHER=y
CONFIG_CRYPTO_KPP2=y
CONFIG_CRYPTO_KPP=y
CONFIG_CRYPTO_ACOMP2=y
CONFIG_CRYPTO_MANAGER=y
CONFIG_CRYPTO_MANAGER2=y
# CONFIG_CRYPTO_USER is not set
CONFIG_CRYPTO_MANAGER_DISABLE_TESTS=y
CONFIG_CRYPTO_NULL=y
CONFIG_CRYPTO_NULL2=y
# CONFIG_CRYPTO_CRYPTD is not set
CONFIG_CRYPTO_AUTHENC=y
CONFIG_CRYPTO_TEST=m
# end of Crypto core or helper

#
# Public-key cryptography
#
CONFIG_CRYPTO_RSA=y
CONFIG_CRYPTO_DH=m
CONFIG_CRYPTO_DH_RFC7919_GROUPS=y
CONFIG_CRYPTO_ECC=y
CONFIG_CRYPTO_ECDH=y
CONFIG_CRYPTO_ECDSA=y
CONFIG_CRYPTO_ECRDSA=y
CONFIG_CRYPTO_SM2=m
# CONFIG_CRYPTO_CURVE25519 is not set
# end of Public-key cryptography

#
# Block ciphers
#
CONFIG_CRYPTO_AES=y
CONFIG_CRYPTO_AES_TI=m
CONFIG_CRYPTO_ANUBIS=m
CONFIG_CRYPTO_ARIA=m
# CONFIG_CRYPTO_BLOWFISH is not set
CONFIG_CRYPTO_CAMELLIA=m
# CONFIG_CRYPTO_CAST5 is not set
# CONFIG_CRYPTO_CAST6 is not set
# CONFIG_CRYPTO_DES is not set
CONFIG_CRYPTO_FCRYPT=y
# CONFIG_CRYPTO_KHAZAD is not set
CONFIG_CRYPTO_SEED=y
CONFIG_CRYPTO_SERPENT=m
# CONFIG_CRYPTO_SM4_GENERIC is not set
CONFIG_CRYPTO_TEA=y
CONFIG_CRYPTO_TWOFISH=y
CONFIG_CRYPTO_TWOFISH_COMMON=y
# end of Block ciphers

#
# Length-preserving ciphers and modes
#
# CONFIG_CRYPTO_ADIANTUM is not set
CONFIG_CRYPTO_ARC4=m
CONFIG_CRYPTO_CHACHA20=m
CONFIG_CRYPTO_CBC=y
# CONFIG_CRYPTO_CFB is not set
CONFIG_CRYPTO_CTR=y
# CONFIG_CRYPTO_CTS is not set
CONFIG_CRYPTO_ECB=y
# CONFIG_CRYPTO_HCTR2 is not set
CONFIG_CRYPTO_KEYWRAP=y
CONFIG_CRYPTO_LRW=y
# CONFIG_CRYPTO_OFB is not set
CONFIG_CRYPTO_PCBC=m
# CONFIG_CRYPTO_XTS is not set
# end of Length-preserving ciphers and modes

#
# AEAD (authenticated encryption with associated data) ciphers
#
# CONFIG_CRYPTO_AEGIS128 is not set
# CONFIG_CRYPTO_CHACHA20POLY1305 is not set
CONFIG_CRYPTO_CCM=y
CONFIG_CRYPTO_GCM=y
# CONFIG_CRYPTO_SEQIV is not set
CONFIG_CRYPTO_ECHAINIV=y
CONFIG_CRYPTO_ESSIV=y
# end of AEAD (authenticated encryption with associated data) ciphers

#
# Hashes, digests, and MACs
#
# CONFIG_CRYPTO_BLAKE2B is not set
CONFIG_CRYPTO_CMAC=m
CONFIG_CRYPTO_GHASH=y
CONFIG_CRYPTO_HMAC=y
CONFIG_CRYPTO_MD4=y
CONFIG_CRYPTO_MD5=m
# CONFIG_CRYPTO_MICHAEL_MIC is not set
# CONFIG_CRYPTO_POLY1305 is not set
CONFIG_CRYPTO_RMD160=m
CONFIG_CRYPTO_SHA1=y
CONFIG_CRYPTO_SHA256=y
CONFIG_CRYPTO_SHA512=y
# CONFIG_CRYPTO_SHA3 is not set
CONFIG_CRYPTO_SM3=m
# CONFIG_CRYPTO_SM3_GENERIC is not set
CONFIG_CRYPTO_STREEBOG=y
# CONFIG_CRYPTO_VMAC is not set
# CONFIG_CRYPTO_WP512 is not set
# CONFIG_CRYPTO_XCBC is not set
CONFIG_CRYPTO_XXHASH=y
# end of Hashes, digests, and MACs

#
# CRCs (cyclic redundancy checks)
#
CONFIG_CRYPTO_CRC32C=y
CONFIG_CRYPTO_CRC32=m
CONFIG_CRYPTO_CRCT10DIF=y
CONFIG_CRYPTO_CRC64_ROCKSOFT=y
# end of CRCs (cyclic redundancy checks)

#
# Compression
#
CONFIG_CRYPTO_DEFLATE=y
CONFIG_CRYPTO_LZO=m
CONFIG_CRYPTO_842=m
CONFIG_CRYPTO_LZ4=y
CONFIG_CRYPTO_LZ4HC=m
CONFIG_CRYPTO_ZSTD=y
# end of Compression

#
# Random number generation
#
CONFIG_CRYPTO_ANSI_CPRNG=y
CONFIG_CRYPTO_DRBG_MENU=y
CONFIG_CRYPTO_DRBG_HMAC=y
CONFIG_CRYPTO_DRBG_HASH=y
# CONFIG_CRYPTO_DRBG_CTR is not set
CONFIG_CRYPTO_DRBG=y
CONFIG_CRYPTO_JITTERENTROPY=y
# end of Random number generation

#
# Userspace interface
#
CONFIG_CRYPTO_USER_API=y
CONFIG_CRYPTO_USER_API_HASH=y
CONFIG_CRYPTO_USER_API_SKCIPHER=y
CONFIG_CRYPTO_USER_API_RNG=y
CONFIG_CRYPTO_USER_API_RNG_CAVP=y
CONFIG_CRYPTO_USER_API_AEAD=y
CONFIG_CRYPTO_USER_API_ENABLE_OBSOLETE=y
# end of Userspace interface

CONFIG_CRYPTO_HASH_INFO=y

#
# Accelerated Cryptographic Algorithms for CPU (sparc64)
#
# end of Accelerated Cryptographic Algorithms for CPU (sparc64)

# CONFIG_CRYPTO_HW is not set
CONFIG_ASYMMETRIC_KEY_TYPE=y
CONFIG_ASYMMETRIC_PUBLIC_KEY_SUBTYPE=y
CONFIG_X509_CERTIFICATE_PARSER=y
CONFIG_PKCS8_PRIVATE_KEY_PARSER=y
CONFIG_PKCS7_MESSAGE_PARSER=y
CONFIG_PKCS7_TEST_KEY=m
CONFIG_SIGNED_PE_FILE_VERIFICATION=y
# CONFIG_FIPS_SIGNATURE_SELFTEST is not set

#
# Certificates for signature checking
#
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
# CONFIG_SYSTEM_EXTRA_CERTIFICATE is not set
# CONFIG_SECONDARY_TRUSTED_KEYRING is not set
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
# CONFIG_SYSTEM_REVOCATION_LIST is not set
CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE=y
# end of Certificates for signature checking

#
# Library routines
#
CONFIG_LINEAR_RANGES=y
CONFIG_PACKING=y
CONFIG_BITREVERSE=y
CONFIG_GENERIC_STRNCPY_FROM_USER=y
CONFIG_GENERIC_STRNLEN_USER=y
CONFIG_GENERIC_NET_UTILS=y
CONFIG_CORDIC=m
# CONFIG_PRIME_NUMBERS is not set
CONFIG_RATIONAL=y
CONFIG_GENERIC_PCI_IOMAP=y
CONFIG_STMP_DEVICE=y

#
# Crypto library routines
#
CONFIG_CRYPTO_LIB_UTILS=y
CONFIG_CRYPTO_LIB_AES=y
CONFIG_CRYPTO_LIB_ARC4=m
CONFIG_CRYPTO_LIB_GF128MUL=y
CONFIG_CRYPTO_LIB_BLAKE2S_GENERIC=y
CONFIG_CRYPTO_LIB_CHACHA_GENERIC=y
CONFIG_CRYPTO_LIB_CHACHA=y
CONFIG_CRYPTO_LIB_CURVE25519_GENERIC=m
CONFIG_CRYPTO_LIB_CURVE25519=m
CONFIG_CRYPTO_LIB_POLY1305_RSIZE=1
CONFIG_CRYPTO_LIB_POLY1305_GENERIC=y
CONFIG_CRYPTO_LIB_POLY1305=y
CONFIG_CRYPTO_LIB_CHACHA20POLY1305=m
CONFIG_CRYPTO_LIB_SHA1=y
CONFIG_CRYPTO_LIB_SHA256=y
# end of Crypto library routines

CONFIG_CRC_CCITT=y
CONFIG_CRC16=y
CONFIG_CRC_T10DIF=y
CONFIG_CRC64_ROCKSOFT=y
CONFIG_CRC_ITU_T=y
CONFIG_CRC32=y
# CONFIG_CRC32_SELFTEST is not set
# CONFIG_CRC32_SLICEBY8 is not set
# CONFIG_CRC32_SLICEBY4 is not set
CONFIG_CRC32_SARWATE=y
# CONFIG_CRC32_BIT is not set
CONFIG_CRC64=y
CONFIG_CRC4=y
CONFIG_CRC7=m
CONFIG_LIBCRC32C=y
CONFIG_CRC8=y
CONFIG_XXHASH=y
# CONFIG_RANDOM32_SELFTEST is not set
CONFIG_842_COMPRESS=m
CONFIG_842_DECOMPRESS=m
CONFIG_ZLIB_INFLATE=y
CONFIG_ZLIB_DEFLATE=y
CONFIG_LZO_COMPRESS=m
CONFIG_LZO_DECOMPRESS=y
CONFIG_LZ4_COMPRESS=y
CONFIG_LZ4HC_COMPRESS=m
CONFIG_LZ4_DECOMPRESS=y
CONFIG_ZSTD_COMMON=y
CONFIG_ZSTD_COMPRESS=y
CONFIG_ZSTD_DECOMPRESS=y
CONFIG_XZ_DEC=y
CONFIG_XZ_DEC_X86=y
CONFIG_XZ_DEC_POWERPC=y
CONFIG_XZ_DEC_IA64=y
CONFIG_XZ_DEC_ARM=y
CONFIG_XZ_DEC_ARMTHUMB=y
CONFIG_XZ_DEC_SPARC=y
CONFIG_XZ_DEC_MICROLZMA=y
CONFIG_XZ_DEC_BCJ=y
# CONFIG_XZ_DEC_TEST is not set
CONFIG_DECOMPRESS_BZIP2=y
CONFIG_DECOMPRESS_XZ=y
CONFIG_DECOMPRESS_LZO=y
CONFIG_DECOMPRESS_ZSTD=y
CONFIG_GENERIC_ALLOCATOR=y
CONFIG_REED_SOLOMON=m
CONFIG_REED_SOLOMON_DEC16=y
CONFIG_BCH=y
CONFIG_TEXTSEARCH=y
CONFIG_TEXTSEARCH_KMP=y
CONFIG_TEXTSEARCH_BM=y
CONFIG_TEXTSEARCH_FSM=y
CONFIG_INTERVAL_TREE=y
CONFIG_INTERVAL_TREE_SPAN_ITER=y
CONFIG_ASSOCIATIVE_ARRAY=y
CONFIG_HAS_IOMEM=y
CONFIG_HAS_IOPORT_MAP=y
CONFIG_HAS_DMA=y
CONFIG_DMA_OPS=y
CONFIG_NEED_SG_DMA_LENGTH=y
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_DMA_DECLARE_COHERENT=y
CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU=y
CONFIG_DMA_NONCOHERENT_MMAP=y
CONFIG_DMA_COHERENT_POOL=y
CONFIG_DMA_DIRECT_REMAP=y
# CONFIG_DMA_API_DEBUG is not set
CONFIG_SGL_ALLOC=y
CONFIG_DQL=y
CONFIG_GLOB=y
CONFIG_GLOB_SELFTEST=m
CONFIG_NLATTR=y
CONFIG_GENERIC_ATOMIC64=y
CONFIG_CLZ_TAB=y
CONFIG_IRQ_POLL=y
CONFIG_MPILIB=y
CONFIG_DIMLIB=y
CONFIG_LIBFDT=y
CONFIG_OID_REGISTRY=y
CONFIG_FONT_SUPPORT=y
CONFIG_FONT_8x16=y
CONFIG_FONT_AUTOSELECT=y
CONFIG_SG_SPLIT=y
CONFIG_SG_POOL=y
CONFIG_SBITMAP=y
# CONFIG_PARMAN is not set
CONFIG_OBJAGG=y
# end of Library routines

CONFIG_PLDMFW=y
CONFIG_POLYNOMIAL=m

#
# Kernel hacking
#

#
# printk and dmesg options
#
CONFIG_PRINTK_TIME=y
# CONFIG_PRINTK_CALLER is not set
# CONFIG_STACKTRACE_BUILD_ID is not set
CONFIG_CONSOLE_LOGLEVEL_DEFAULT=7
CONFIG_CONSOLE_LOGLEVEL_QUIET=4
CONFIG_MESSAGE_LOGLEVEL_DEFAULT=4
CONFIG_DYNAMIC_DEBUG=y
CONFIG_DYNAMIC_DEBUG_CORE=y
# CONFIG_SYMBOLIC_ERRNAME is not set
CONFIG_DEBUG_BUGVERBOSE=y
# end of printk and dmesg options

# CONFIG_DEBUG_KERNEL is not set

#
# Compile-time checks and compiler options
#
CONFIG_AS_HAS_NON_CONST_LEB128=y
CONFIG_FRAME_WARN=1024
CONFIG_STRIP_ASM_SYMS=y
# CONFIG_HEADERS_INSTALL is not set
CONFIG_DEBUG_SECTION_MISMATCH=y
CONFIG_SECTION_MISMATCH_WARN_ONLY=y
# end of Compile-time checks and compiler options

#
# Generic Kernel Debugging Instruments
#
CONFIG_MAGIC_SYSRQ=y
CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE=0x1
CONFIG_MAGIC_SYSRQ_SERIAL=y
CONFIG_MAGIC_SYSRQ_SERIAL_SEQUENCE=""
# CONFIG_DEBUG_FS is not set
CONFIG_HAVE_ARCH_KGDB=y
CONFIG_UBSAN=y
CONFIG_CC_HAS_UBSAN_BOUNDS=y
CONFIG_UBSAN_BOUNDS=y
CONFIG_UBSAN_ONLY_BOUNDS=y
CONFIG_UBSAN_SHIFT=y
CONFIG_UBSAN_DIV_ZERO=y
CONFIG_UBSAN_UNREACHABLE=y
CONFIG_UBSAN_BOOL=y
# CONFIG_UBSAN_ENUM is not set
CONFIG_TEST_UBSAN=m
CONFIG_HAVE_KCSAN_COMPILER=y
# end of Generic Kernel Debugging Instruments

#
# Networking Debugging
#
# end of Networking Debugging

#
# Memory Debugging
#
CONFIG_PAGE_EXTENSION=y
CONFIG_SLUB_DEBUG=y
CONFIG_SLUB_DEBUG_ON=y
CONFIG_PAGE_POISONING=y
CONFIG_DEBUG_MEMORY_INIT=y
CONFIG_CC_HAS_KASAN_GENERIC=y
CONFIG_CC_HAS_WORKING_NOSANITIZE_ADDRESS=y
# end of Memory Debugging

#
# Debug Oops, Lockups and Hangs
#
# CONFIG_PANIC_ON_OOPS is not set
CONFIG_PANIC_ON_OOPS_VALUE=0
CONFIG_PANIC_TIMEOUT=0
CONFIG_TEST_LOCKUP=m
# end of Debug Oops, Lockups and Hangs

#
# Scheduler Debugging
#
# end of Scheduler Debugging

# CONFIG_DEBUG_TIMEKEEPING is not set

#
# Lock Debugging (spinlocks, mutexes, etc...)
#
CONFIG_WW_MUTEX_SELFTEST=m
# end of Lock Debugging (spinlocks, mutexes, etc...)

# CONFIG_DEBUG_IRQFLAGS is not set
CONFIG_WARN_ALL_UNSEEDED_RANDOM=y
CONFIG_HAVE_DEBUG_BUGVERBOSE=y

#
# Debug kernel data structures
#
CONFIG_DEBUG_LIST=y
CONFIG_BUG_ON_DATA_CORRUPTION=y
# end of Debug kernel data structures

#
# RCU Debugging
#
# end of RCU Debugging

# CONFIG_SAMPLES is not set

#
# sparc Debugging
#
# end of sparc Debugging

#
# Kernel Testing and Coverage
#
CONFIG_KUNIT=m
# CONFIG_KUNIT_DEBUGFS is not set
CONFIG_KUNIT_TEST=m
# CONFIG_KUNIT_EXAMPLE_TEST is not set
CONFIG_KUNIT_ALL_TESTS=m
# CONFIG_KUNIT_DEFAULT_ENABLED is not set
CONFIG_CC_HAS_SANCOV_TRACE_PC=y
# CONFIG_RUNTIME_TESTING_MENU is not set
# end of Kernel Testing and Coverage

#
# Rust hacking
#
# end of Rust hacking

CONFIG_WARN_MISSING_DOCUMENTS=y
CONFIG_WARN_ABI_ERRORS=y
# end of Kernel hacking

--sH9aJYIxL/Y0OuZN
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--sH9aJYIxL/Y0OuZN--


