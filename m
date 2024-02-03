Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004DD84890D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Feb 2024 22:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ED4C43C11;
	Sat,  3 Feb 2024 21:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ED4C43C11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706997356;
	bh=RnghTkDJulO9cfatKJG48kBsd/Xzo6v7ACIT82kbBqk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=H421VGGUlTDuvwPft5Gshb4rWaWNFodALGBwzZiAt1/mDwzpbIKEW4f+J3w5xOAzw
	 +nCKbLt0jcqkAZhrq0CI6kb5WinJk9tW/HxMifj7zg7ubHOqOxFoF6tFgs+ndBe2Zm
	 9Z9WoEx3XVvzastAvqMzmk16kRmTpYViELJ1BtpLcET8MCwws+SSSpHpEob1Qx70oB
	 bjD04xntAgdJL7QU8hgWyJdOexx+TdRbt5t1eDVl0szS4y2gPiuI93SzFRI7CeHo8N
	 H1tScwMFpWwB9GxHcKRNt3s3g++tHV31RxMlxvOwKS95ytxb5BkMp6LS3wSfArHHnc
	 Xx51ZsRAo95sw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mPv81vYXRH-F; Sat,  3 Feb 2024 21:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 948E441754;
	Sat,  3 Feb 2024 21:55:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 948E441754
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 446811BF860
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Feb 2024 21:55:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C5E36FAD4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Feb 2024 21:55:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C5E36FAD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zTzuAseDFh9Y for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Feb 2024 21:55:48 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 03 Feb 2024 21:55:47 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA4A06FA75
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DA4A06FA75
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Feb 2024 21:55:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="515466"
X-IronPort-AV: E=Sophos;i="6.05,241,1701158400"; 
   d="scan'208";a="515466"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2024 13:48:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,241,1701158400"; 
   d="scan'208";a="381205"
Received: from lkp-server02.sh.intel.com (HELO 59f4f4cd5935) ([10.239.97.151])
 by orviesa009.jf.intel.com with ESMTP; 03 Feb 2024 13:48:38 -0800
Received: from kbuild by 59f4f4cd5935 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rWNsJ-0005eX-26
 for intel-wired-lan@lists.osuosl.org; Sat, 03 Feb 2024 21:48:35 +0000
Date: Sun, 04 Feb 2024 05:47:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402040557.RM0CVDn4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706997348; x=1738533348;
 h=date:from:to:subject:message-id;
 bh=47CQxvMaCrTYXNsS56HdXggabm/zFV2EnIMOyqKv/v4=;
 b=NzRnOv4ojwgYrNaYtp7nR4rtEs8LgFKZdrvLSmixsuGWDVPancWE70gh
 XvCSEEIcLXiEEJu7Bpk2f+LlrzyFVRGAyKCGyVkfC2Y4DhKMjR7Ni8Lz0
 AAYmcouLXv+KXtvIR5TrMnl17rUGMxBCYpvE3VyDmVOrjr6Y1J6ooRvpf
 7ctQSqWSon+IwvRsRxZOCjkmFkybt7JMtobcVixT3Ir1j8QiZibl+qIm6
 2k7+hzNeNHs5Q8HUHrJrBnGGhRfS6hz5gTvZJO5/MUwbznfjOQM4qM5BW
 AaVfngu92u9zUsbso/BpYlPxTHLb9IJnRABHTQN6yVGtgKruv9FA6MJX8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NzRnOv4o
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 73c59d6fe109d5376e6b9b564789c0189e8d28f3
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 73c59d6fe109d5376e6b9b564789c0189e8d28f3  Merge branch 'net-sched-load-modules-via-alias'

elapsed time: 1597m

