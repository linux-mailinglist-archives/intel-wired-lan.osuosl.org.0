Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6207DABEA8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 06:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2D5C8213C;
	Wed, 21 May 2025 04:07:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cpxw1DwlM-59; Wed, 21 May 2025 04:07:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DBAAE8175C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747800436;
	bh=sL9SWQeetUz0XFG+MTTPGFa6IzhxuAWwxH/2L46NIBM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Nr8uUg+ZfO31kjSwwI567OM8kNKkzsTG6kUxI4nYGKjrsjIKmRyJ2718cSVvP01Kq
	 wFMHXzbYvXYgbc7dmb1THYaYJSJZutiQtWct3PrNAiDSYoSehc0xFacsY42R7Ed0kd
	 gbWfEAA5SNZq6h8WMrfRw2ka/mcpzrG3n4VOQ7VIrTTn8FGuBoArSSsJPs5Y0BSj2d
	 t9f2XDIzNHUCkHlO4WJ3mnRoBh5nsGX0CHkFMGOzj6f3aGmoeOmWmN3ILbwyLTuYNg
	 UjRURm5ueO/ApMiVZbX7mwKzoerTNmrvJRFThROX7D6EVXtAjN7zCeLyGC/sQhS6jF
	 +1Nku54dwslNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBAAE8175C;
	Wed, 21 May 2025 04:07:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AB6C81BF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 04:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91BE940A66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 04:07:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z4v80cs016vj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 04:07:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6750F40A47
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6750F40A47
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6750F40A47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 04:07:13 +0000 (UTC)
X-CSE-ConnectionGUID: fA2JyfV5R0aTOo4iqr2GLg==
X-CSE-MsgGUID: 4DSTobXFSy+1lD4igeWWGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49662513"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49662513"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 21:07:13 -0700
X-CSE-ConnectionGUID: ZpvmPeraRPim487yilPfIw==
X-CSE-MsgGUID: CvZA/hX+Tea/775r4gBjXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="145147825"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 20 May 2025 21:07:12 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uHajW-000Nqs-0U
 for intel-wired-lan@lists.osuosl.org; Wed, 21 May 2025 04:07:10 +0000
Date: Wed, 21 May 2025 12:06:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505211216.Ogw6mIcG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747800435; x=1779336435;
 h=date:from:to:subject:message-id;
 bh=Ms0/cyXA0sXF349mNI8Dzg3ZD3AMrTcKobsRPccoHKE=;
 b=EPhoGVyjFDOVHgMGIJHw6zuuC7DAyPVcGqpZYH7PwwaCz8eKUQkvkILM
 MJBimi9Qkf47tWV+CH+cwHOEBlnBCBpECAs7v+RYEstZEXtA42lBAPexI
 o8YVQXSxUg+eNsGNR9DqrGpoRGtUxViCIiR9aHK6ai8x360fwxDZzTfQM
 8SKTbRYFGPFw00qMbHqwiuGuL+KGMsygf1NpRvwCcZf2MZNtRAFnK3YDX
 Hpzn4X1suMqXLdgj6Fi8p4Rds/jKfBhsj0JNErobV5zUnCynilvNJjG1T
 RJOb8qbNouvbiLUqpJiiI/DsLgt5suRXLjchLcjYJAbg0GAG8/spYDExO
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EPhoGVyj
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 9e89db3d847f2d66d2799c5533d00aebee2be4d1
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
branch HEAD: 9e89db3d847f2d66d2799c5533d00aebee2be4d1  Merge tag 'linux-can-fixes-for-6.15-20250520' of git://git.kernel.org/pub/scm/linux/kernel/git/mkl/linux-can

elapsed time: 807m

