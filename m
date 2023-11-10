Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7387E84C7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Nov 2023 21:54:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC1114270B;
	Fri, 10 Nov 2023 20:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC1114270B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699649690;
	bh=aIILcArJZ/Qc4Wt5C9C/KjwPkYH+hKjH/IsKUx1NaS4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zaiyLraWhSJxuiLkYx+CKV4hVmOws6W7u5WC3gam+u8OFl19Bi4//Vb2F+LNTDn6C
	 eKnNDN7kWg+ieRNy8Tmd8rnsz0RrNOvHe3+RyY9EF1MiKVZ29tpdnpiZLXRpGedwY3
	 a07/ejcEhLkhReu2SNPzFZ/QPYNvVkkPATPdkhhME5EE5xHmgA5fOVwEYAqzgRbZlz
	 HyNoZQSOt5uqY/n3Cz/2gAKkM5xGXJ2NGqyjizwp6Pw2rrhe2FyrbmwVE6CJTr8RyV
	 AMm3P7MOB9ELUHwuu89FKxJw5pCQuDrdKuhea66hblF48LPzxGXUT+RpoYx431n07D
	 NJ/6v1qQzmHpA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L1JYJk6Ll3EC; Fri, 10 Nov 2023 20:54:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E31E42567;
	Fri, 10 Nov 2023 20:54:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E31E42567
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 791541BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 20:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CAD34257B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 20:54:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CAD34257B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Cj16hSSlupE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Nov 2023 20:54:36 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21B9142567
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Nov 2023 20:54:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21B9142567
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="394137162"
X-IronPort-AV: E=Sophos;i="6.03,293,1694761200"; d="scan'208";a="394137162"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 12:54:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10890"; a="937253466"
X-IronPort-AV: E=Sophos;i="6.03,293,1694761200"; d="scan'208";a="937253466"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 10 Nov 2023 12:54:33 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r1YWN-0009tV-0w
 for intel-wired-lan@lists.osuosl.org; Fri, 10 Nov 2023 20:54:31 +0000
