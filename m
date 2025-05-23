Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3080BAC252C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 16:38:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CCA26417D1;
	Fri, 23 May 2025 14:38:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k77g5YsYfT3Q; Fri, 23 May 2025 14:38:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACCA4417D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748011085;
	bh=4CqyVUhiqEjWtZcoIzBFT6Y5BIvZrINL4wjtIJLmzq0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7ZmlASLEWWoRajcGuWijrsV59+4foKvlPAwUJ/L4MW5VZ/SwugploPgYzVuVzDcLu
	 A+u5sMs7wj/OR1ZjyxjPAAnVlHT0lxC7sgHJvwCbTYQeoTyX6jKbdN+r6aKd80zL0q
	 LZFinNFb46j9LFkNhXOuVvCL3RsCFR4uy6IL7WTnKd+4lnzwK5qkOuU0f9cgUyaRBc
	 rdhV19jcsmh1cWE8vOECeZEAYkFWMVfC8FlPSmf1uTva0k2xduM/13nkT29ZxlOqvw
	 W/01C/hW828nSAbHXbx28sCLEnGofj3b7bF8LAK05J8LTxSDrYwlHc6W+2Jz1Tx9gy
	 IePhq2UBNw1Cw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACCA4417D4;
	Fri, 23 May 2025 14:38:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2EC5F119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 14:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C8B140FED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 14:38:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WWkWlFTBn1yf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 14:38:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 161EF40BF7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 161EF40BF7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 161EF40BF7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 14:38:01 +0000 (UTC)
X-CSE-ConnectionGUID: dkuJoJTkS2id/yiHUffJpg==
X-CSE-MsgGUID: r3CKL/VCSLK6gPRjGnL1Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="61120688"
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="61120688"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2025 07:38:01 -0700
X-CSE-ConnectionGUID: oy9PQ8F5QkKsemY2VHiVjg==
X-CSE-MsgGUID: hvzVRA4LTBSLhNYOIdwMlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,309,1739865600"; d="scan'208";a="146329429"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 23 May 2025 07:38:00 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uITX4-000QTA-0A
 for intel-wired-lan@lists.osuosl.org; Fri, 23 May 2025 14:37:58 +0000
Date: Fri, 23 May 2025 22:37:19 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505232209.E1ug62b2-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748011082; x=1779547082;
 h=date:from:to:subject:message-id;
 bh=Hu4waaCcbKHzXEO3kNB1cU7iMJoBwi8c8i/fcyaKMuA=;
 b=d52SDh0+fimSgvJwrrMWr8GTqXyAtWeh3pXN5r7CAB0KizrEomKkA+PX
 0WQOKT3vt7h9StbmLSsDx2bIomolr9OG05J7P5PuFhy0sqQDVCU8n0sJ/
 rtGFTL85l8cisxPpwxPH2X9luQJ115HKIKCWQsPC9P+9CXthnrHp8Enlo
 7Gqeb4xoLPN3vmt6lHZ4b6la+kFt+JRGE6B5WgjJf4190qwvdKNP9BOFy
 zI/SRnzbmXlSbEakMjI6enDKXCsAIFYDLOvgzwfFpVT0fbUjXpi9QtOg1
 iMJPNatDT1wTas3Ek0DyoBnkjBMEh2TD4sRYTpVtnnMKg1w3PvuR6NziS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d52SDh0+
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 3fab2d2d901a87710f691ba9488b3fd284ee8296
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 3fab2d2d901a87710f691ba9488b3fd284ee8296  Merge tag 'linux-can-fixes-for-6.15-20250521' of git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can

elapsed time: 1616m

