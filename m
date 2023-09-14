Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C887A0200
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Sep 2023 12:52:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC5FE4170E;
	Thu, 14 Sep 2023 10:52:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC5FE4170E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694688775;
	bh=tgZt8w0P9jt5oVDOx1vkq2KPqWuQB8M4tUq0VN3W1pE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MVeET4KKU41evgahpXidVNnIYfKZnWH2xmbqqjD2nxJV2q930Ed4YyLXoL2myHbXl
	 rxUAQ09exsGqm7bFKqjkG747cosl5YNw4n6fmDBm/YH7iHMmunsiBJkNPYID5gwe+L
	 vGljkqMbA7KLxixiysy9Sn/jQBa96fBmqrpi1dqbwPZ1BQCET6zw/Pf863OBSaYqnk
	 wYzZn6iB0IB1jLpnadUNIpHQndK+scna+zVhD9cGqLWVgRMBCY0YLsyl1/N7S0/iQA
	 vqqzsrUEJWqaPbfrSNPi2wWnFXjujU6qMiPDW+zOXL3bbtON9z6LnfQL6Egr+TRFYr
	 4wXA1HGO5cvTA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id msrr8jROs5mo; Thu, 14 Sep 2023 10:52:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BF1D40468;
	Thu, 14 Sep 2023 10:52:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BF1D40468
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 808741BF316
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Sep 2023 10:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5A11382CD4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Sep 2023 10:52:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5A11382CD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0t_R7Mf9aenY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Sep 2023 10:52:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23EAB82CCA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Sep 2023 10:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23EAB82CCA
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="382720283"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="382720283"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 03:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="991352011"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="991352011"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2023 03:52:45 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qgjxj-0001Vr-34
 for intel-wired-lan@lists.osuosl.org; Thu, 14 Sep 2023 10:52:43 +0000
Date: Thu, 14 Sep 2023 18:52:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309141835.1C75xuLG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694688768; x=1726224768;
 h=date:from:to:subject:message-id;
 bh=NNsKQYJOAShIfspIlHUj3Ekv7rvO7/fgp2Aor6wVX4s=;
 b=h/j8HdYZBcsUdggFxsjHIVS8cdofpqodNK6KsJWyzv6gwZdGYNuXFywb
 FODkeVXmqCUjOcbRZWyG3u45NYVRmGseCH78oFmkbeDDT6djlDt0bLViv
 1ihIqgCAk36SvMLzAKLcUzd2FNSDLwzjsQmquTpF7TPpsW2uGWjal23e3
 aEuwFWXQ9posNzilIB7y9u/75kdDfjQ3zW7dTcyWtClIeBAUyIHZwQvLY
 kyeGC0q8H4LpSiHs0HuY7e2+hZC9O6vxgxmD6ZQxvOrkP1AsMFqZqnEQr
 Jlj51NxqvgIlnBAfYjVcwO8YWNkINY/hnxcqqh4IF1tK0JE6iTuD75j5d
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h/j8HdYZ
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 7559d6724298004b696ffead61ee5dce1f97e908
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 7559d6724298004b696ffead61ee5dce1f97e908  iavf: Add ability to turn off CRC stripping for VF

elapsed time: 946m

configs tested: 162
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230914   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                          collie_defconfig   clang
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                          moxart_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                   randconfig-001-20230914   gcc  
arm                        vexpress_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   clang
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230914   gcc  
i386         buildonly-randconfig-002-20230914   gcc  
i386         buildonly-randconfig-003-20230914   gcc  
i386         buildonly-randconfig-004-20230914   gcc  
i386         buildonly-randconfig-005-20230914   gcc  
i386         buildonly-randconfig-006-20230914   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230914   gcc  
i386                  randconfig-002-20230914   gcc  
i386                  randconfig-003-20230914   gcc  
i386                  randconfig-004-20230914   gcc  
i386                  randconfig-005-20230914   gcc  
i386                  randconfig-006-20230914   gcc  
i386                  randconfig-011-20230914   gcc  
i386                  randconfig-012-20230914   gcc  
i386                  randconfig-013-20230914   gcc  
i386                  randconfig-014-20230914   gcc  
i386                  randconfig-015-20230914   gcc  
i386                  randconfig-016-20230914   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230914   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                           virt_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1830-neo_defconfig   clang
mips                      malta_kvm_defconfig   clang
mips                         rt305x_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                       holly_defconfig   gcc  
powerpc                 mpc8313_rdb_defconfig   clang
powerpc                      obs600_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                     powernv_defconfig   clang
powerpc                      ppc64e_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230914   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230914   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230914   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230914   gcc  
x86_64       buildonly-randconfig-002-20230914   gcc  
x86_64       buildonly-randconfig-003-20230914   gcc  
x86_64       buildonly-randconfig-004-20230914   gcc  
x86_64       buildonly-randconfig-005-20230914   gcc  
x86_64       buildonly-randconfig-006-20230914   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230914   gcc  
x86_64                randconfig-002-20230914   gcc  
x86_64                randconfig-003-20230914   gcc  
x86_64                randconfig-004-20230914   gcc  
x86_64                randconfig-005-20230914   gcc  
x86_64                randconfig-006-20230914   gcc  
x86_64                randconfig-011-20230914   gcc  
x86_64                randconfig-012-20230914   gcc  
x86_64                randconfig-013-20230914   gcc  
x86_64                randconfig-014-20230914   gcc  
x86_64                randconfig-015-20230914   gcc  
x86_64                randconfig-016-20230914   gcc  
x86_64                randconfig-071-20230914   gcc  
x86_64                randconfig-072-20230914   gcc  
x86_64                randconfig-073-20230914   gcc  
x86_64                randconfig-074-20230914   gcc  
x86_64                randconfig-075-20230914   gcc  
x86_64                randconfig-076-20230914   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                       common_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