Date: Sat, 11 Nov 2023 04:53:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311110422.eokSQqEf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699649676; x=1731185676;
 h=date:from:to:subject:message-id;
 bh=VBkhvKsLimbnqH6Xiutjl/dszhmSudqM6SBluPs46xg=;
 b=FXVXH7+2aHsIUTftwEvjEgR8Wb+b1HO+dHuj4VECCPM+zfLujiuVdgzp
 vJNC3jZ2KTiDycWsC5n2Fqd6pjcXS0J/G9rQF9Q0DlJ0juHRVkB2FcpOf
 K4XIm8Ev6bjAU1KLYWtz5SiQ1dZ7a1r4mChVuph6MKY8svqZQWIVKZczI
 o2RD43CwMEiwX3plWMRvnV4Zrzu+bLu+IC+Eked++N9kjhcLbC9CLCWSB
 cydeEqB+eJlmHjzmPOts6GjmAqyJ7GoYK298Rpuc7vjfyIr1kB+YIgA3n
 0ksMxALOE8D5yNZkQDdN3mHoTU17Ln4AwOgLFmRU4mZgPG0vfLjC34eqI
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FXVXH7+2
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 90c4fba6434d6a91c009f2604664052dc37c952c
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 90c4fba6434d6a91c009f2604664052dc37c952c  iavf: validate tx_coalesce_usecs even if rx_coalesce_usecs is zero

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-buildonly-randconfig-005-20231110
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- m68k-defconfig
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- nios2-randconfig-001-20231110
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- parisc-randconfig-001-20231110
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- powerpc64-randconfig-002-20231110
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- sparc64-randconfig-001-20231110
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
|-- x86_64-buildonly-randconfig-003-20231110
|   |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
|   |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
|   `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter
`-- xtensa-randconfig-002-20231110
    |-- kernel-bpf-task_iter.c:error:CSS_TASK_ITER_THREADED-undeclared-(first-use-in-this-function)
    |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_end
    |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_next
    |-- kernel-bpf-task_iter.c:error:implicit-declaration-of-function-css_task_iter_start
    `-- kernel-bpf-task_iter.c:error:invalid-application-of-sizeof-to-incomplete-type-struct-css_task_iter

elapsed time: 1457m

configs tested: 169
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231110   gcc  
arc                   randconfig-002-20231110   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231110   gcc  
arm                   randconfig-002-20231110   gcc  
arm                   randconfig-003-20231110   gcc  
arm                   randconfig-004-20231110   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231110   gcc  
arm64                 randconfig-002-20231110   gcc  
arm64                 randconfig-003-20231110   gcc  
arm64                 randconfig-004-20231110   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231110   gcc  
csky                  randconfig-002-20231110   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231110   gcc  
i386         buildonly-randconfig-002-20231110   gcc  
i386         buildonly-randconfig-003-20231110   gcc  
i386         buildonly-randconfig-004-20231110   gcc  
i386         buildonly-randconfig-005-20231110   gcc  
i386         buildonly-randconfig-006-20231110   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231110   gcc  
i386                  randconfig-002-20231110   gcc  
i386                  randconfig-003-20231110   gcc  
i386                  randconfig-004-20231110   gcc  
i386                  randconfig-005-20231110   gcc  
i386                  randconfig-006-20231110   gcc  
i386                  randconfig-011-20231110   gcc  
i386                  randconfig-012-20231110   gcc  
i386                  randconfig-013-20231110   gcc  
i386                  randconfig-014-20231110   gcc  
i386                  randconfig-015-20231110   gcc  
i386                  randconfig-016-20231110   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231110   gcc  
loongarch             randconfig-002-20231110   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231110   gcc  
nios2                 randconfig-002-20231110   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231110   gcc  
parisc                randconfig-002-20231110   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc               randconfig-001-20231110   gcc  
powerpc               randconfig-002-20231110   gcc  
powerpc               randconfig-003-20231110   gcc  
powerpc64             randconfig-001-20231110   gcc  
powerpc64             randconfig-002-20231110   gcc  
powerpc64             randconfig-003-20231110   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231110   gcc  
riscv                 randconfig-002-20231110   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231110   gcc  
s390                  randconfig-002-20231110   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231110   gcc  
sh                    randconfig-002-20231110   gcc  
sh                   rts7751r2dplus_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231110   gcc  
sparc                 randconfig-002-20231110   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231110   gcc  
sparc64               randconfig-002-20231110   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231110   gcc  
um                    randconfig-002-20231110   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231110   gcc  
x86_64       buildonly-randconfig-002-20231110   gcc  
x86_64       buildonly-randconfig-003-20231110   gcc  
x86_64       buildonly-randconfig-004-20231110   gcc  
x86_64       buildonly-randconfig-006-20231110   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231110   gcc  
x86_64                randconfig-002-20231110   gcc  
x86_64                randconfig-003-20231110   gcc  
x86_64                randconfig-004-20231110   gcc  
x86_64                randconfig-005-20231110   gcc  
x86_64                randconfig-006-20231110   gcc  
x86_64                randconfig-011-20231110   gcc  
x86_64                randconfig-012-20231110   gcc  
x86_64                randconfig-013-20231110   gcc  
x86_64                randconfig-014-20231110   gcc  
x86_64                randconfig-015-20231110   gcc  
x86_64                randconfig-016-20231110   gcc  
x86_64                randconfig-071-20231110   gcc  
x86_64                randconfig-072-20231110   gcc  
x86_64                randconfig-073-20231110   gcc  
x86_64                randconfig-074-20231110   gcc  
x86_64                randconfig-075-20231110   gcc  
x86_64                randconfig-076-20231110   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                              defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20231110   gcc  
xtensa                randconfig-002-20231110   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