configs tested: 150
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    gcc-14.2.0
arc                          axs103_defconfig    gcc-14.2.0
arc                   randconfig-001-20250523    gcc-15.1.0
arc                   randconfig-002-20250523    gcc-10.5.0
arc                           tb10x_defconfig    gcc-14.2.0
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-14.2.0
arm                            dove_defconfig    gcc-14.2.0
arm                      integrator_defconfig    clang-21
arm                      jornada720_defconfig    clang-21
arm                             mxs_defconfig    clang-21
arm                   randconfig-001-20250523    clang-16
arm                   randconfig-002-20250523    gcc-8.5.0
arm                   randconfig-003-20250523    gcc-7.5.0
arm                   randconfig-004-20250523    clang-21
arm                         s5pv210_defconfig    gcc-14.2.0
arm                       spear13xx_defconfig    gcc-14.2.0
arm                           stm32_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250523    gcc-8.5.0
arm64                 randconfig-002-20250523    clang-16
arm64                 randconfig-003-20250523    clang-21
arm64                 randconfig-004-20250523    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250523    gcc-10.5.0
csky                  randconfig-002-20250523    gcc-14.2.0
hexagon                          alldefconfig    clang-21
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250523    clang-21
hexagon               randconfig-002-20250523    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250523    clang-20
i386        buildonly-randconfig-002-20250523    clang-20
i386        buildonly-randconfig-003-20250523    clang-20
i386        buildonly-randconfig-004-20250523    clang-20
i386        buildonly-randconfig-005-20250523    clang-20
i386        buildonly-randconfig-006-20250523    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250523    gcc-15.1.0
loongarch             randconfig-002-20250523    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                         amcore_defconfig    gcc-14.2.0
m68k                          hp300_defconfig    gcc-14.2.0
m68k                       m5208evb_defconfig    gcc-14.2.0
m68k                            mac_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    clang-18
mips                      bmips_stb_defconfig    clang-21
mips                      maltaaprp_defconfig    clang-21
mips                          rb532_defconfig    clang-18
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250523    gcc-10.5.0
nios2                 randconfig-002-20250523    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-14.2.0
openrisc                 simple_smp_defconfig    gcc-14.2.0
parisc                           alldefconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-32bit_defconfig    gcc-14.2.0
parisc                randconfig-001-20250523    gcc-9.3.0
parisc                randconfig-002-20250523    gcc-7.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                       ebony_defconfig    clang-21
powerpc                        fsp2_defconfig    gcc-14.2.0
powerpc                      katmai_defconfig    clang-21
powerpc                      mgcoge_defconfig    clang-21
powerpc                 mpc837x_rdb_defconfig    gcc-14.2.0
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250523    clang-21
powerpc               randconfig-002-20250523    clang-21
powerpc               randconfig-003-20250523    clang-20
powerpc                         wii_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250523    clang-21
powerpc64             randconfig-002-20250523    clang-19
powerpc64             randconfig-003-20250523    clang-21
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250523    gcc-8.5.0
riscv                 randconfig-002-20250523    clang-17
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250523    gcc-6.5.0
s390                  randconfig-002-20250523    clang-21
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ecovec24_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                 kfr2r09-romimage_defconfig    gcc-14.2.0
sh                          polaris_defconfig    gcc-14.2.0
sh                    randconfig-001-20250523    gcc-12.4.0
sh                    randconfig-002-20250523    gcc-6.5.0
sh                      rts7751r2d1_defconfig    gcc-14.2.0
sh                   rts7751r2dplus_defconfig    gcc-14.2.0
sh                           se7343_defconfig    gcc-14.2.0
sh                           se7780_defconfig    gcc-14.2.0
sh                   sh7724_generic_defconfig    gcc-14.2.0
sh                             shx3_defconfig    gcc-14.2.0
sh                              ul2_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250523    gcc-10.3.0
sparc                 randconfig-002-20250523    gcc-10.3.0
sparc64               randconfig-001-20250523    gcc-9.3.0
sparc64               randconfig-002-20250523    gcc-7.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250523    gcc-12
um                    randconfig-002-20250523    gcc-12
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250523    gcc-12
x86_64      buildonly-randconfig-002-20250523    clang-20
x86_64      buildonly-randconfig-003-20250523    clang-20
x86_64      buildonly-randconfig-004-20250523    clang-20
x86_64      buildonly-randconfig-005-20250523    clang-20
x86_64      buildonly-randconfig-006-20250523    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250523    gcc-9.3.0
xtensa                randconfig-002-20250523    gcc-11.5.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
