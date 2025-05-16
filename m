Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB98ABA3BA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 May 2025 21:25:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A0C6661309;
	Fri, 16 May 2025 19:25:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yZqL9OJlQHib; Fri, 16 May 2025 19:25:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 797FC608BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747423523;
	bh=ikXuH/RpWP9Yi4jTIDH0gJs0c7JhniJ8Jv3FDuBl4Io=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KbZB6elguwqXtG5yL4uDcDRaO2wETGBSDCgiUVioLEncRuimYiuWxguqvlw6xCpou
	 vSbbhiY70Vj59R2MZ16jtgEupPl5YvYmmWmaEbAsB1wgzVizSRXmoFU8KBbBqC2OOK
	 vOAxITPC86FgQCAwfK3t2ZHzdkoabC7AnRKSSnb0nPio6taKIcN8jKPBDlBP3ifxKW
	 /u2WisE7T//7Kr7i0FXlGYgCrOAEtnZ2+sctTW6wYn3p4q0JEIiGmB5nRknETaACIO
	 INyRfnCop6ugJf6xJ0e/FYb2BD6WCj3GawIIHAEeFWOu8Q6D1YnrC2Gin/LrECblLj
	 +qG9eqjhxHFvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 797FC608BE;
	Fri, 16 May 2025 19:25:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5AE7722CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 19:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C12560A95
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 19:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BP0jlGB8_FnU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 May 2025 19:25:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 160D1608BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 160D1608BE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 160D1608BE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 May 2025 19:25:19 +0000 (UTC)
X-CSE-ConnectionGUID: B/CRj//iTDaaA3B2tdDi8Q==
X-CSE-MsgGUID: tVbGov0JT7i7mllKV0y8TQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="53224097"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="53224097"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 12:25:19 -0700
X-CSE-ConnectionGUID: LTLf9zkNTxuqa4bWoqn2dA==
X-CSE-MsgGUID: 0cKHoyf5Tf+SKSlQGZBGMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="143748937"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 16 May 2025 12:25:18 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uG0gF-000Je1-2d
 for intel-wired-lan@lists.osuosl.org; Fri, 16 May 2025 19:25:15 +0000
Date: Sat, 17 May 2025 03:24:46 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505170336.CpEdTp4P-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747423520; x=1778959520;
 h=date:from:to:subject:message-id;
 bh=RnY8jqKaMfMb4MXNKpn6WFT/X2AMY7mUyjpYWwB25z0=;
 b=nYxXsRY64cDJI56NXHRjfvSUC8zQhH0/FAPbgaMRBKKFZTUXkHa/NSx3
 WRmTvjW7SCThMoG+rAQNzLHnZC7qckYVYIBEgvEetzrt6Uyqdc10/gCfg
 UafxMykYg4LGoVBfYmvaQFIb9tAL6vVaHuizhPqtDf3ZzOAe6oKwfYYF7
 xLQbHw6AcFYYJLpdbV5Tu8ExnKMwUmhDQcTgrZq98o6Iwy3IxSiFk1kA3
 AWWaV97zUdLBeFGaEQqLtsZ+NETCqWlXOp5r2uSUdPhVXgRO0FT5UrCYW
 M74k9JSQphS9ApO5tHGjlDeS2z+rQWiLrZAnnRWRstQ22HDtOqc8Coc3N
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nYxXsRY6
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 c39b1bb5bc6db7300b8a4b4fdde73f7f1d9dfbcc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: c39b1bb5bc6db7300b8a4b4fdde73f7f1d9dfbcc  Merge tag 'for-net-2025-05-15' of git://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth

elapsed time: 1078m

