Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A958AA77F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Apr 2024 05:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAF464178B;
	Fri, 19 Apr 2024 03:54:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CFQBs0LRBD-d; Fri, 19 Apr 2024 03:54:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 979D941782
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713498883;
	bh=5pBsdfTaQpCjRR9PV5nM/yAokFrEsgUYgxi6QSoqE58=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6nXgT3/d8QTaGUZQWkik9kFOTNlH20+gUml1GhPLb1WLyPjoB0qkBodCegeMjtKVL
	 ibttU8rRNYJHuUNsmDoU3wagzKhiJywZk4290v2FoxeYSzyijFvDYSd5BJjRunx+Ml
	 96AK2z9YMHUKgL5dhfHoM3j6NOFAwCDX+MVZ64IVWh6B6FSxij8z+b1wVe3LWYM7a8
	 NFr/NGymcnizWOyF26ohQ/E2+y/VZy5Zm+IXoRQAgp1m8j18IgRqaEHH5lI+hY99fO
	 h49cpdXsm5YbP1MMQfPzAtPv/Jxuj1aWoLCMyIXucvHRgT5o3pguB3QZj6Med8EjwC
	 WN2Ev/9wvxzaA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 979D941782;
	Fri, 19 Apr 2024 03:54:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D50D51BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 03:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1727607BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 03:54:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l7C8_3Mgfe80 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Apr 2024 03:54:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6B8AD60687
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B8AD60687
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B8AD60687
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Apr 2024 03:54:39 +0000 (UTC)
X-CSE-ConnectionGUID: 89+nWYGcQ3yzQIYIRKZ2fA==
X-CSE-MsgGUID: slfxs+GcTKa99EV5oRCEEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20227628"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20227628"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 20:54:40 -0700
X-CSE-ConnectionGUID: VGY7kUdWTJmtB1TATRAMaA==
X-CSE-MsgGUID: /PUDvhchRuaVH5w2jE/Qaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23063866"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by orviesa010.jf.intel.com with ESMTP; 18 Apr 2024 20:54:39 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rxfKe-0009ZM-1D
 for intel-wired-lan@lists.osuosl.org; Fri, 19 Apr 2024 03:54:36 +0000
Date: Fri, 19 Apr 2024 11:53:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202404191138.vgJKaH5d-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713498881; x=1745034881;
 h=date:from:to:subject:message-id;
 bh=LH3Jsn709i7e2+dx5qsRSMLgV9MFYC/G9Bo1R7kF7ps=;
 b=jHcnf6rHINpt05tVU37z3w4zuc8Zgz80wkySZjM8hI/OP7fQ9PfpHNCZ
 41nTXZdeKl6Lh5j1alBxQu1tcvDCtk6p1QPRCDT7wiVGUr2TIjYuMnT/Y
 b47/rDkjKXW1JACzTMZ3AozIjmyesWafG4VkUfJ5FC78cfrA+xm6kk/qe
 O1EKXTY6w+EVPj/A19xlMUf4rIG529cztXfDpOyCljaX5t9ZLwOxfKnEV
 Y4VsyFuK+BXO5xuiyw9fH6E1AKkuW00AHWa7Th7xAcN0Y7KA83VJuTSV+
 27izoOsQBH14TZrkvgmskmWrpYhXMXewqoD2I/M5959SPUlp3bfjiDeG5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jHcnf6rH
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 aa37f8916d20cf58437d507fc9599492a342b3cd
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: aa37f8916d20cf58437d507fc9599492a342b3cd  virtio_net: Support RX hash XDP hint

elapsed time: 955m

configs tested: 141
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240419   gcc  
arc                   randconfig-002-20240419   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          ixp4xx_defconfig   gcc  
arm                   randconfig-001-20240419   gcc  
arm                   randconfig-003-20240419   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240419   gcc  
csky                  randconfig-002-20240419   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240419   clang
i386                                defconfig   clang
i386                  randconfig-001-20240419   clang
i386                  randconfig-002-20240419   clang
i386                  randconfig-003-20240419   clang
i386                  randconfig-005-20240419   clang
i386                  randconfig-006-20240419   clang
i386                  randconfig-012-20240419   clang
i386                  randconfig-014-20240419   clang
i386                  randconfig-016-20240419   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240419   gcc  
loongarch             randconfig-002-20240419   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     loongson1c_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240419   gcc  
nios2                 randconfig-002-20240419   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240419   gcc  
parisc                randconfig-002-20240419   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc               randconfig-001-20240419   gcc  
powerpc               randconfig-002-20240419   gcc  
powerpc               randconfig-003-20240419   gcc  
powerpc64             randconfig-001-20240419   gcc  
powerpc64             randconfig-002-20240419   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-002-20240419   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                             espt_defconfig   gcc  
sh                    randconfig-001-20240419   gcc  
sh                    randconfig-002-20240419   gcc  
sh                           se7724_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240419   gcc  
sparc64               randconfig-002-20240419   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240419   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240419   clang
x86_64       buildonly-randconfig-003-20240419   clang
x86_64       buildonly-randconfig-004-20240419   clang
x86_64       buildonly-randconfig-005-20240419   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-002-20240419   clang
x86_64                randconfig-005-20240419   clang
x86_64                randconfig-011-20240419   clang
x86_64                randconfig-012-20240419   clang
x86_64                randconfig-013-20240419   clang
x86_64                randconfig-014-20240419   clang
x86_64                randconfig-071-20240419   clang
x86_64                randconfig-073-20240419   clang
x86_64                randconfig-074-20240419   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240419   gcc  
xtensa                randconfig-002-20240419   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