configs tested: 218
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250521    clang-21
arc                   randconfig-001-20250521    gcc-10.5.0
arc                   randconfig-002-20250521    clang-21
arc                   randconfig-002-20250521    gcc-12.4.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-19
arm                         bcm2835_defconfig    gcc-14.2.0
arm                        clps711x_defconfig    clang-21
arm                                 defconfig    gcc-14.2.0
arm                          gemini_defconfig    clang-21
arm                   randconfig-001-20250521    clang-21
arm                   randconfig-002-20250521    clang-21
arm                   randconfig-003-20250521    clang-16
arm                   randconfig-003-20250521    clang-21
arm                   randconfig-004-20250521    clang-21
arm                       versatile_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250521    clang-21
arm64                 randconfig-001-20250521    gcc-6.5.0
arm64                 randconfig-002-20250521    clang-21
arm64                 randconfig-002-20250521    gcc-6.5.0
arm64                 randconfig-003-20250521    clang-21
arm64                 randconfig-003-20250521    gcc-8.5.0
arm64                 randconfig-004-20250521    clang-21
arm64                 randconfig-004-20250521    gcc-8.5.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250521    gcc-10.5.0
csky                  randconfig-001-20250521    gcc-14.2.0
csky                  randconfig-002-20250521    gcc-12.4.0
csky                  randconfig-002-20250521    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250521    clang-20
hexagon               randconfig-001-20250521    gcc-14.2.0
hexagon               randconfig-002-20250521    clang-21
hexagon               randconfig-002-20250521    gcc-14.2.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250521    clang-20
i386        buildonly-randconfig-002-20250521    clang-20
i386        buildonly-randconfig-003-20250521    clang-20
i386        buildonly-randconfig-003-20250521    gcc-12
i386        buildonly-randconfig-004-20250521    clang-20
i386        buildonly-randconfig-005-20250521    clang-20
i386        buildonly-randconfig-005-20250521    gcc-12
i386        buildonly-randconfig-006-20250521    clang-20
i386        buildonly-randconfig-006-20250521    gcc-12
i386                                defconfig    clang-20
i386                  randconfig-001-20250521    clang-20
i386                  randconfig-002-20250521    clang-20
i386                  randconfig-003-20250521    clang-20
i386                  randconfig-004-20250521    clang-20
i386                  randconfig-005-20250521    clang-20
i386                  randconfig-006-20250521    clang-20
i386                  randconfig-007-20250521    clang-20
i386                  randconfig-011-20250521    gcc-12
i386                  randconfig-012-20250521    gcc-12
i386                  randconfig-013-20250521    gcc-12
i386                  randconfig-014-20250521    gcc-12
i386                  randconfig-015-20250521    gcc-12
i386                  randconfig-016-20250521    gcc-12
i386                  randconfig-017-20250521    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch                 loongson3_defconfig    gcc-14.2.0
loongarch             randconfig-001-20250521    gcc-14.2.0
loongarch             randconfig-001-20250521    gcc-15.1.0
loongarch             randconfig-002-20250521    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                           virt_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250521    gcc-14.2.0
nios2                 randconfig-002-20250521    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250521    gcc-13.3.0
parisc                randconfig-001-20250521    gcc-14.2.0
parisc                randconfig-002-20250521    gcc-11.5.0
parisc                randconfig-002-20250521    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                       ebony_defconfig    clang-21
powerpc                      katmai_defconfig    clang-21
powerpc                 mpc8313_rdb_defconfig    clang-21
powerpc                     mpc83xx_defconfig    clang-21
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250521    clang-21
powerpc               randconfig-001-20250521    gcc-14.2.0
powerpc               randconfig-002-20250521    gcc-14.2.0
powerpc               randconfig-002-20250521    gcc-8.5.0
powerpc               randconfig-003-20250521    gcc-14.2.0
powerpc               randconfig-003-20250521    gcc-6.5.0
powerpc                      tqm8xx_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250521    gcc-14.2.0
powerpc64             randconfig-001-20250521    gcc-8.5.0
powerpc64             randconfig-002-20250521    gcc-14.2.0
powerpc64             randconfig-002-20250521    gcc-6.5.0
powerpc64             randconfig-003-20250521    clang-21
powerpc64             randconfig-003-20250521    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                    nommu_k210_defconfig    gcc-14.2.0
riscv                 randconfig-001-20250521    gcc-8.5.0
riscv                 randconfig-002-20250521    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250521    clang-20
s390                  randconfig-001-20250521    gcc-8.5.0
s390                  randconfig-002-20250521    clang-21
s390                  randconfig-002-20250521    gcc-8.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20250521    gcc-12.4.0
sh                    randconfig-001-20250521    gcc-8.5.0
sh                    randconfig-002-20250521    gcc-15.1.0
sh                    randconfig-002-20250521    gcc-8.5.0
sh                          rsk7201_defconfig    clang-21
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250521    gcc-13.3.0
sparc                 randconfig-001-20250521    gcc-8.5.0
sparc                 randconfig-002-20250521    gcc-13.3.0
sparc                 randconfig-002-20250521    gcc-8.5.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250521    gcc-13.3.0
sparc64               randconfig-001-20250521    gcc-8.5.0
sparc64               randconfig-002-20250521    gcc-13.3.0
sparc64               randconfig-002-20250521    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250521    clang-21
um                    randconfig-001-20250521    gcc-8.5.0
um                    randconfig-002-20250521    clang-21
um                    randconfig-002-20250521    gcc-8.5.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250521    clang-20
x86_64      buildonly-randconfig-002-20250521    clang-20
x86_64      buildonly-randconfig-003-20250521    gcc-12
x86_64      buildonly-randconfig-004-20250521    gcc-12
x86_64      buildonly-randconfig-005-20250521    clang-20
x86_64      buildonly-randconfig-006-20250521    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250521    gcc-12
x86_64                randconfig-002-20250521    gcc-12
x86_64                randconfig-003-20250521    gcc-12
x86_64                randconfig-004-20250521    gcc-12
x86_64                randconfig-005-20250521    gcc-12
x86_64                randconfig-006-20250521    gcc-12
x86_64                randconfig-007-20250521    gcc-12
x86_64                randconfig-008-20250521    gcc-12
x86_64                randconfig-071-20250521    clang-20
x86_64                randconfig-072-20250521    clang-20
x86_64                randconfig-073-20250521    clang-20
x86_64                randconfig-074-20250521    clang-20
x86_64                randconfig-075-20250521    clang-20
x86_64                randconfig-076-20250521    clang-20
x86_64                randconfig-077-20250521    clang-20
x86_64                randconfig-078-20250521    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  cadence_csp_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250521    gcc-15.1.0
xtensa                randconfig-001-20250521    gcc-8.5.0
xtensa                randconfig-002-20250521    gcc-15.1.0
xtensa                randconfig-002-20250521    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