configs tested: 314
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-19
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                          axs101_defconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                         haps_hs_defconfig    gcc-14.2.0
arc                     haps_hs_smp_defconfig    clang-21
arc                 nsimosci_hs_smp_defconfig    clang-21
arc                   randconfig-001-20250516    gcc-13.3.0
arc                   randconfig-001-20250516    gcc-9.5.0
arc                   randconfig-001-20250517    gcc-10.5.0
arc                   randconfig-001-20250517    gcc-8.5.0
arc                   randconfig-002-20250516    gcc-13.3.0
arc                   randconfig-002-20250516    gcc-9.5.0
arc                   randconfig-002-20250517    gcc-14.2.0
arc                   randconfig-002-20250517    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-19
arm                                 defconfig    gcc-14.2.0
arm                       imx_v6_v7_defconfig    gcc-14.2.0
arm                           imxrt_defconfig    gcc-14.2.0
arm                   randconfig-001-20250516    gcc-7.5.0
arm                   randconfig-001-20250516    gcc-9.5.0
arm                   randconfig-001-20250517    clang-21
arm                   randconfig-001-20250517    gcc-8.5.0
arm                   randconfig-002-20250516    clang-21
arm                   randconfig-002-20250516    gcc-9.5.0
arm                   randconfig-002-20250517    gcc-8.5.0
arm                   randconfig-003-20250516    clang-21
arm                   randconfig-003-20250516    gcc-9.5.0
arm                   randconfig-003-20250517    gcc-8.5.0
arm                   randconfig-004-20250516    clang-21
arm                   randconfig-004-20250516    gcc-9.5.0
arm                   randconfig-004-20250517    clang-21
arm                   randconfig-004-20250517    gcc-8.5.0
arm                        realview_defconfig    clang-21
arm                           sama5_defconfig    gcc-14.2.0
arm                           sama7_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250516    gcc-9.5.0
arm64                 randconfig-001-20250517    clang-17
arm64                 randconfig-001-20250517    gcc-8.5.0
arm64                 randconfig-002-20250516    gcc-9.5.0
arm64                 randconfig-002-20250517    clang-16
arm64                 randconfig-002-20250517    gcc-8.5.0
arm64                 randconfig-003-20250516    gcc-5.5.0
arm64                 randconfig-003-20250516    gcc-9.5.0
arm64                 randconfig-003-20250517    gcc-6.5.0
arm64                 randconfig-003-20250517    gcc-8.5.0
arm64                 randconfig-004-20250516    gcc-9.5.0
arm64                 randconfig-004-20250517    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250516    clang-21
csky                  randconfig-001-20250517    clang-21
csky                  randconfig-001-20250517    gcc-10.5.0
csky                  randconfig-002-20250516    clang-21
csky                  randconfig-002-20250517    clang-21
csky                  randconfig-002-20250517    gcc-14.2.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-19
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250516    clang-21
hexagon               randconfig-001-20250517    clang-21
hexagon               randconfig-002-20250516    clang-21
hexagon               randconfig-002-20250517    clang-21
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250516    clang-20
i386        buildonly-randconfig-001-20250517    clang-20
i386        buildonly-randconfig-002-20250516    clang-20
i386        buildonly-randconfig-002-20250516    gcc-12
i386        buildonly-randconfig-002-20250517    clang-20
i386        buildonly-randconfig-003-20250516    clang-20
i386        buildonly-randconfig-003-20250517    clang-20
i386        buildonly-randconfig-004-20250516    clang-20
i386        buildonly-randconfig-004-20250517    clang-20
i386        buildonly-randconfig-004-20250517    gcc-12
i386        buildonly-randconfig-005-20250516    clang-20
i386        buildonly-randconfig-005-20250517    clang-20
i386        buildonly-randconfig-006-20250516    clang-20
i386        buildonly-randconfig-006-20250516    gcc-12
i386        buildonly-randconfig-006-20250517    clang-20
i386        buildonly-randconfig-006-20250517    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250516    gcc-12
i386                  randconfig-001-20250517    clang-20
i386                  randconfig-002-20250516    gcc-12
i386                  randconfig-002-20250517    clang-20
i386                  randconfig-003-20250516    gcc-12
i386                  randconfig-003-20250517    clang-20
i386                  randconfig-004-20250516    gcc-12
i386                  randconfig-004-20250517    clang-20
i386                  randconfig-005-20250516    gcc-12
i386                  randconfig-005-20250517    clang-20
i386                  randconfig-006-20250516    gcc-12
i386                  randconfig-006-20250517    clang-20
i386                  randconfig-007-20250516    gcc-12
i386                  randconfig-007-20250517    clang-20
i386                  randconfig-011-20250516    gcc-12
i386                  randconfig-011-20250517    gcc-12
i386                  randconfig-012-20250516    gcc-12
i386                  randconfig-012-20250517    gcc-12
i386                  randconfig-013-20250516    gcc-12
i386                  randconfig-013-20250517    gcc-12
i386                  randconfig-014-20250516    gcc-12
i386                  randconfig-014-20250517    gcc-12
i386                  randconfig-015-20250516    gcc-12
i386                  randconfig-015-20250517    gcc-12
i386                  randconfig-016-20250516    gcc-12
i386                  randconfig-016-20250517    gcc-12
i386                  randconfig-017-20250516    gcc-12
i386                  randconfig-017-20250517    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250516    clang-21
loongarch             randconfig-001-20250517    clang-21
loongarch             randconfig-001-20250517    gcc-14.2.0
loongarch             randconfig-002-20250516    clang-21
loongarch             randconfig-002-20250517    clang-21
loongarch             randconfig-002-20250517    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          atari_defconfig    clang-21
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
microblaze                      mmu_defconfig    clang-21
microblaze                      mmu_defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    gcc-14.2.0
mips                         bigsur_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250516    clang-21
nios2                 randconfig-001-20250517    clang-21
nios2                 randconfig-001-20250517    gcc-14.2.0
nios2                 randconfig-002-20250516    clang-21
nios2                 randconfig-002-20250517    clang-21
nios2                 randconfig-002-20250517    gcc-10.5.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250516    clang-21
parisc                randconfig-001-20250517    clang-21
parisc                randconfig-001-20250517    gcc-5.5.0
parisc                randconfig-002-20250516    clang-21
parisc                randconfig-002-20250517    clang-21
parisc                randconfig-002-20250517    gcc-11.5.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                   currituck_defconfig    gcc-14.2.0
powerpc                          g5_defconfig    clang-21
powerpc                      pmac32_defconfig    clang-21
powerpc               randconfig-001-20250516    clang-21
powerpc               randconfig-001-20250517    clang-21
powerpc               randconfig-001-20250517    gcc-6.5.0
powerpc               randconfig-002-20250516    clang-21
powerpc               randconfig-002-20250517    clang-21
powerpc               randconfig-002-20250517    gcc-6.5.0
powerpc               randconfig-003-20250516    clang-21
powerpc               randconfig-003-20250517    clang-16
powerpc               randconfig-003-20250517    clang-21
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250516    clang-21
powerpc64             randconfig-001-20250517    clang-21
powerpc64             randconfig-002-20250516    clang-21
powerpc64             randconfig-002-20250517    clang-21
powerpc64             randconfig-002-20250517    gcc-6.5.0
powerpc64             randconfig-003-20250516    clang-21
powerpc64             randconfig-003-20250517    clang-21
powerpc64             randconfig-003-20250517    gcc-6.5.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250516    gcc-7.5.0
riscv                 randconfig-001-20250517    clang-21
riscv                 randconfig-001-20250517    gcc-9.3.0
riscv                 randconfig-002-20250516    gcc-14.2.0
riscv                 randconfig-002-20250516    gcc-7.5.0
riscv                 randconfig-002-20250517    clang-21
riscv                 randconfig-002-20250517    gcc-9.3.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250516    gcc-7.5.0
s390                  randconfig-001-20250517    gcc-7.5.0
s390                  randconfig-001-20250517    gcc-9.3.0
s390                  randconfig-002-20250516    gcc-7.5.0
s390                  randconfig-002-20250517    gcc-9.3.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                          polaris_defconfig    gcc-14.2.0
sh                    randconfig-001-20250516    gcc-7.5.0
sh                    randconfig-001-20250517    gcc-12.4.0
sh                    randconfig-001-20250517    gcc-9.3.0
sh                    randconfig-002-20250516    gcc-7.5.0
sh                    randconfig-002-20250516    gcc-9.3.0
sh                    randconfig-002-20250517    gcc-10.5.0
sh                    randconfig-002-20250517    gcc-9.3.0
sh                           se7724_defconfig    gcc-14.2.0
sh                           se7780_defconfig    gcc-14.2.0
sh                   sh7770_generic_defconfig    clang-21
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250516    gcc-7.5.0
sparc                 randconfig-001-20250516    gcc-8.5.0
sparc                 randconfig-001-20250517    gcc-11.5.0
sparc                 randconfig-001-20250517    gcc-9.3.0
sparc                 randconfig-002-20250516    gcc-7.5.0
sparc                 randconfig-002-20250516    gcc-8.5.0
sparc                 randconfig-002-20250517    gcc-7.5.0
sparc                 randconfig-002-20250517    gcc-9.3.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250516    gcc-12.4.0
sparc64               randconfig-001-20250516    gcc-7.5.0
sparc64               randconfig-001-20250517    gcc-7.5.0
sparc64               randconfig-001-20250517    gcc-9.3.0
sparc64               randconfig-002-20250516    gcc-14.2.0
sparc64               randconfig-002-20250516    gcc-7.5.0
sparc64               randconfig-002-20250517    gcc-5.5.0
sparc64               randconfig-002-20250517    gcc-9.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250516    clang-21
um                    randconfig-001-20250516    gcc-7.5.0
um                    randconfig-001-20250517    gcc-12
um                    randconfig-001-20250517    gcc-9.3.0
um                    randconfig-002-20250516    gcc-12
um                    randconfig-002-20250516    gcc-7.5.0
um                    randconfig-002-20250517    gcc-12
um                    randconfig-002-20250517    gcc-9.3.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250516    gcc-12
x86_64      buildonly-randconfig-001-20250517    clang-20
x86_64      buildonly-randconfig-001-20250517    gcc-12
x86_64      buildonly-randconfig-002-20250516    gcc-12
x86_64      buildonly-randconfig-002-20250517    clang-20
x86_64      buildonly-randconfig-002-20250517    gcc-12
x86_64      buildonly-randconfig-003-20250516    gcc-12
x86_64      buildonly-randconfig-003-20250517    clang-20
x86_64      buildonly-randconfig-004-20250516    gcc-12
x86_64      buildonly-randconfig-004-20250517    clang-20
x86_64      buildonly-randconfig-005-20250516    gcc-12
x86_64      buildonly-randconfig-005-20250517    clang-20
x86_64      buildonly-randconfig-006-20250516    gcc-12
x86_64      buildonly-randconfig-006-20250517    clang-20
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250516    gcc-12
x86_64                randconfig-001-20250517    gcc-11
x86_64                randconfig-002-20250516    gcc-12
x86_64                randconfig-002-20250517    gcc-11
x86_64                randconfig-003-20250516    gcc-12
x86_64                randconfig-003-20250517    gcc-11
x86_64                randconfig-004-20250516    gcc-12
x86_64                randconfig-004-20250517    gcc-11
x86_64                randconfig-005-20250516    gcc-12
x86_64                randconfig-005-20250517    gcc-11
x86_64                randconfig-006-20250516    gcc-12
x86_64                randconfig-006-20250517    gcc-11
x86_64                randconfig-007-20250516    gcc-12
x86_64                randconfig-007-20250517    gcc-11
x86_64                randconfig-008-20250516    gcc-12
x86_64                randconfig-008-20250517    gcc-11
x86_64                randconfig-071-20250516    clang-20
x86_64                randconfig-072-20250516    clang-20
x86_64                randconfig-073-20250516    clang-20
x86_64                randconfig-074-20250516    clang-20
x86_64                randconfig-075-20250516    clang-20
x86_64                randconfig-076-20250516    clang-20
x86_64                randconfig-077-20250516    clang-20
x86_64                randconfig-078-20250516    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250516    gcc-10.5.0
xtensa                randconfig-001-20250516    gcc-7.5.0
xtensa                randconfig-001-20250517    gcc-9.3.0
xtensa                randconfig-002-20250516    gcc-10.5.0
xtensa                randconfig-002-20250516    gcc-7.5.0
xtensa                randconfig-002-20250517    gcc-13.3.0
xtensa                randconfig-002-20250517    gcc-9.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