configs tested: 244
configs skipped: 3

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
arc                        nsimosci_defconfig   gcc  
arc                   randconfig-001-20240203   gcc  
arc                   randconfig-001-20240204   gcc  
arc                   randconfig-002-20240203   gcc  
arc                   randconfig-002-20240204   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                     davinci_all_defconfig   clang
arm                                 defconfig   clang
arm                           h3600_defconfig   gcc  
arm                       netwinder_defconfig   gcc  
arm                   randconfig-001-20240203   clang
arm                   randconfig-001-20240204   gcc  
arm                   randconfig-002-20240203   clang
arm                   randconfig-003-20240203   gcc  
arm                   randconfig-004-20240203   clang
arm                   randconfig-004-20240204   gcc  
arm                         s5pv210_defconfig   gcc  
arm                        shmobile_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm                       versatile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240203   clang
arm64                 randconfig-001-20240204   gcc  
arm64                 randconfig-002-20240203   clang
arm64                 randconfig-003-20240203   gcc  
arm64                 randconfig-003-20240204   gcc  
arm64                 randconfig-004-20240203   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240203   gcc  
csky                  randconfig-001-20240204   gcc  
csky                  randconfig-002-20240203   gcc  
csky                  randconfig-002-20240204   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240203   clang
hexagon               randconfig-002-20240203   clang
i386                             alldefconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240203   clang
i386         buildonly-randconfig-001-20240204   gcc  
i386         buildonly-randconfig-002-20240203   gcc  
i386         buildonly-randconfig-002-20240204   gcc  
i386         buildonly-randconfig-003-20240203   clang
i386         buildonly-randconfig-003-20240204   gcc  
i386         buildonly-randconfig-004-20240203   clang
i386         buildonly-randconfig-004-20240204   gcc  
i386         buildonly-randconfig-005-20240203   clang
i386         buildonly-randconfig-005-20240204   gcc  
i386         buildonly-randconfig-006-20240203   gcc  
i386         buildonly-randconfig-006-20240204   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240203   clang
i386                  randconfig-002-20240203   gcc  
i386                  randconfig-003-20240203   clang
i386                  randconfig-004-20240203   gcc  
i386                  randconfig-004-20240204   gcc  
i386                  randconfig-005-20240203   clang
i386                  randconfig-006-20240203   gcc  
i386                  randconfig-006-20240204   gcc  
i386                  randconfig-011-20240203   clang
i386                  randconfig-012-20240203   gcc  
i386                  randconfig-012-20240204   gcc  
i386                  randconfig-013-20240203   gcc  
i386                  randconfig-014-20240203   gcc  
i386                  randconfig-015-20240203   gcc  
i386                  randconfig-016-20240203   gcc  
i386                  randconfig-016-20240204   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch             randconfig-001-20240203   gcc  
loongarch             randconfig-001-20240204   gcc  
loongarch             randconfig-002-20240203   gcc  
loongarch             randconfig-002-20240204   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        stmark2_defconfig   gcc  
m68k                          sun3x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze                      mmu_defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson2k_defconfig   gcc  
mips                          rm200_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240203   gcc  
nios2                 randconfig-001-20240204   gcc  
nios2                 randconfig-002-20240203   gcc  
nios2                 randconfig-002-20240204   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                       virt_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240203   gcc  
parisc                randconfig-001-20240204   gcc  
parisc                randconfig-002-20240203   gcc  
parisc                randconfig-002-20240204   gcc  
parisc64                         alldefconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                       ebony_defconfig   clang
powerpc                          g5_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc                    mvme5100_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240203   clang
powerpc               randconfig-001-20240204   gcc  
powerpc               randconfig-002-20240203   clang
powerpc               randconfig-002-20240204   gcc  
powerpc               randconfig-003-20240203   clang
powerpc               randconfig-003-20240204   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc64             randconfig-001-20240203   clang
powerpc64             randconfig-001-20240204   gcc  
powerpc64             randconfig-002-20240203   gcc  
powerpc64             randconfig-003-20240203   clang
powerpc64             randconfig-003-20240204   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240203   clang
riscv                 randconfig-002-20240203   clang
riscv                 randconfig-002-20240204   gcc  
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240203   gcc  
s390                  randconfig-002-20240203   clang
s390                  randconfig-002-20240204   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20240203   gcc  
sh                    randconfig-001-20240204   gcc  
sh                    randconfig-002-20240203   gcc  
sh                    randconfig-002-20240204   gcc  
sh                          rsk7201_defconfig   gcc  
sh                          rsk7203_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240203   gcc  
sparc64               randconfig-001-20240204   gcc  
sparc64               randconfig-002-20240203   gcc  
sparc64               randconfig-002-20240204   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                    randconfig-001-20240203   clang
um                    randconfig-001-20240204   gcc  
um                    randconfig-002-20240203   clang
um                    randconfig-002-20240204   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240203   gcc  
x86_64       buildonly-randconfig-002-20240203   gcc  
x86_64       buildonly-randconfig-003-20240203   gcc  
x86_64       buildonly-randconfig-004-20240203   gcc  
x86_64       buildonly-randconfig-005-20240203   gcc  
x86_64       buildonly-randconfig-006-20240203   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240203   gcc  
x86_64                randconfig-002-20240203   gcc  
x86_64                randconfig-003-20240203   clang
x86_64                randconfig-004-20240203   gcc  
x86_64                randconfig-005-20240203   gcc  
x86_64                randconfig-006-20240203   gcc  
x86_64                randconfig-011-20240203   gcc  
x86_64                randconfig-012-20240203   gcc  
x86_64                randconfig-013-20240203   clang
x86_64                randconfig-014-20240203   clang
x86_64                randconfig-015-20240203   clang
x86_64                randconfig-016-20240203   clang
x86_64                randconfig-071-20240203   clang
x86_64                randconfig-072-20240203   gcc  
x86_64                randconfig-073-20240203   clang
x86_64                randconfig-074-20240203   clang
x86_64                randconfig-075-20240203   clang
x86_64                randconfig-076-20240203   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240203   gcc  
xtensa                randconfig-001-20240204   gcc  
xtensa                randconfig-002-20240203   gcc  
xtensa                randconfig-002-20240204   gcc  
xtensa                    smp_lx200_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
