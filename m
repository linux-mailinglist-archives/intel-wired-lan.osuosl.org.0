Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61361931E30
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2024 02:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CD50403D3;
	Tue, 16 Jul 2024 00:54:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWq_pN64dqPA; Tue, 16 Jul 2024 00:54:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F20C040400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721091264;
	bh=8xXdX3GZmAu81ihBJGLBjqCd9w7+wELeh+0JFkfYlH8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xD1lbfAdaSYb3k6+LYCvA7F3r3E3Nb3HlVAZkEZKlNX56JgTM8LF6Fg1J/t9IVkMW
	 hzuKUGWhqpeLETxfT9mywOqJzx9a8ycNPjNtrG7y8xg1+jsrLSe3Gc0lOb4prSupFT
	 fn11TNSk3W4WhnrhWq2T003B/oXTs6o1dZUyjERt9v7uMJ9Ep2Cp6Xx+fE7HGdh90y
	 cXSOotrE8tlw1Xi9NSi7Qz3TS6fE9VyHt/eS7UVuMtLh3AEWPjnbW8wt6Go9OqJPRq
	 656tk7EMgIr3cmJYBaOMG8q66ym2ObZ4q2Ew4rQVn9aLUkWYI539TsDHuytmZLPX+o
	 ilgyxq67WGJ7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F20C040400;
	Tue, 16 Jul 2024 00:54:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 277621BF97C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 00:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21058403D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 00:54:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jNTn1SP89oHN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2024 00:54:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1CC62403CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CC62403CE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CC62403CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 00:54:18 +0000 (UTC)
X-CSE-ConnectionGUID: PIA73Sf0SFuHqNJ/PM43bg==
X-CSE-MsgGUID: 8t26cHndR8+BkEdIwkJokQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18642246"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="18642246"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 17:54:18 -0700
X-CSE-ConnectionGUID: CuHlWOWtS/SqdMG7kZTB3g==
X-CSE-MsgGUID: b4tUjdSpR1Wj0LRPUTKZ6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="49900221"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 15 Jul 2024 17:54:16 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sTWSM-000ei8-1R
 for intel-wired-lan@lists.osuosl.org; Tue, 16 Jul 2024 00:54:14 +0000
Date: Tue, 16 Jul 2024 08:54:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407160800.rAfGaGZ5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721091259; x=1752627259;
 h=date:from:to:subject:message-id;
 bh=pr9/z/qWGOkZY6zbI8QcS5ZeI/bow/vKzR20XGCQClE=;
 b=i11yVa6b5/VKAMUKrYWy1baHrEnT+Vu4faWFZO+cvXq4xyxeKacBdQEn
 xmq8WDTH5QWYy9LuNNrJPQcneZ24W6HAh+bksbvdFRBNrY4WqGKfs9znZ
 94vX8MfVX3Xv2P/3UrndYI7+gmw8++o7P1V/9E6ZRUaUtTDzSl46ESgEx
 FTMWATBT16Qr295M7fQD9Y1JBn5hCNfk6DL/y7Q315OJSspZ/h5/bJkwx
 deGiWooxOgMr4dwKZxPI1OXxGakpGVgTB844H68hP2aWQnboXPKx+q+2Y
 2Mrsz88J8dumVqZ1lxS2Ae8fhiodrQNaWHEmCDZkPAOimZHaSBLEA6OvC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=i11yVa6b
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 f8321fa75102246d7415a6af441872f6637c93ab
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
branch HEAD: f8321fa75102246d7415a6af441872f6637c93ab  virtio_net: Fix napi_skb_cache_put warning

elapsed time: 1185m

configs tested: 281
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                      axs103_smp_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                        nsimosci_defconfig   gcc-13.2.0
arc                   randconfig-001-20240715   gcc-13.2.0
arc                   randconfig-001-20240716   gcc-13.2.0
arc                   randconfig-002-20240715   gcc-13.2.0
arc                   randconfig-002-20240716   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                         bcm2835_defconfig   clang-19
arm                        clps711x_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                       imx_v4_v5_defconfig   clang-19
arm                           imxrt_defconfig   gcc-13.2.0
arm                      jornada720_defconfig   gcc-13.2.0
arm                            mps2_defconfig   clang-19
arm                         nhk8815_defconfig   gcc-13.2.0
arm                          pxa3xx_defconfig   gcc-13.2.0
arm                             pxa_defconfig   gcc-13.2.0
arm                   randconfig-001-20240715   gcc-13.2.0
arm                   randconfig-001-20240716   gcc-13.2.0
arm                   randconfig-002-20240715   gcc-13.2.0
arm                   randconfig-002-20240716   gcc-13.2.0
arm                   randconfig-003-20240715   gcc-13.2.0
arm                   randconfig-003-20240716   gcc-13.2.0
arm                   randconfig-004-20240715   gcc-13.2.0
arm                   randconfig-004-20240716   gcc-13.2.0
arm                        shmobile_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240715   gcc-13.2.0
arm64                 randconfig-001-20240716   gcc-13.2.0
arm64                 randconfig-002-20240715   gcc-13.2.0
arm64                 randconfig-002-20240716   gcc-13.2.0
arm64                 randconfig-003-20240715   gcc-13.2.0
arm64                 randconfig-003-20240716   gcc-13.2.0
arm64                 randconfig-004-20240715   gcc-13.2.0
arm64                 randconfig-004-20240716   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240715   gcc-13.2.0
csky                  randconfig-001-20240716   gcc-13.2.0
csky                  randconfig-002-20240715   gcc-13.2.0
csky                  randconfig-002-20240716   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240715   clang-18
i386         buildonly-randconfig-001-20240716   clang-18
i386         buildonly-randconfig-002-20240715   clang-18
i386         buildonly-randconfig-002-20240716   clang-18
i386         buildonly-randconfig-003-20240715   gcc-13
i386         buildonly-randconfig-003-20240716   clang-18
i386         buildonly-randconfig-004-20240715   gcc-12
i386         buildonly-randconfig-004-20240716   clang-18
i386         buildonly-randconfig-005-20240715   clang-18
i386         buildonly-randconfig-005-20240716   clang-18
i386         buildonly-randconfig-006-20240715   gcc-13
i386         buildonly-randconfig-006-20240716   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240715   gcc-13
i386                  randconfig-001-20240716   clang-18
i386                  randconfig-002-20240715   clang-18
i386                  randconfig-002-20240716   clang-18
i386                  randconfig-003-20240715   clang-18
i386                  randconfig-003-20240716   clang-18
i386                  randconfig-004-20240715   gcc-13
i386                  randconfig-004-20240716   clang-18
i386                  randconfig-005-20240715   gcc-13
i386                  randconfig-005-20240716   clang-18
i386                  randconfig-006-20240715   gcc-13
i386                  randconfig-006-20240716   clang-18
i386                  randconfig-011-20240715   gcc-9
i386                  randconfig-011-20240716   clang-18
i386                  randconfig-012-20240715   gcc-13
i386                  randconfig-012-20240716   clang-18
i386                  randconfig-013-20240715   gcc-7
i386                  randconfig-013-20240716   clang-18
i386                  randconfig-014-20240715   clang-18
i386                  randconfig-014-20240716   clang-18
i386                  randconfig-015-20240715   clang-18
i386                  randconfig-015-20240716   clang-18
i386                  randconfig-016-20240715   clang-18
i386                  randconfig-016-20240716   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240715   gcc-13.2.0
loongarch             randconfig-001-20240716   gcc-13.2.0
loongarch             randconfig-002-20240715   gcc-13.2.0
loongarch             randconfig-002-20240716   gcc-13.2.0
m68k                             alldefconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
microblaze                      mmu_defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                          ath25_defconfig   gcc-13.2.0
mips                     cu1830-neo_defconfig   gcc-13.2.0
mips                            gpr_defconfig   clang-19
mips                      maltasmvp_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240715   gcc-13.2.0
nios2                 randconfig-001-20240716   gcc-13.2.0
nios2                 randconfig-002-20240715   gcc-13.2.0
nios2                 randconfig-002-20240716   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240715   gcc-13.2.0
parisc                randconfig-001-20240716   gcc-13.2.0
parisc                randconfig-002-20240715   gcc-13.2.0
parisc                randconfig-002-20240716   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                    adder875_defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                      arches_defconfig   gcc-13.2.0
powerpc                       holly_defconfig   clang-19
powerpc                   microwatt_defconfig   gcc-13.2.0
powerpc                     mpc5200_defconfig   gcc-13.2.0
powerpc                      pcm030_defconfig   gcc-13.2.0
powerpc                      pmac32_defconfig   gcc-13.2.0
powerpc                      ppc44x_defconfig   clang-19
powerpc               randconfig-001-20240715   gcc-13.2.0
powerpc               randconfig-001-20240716   gcc-13.2.0
powerpc               randconfig-002-20240715   gcc-13.2.0
powerpc               randconfig-002-20240716   gcc-13.2.0
powerpc               randconfig-003-20240715   gcc-13.2.0
powerpc               randconfig-003-20240716   gcc-13.2.0
powerpc                     redwood_defconfig   clang-19
powerpc                     tqm8555_defconfig   clang-19
powerpc64             randconfig-001-20240715   gcc-13.2.0
powerpc64             randconfig-001-20240716   gcc-13.2.0
powerpc64             randconfig-002-20240715   gcc-13.2.0
powerpc64             randconfig-002-20240716   gcc-13.2.0
powerpc64             randconfig-003-20240715   gcc-13.2.0
powerpc64             randconfig-003-20240716   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240715   gcc-13.2.0
riscv                 randconfig-001-20240716   gcc-13.2.0
riscv                 randconfig-002-20240715   gcc-13.2.0
riscv                 randconfig-002-20240716   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240715   gcc-13.2.0
s390                  randconfig-001-20240716   gcc-13.2.0
s390                  randconfig-002-20240715   gcc-13.2.0
s390                  randconfig-002-20240716   gcc-13.2.0
s390                       zfcpdump_defconfig   clang-19
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                        apsh4ad0a_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                               j2_defconfig   gcc-13.2.0
sh                    randconfig-001-20240715   gcc-13.2.0
sh                    randconfig-001-20240716   gcc-13.2.0
sh                    randconfig-002-20240715   gcc-13.2.0
sh                    randconfig-002-20240716   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sh                   secureedge5410_defconfig   gcc-13.2.0
sh                        sh7757lcr_defconfig   gcc-13.2.0
sh                            shmin_defconfig   gcc-13.2.0
sh                            titan_defconfig   gcc-13.2.0
sparc                            alldefconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240715   gcc-13.2.0
sparc64               randconfig-001-20240716   gcc-13.2.0
sparc64               randconfig-002-20240715   gcc-13.2.0
sparc64               randconfig-002-20240716   gcc-13.2.0
um                               allmodconfig   clang-19
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240715   gcc-13.2.0
um                    randconfig-001-20240716   gcc-13.2.0
um                    randconfig-002-20240715   gcc-13.2.0
um                    randconfig-002-20240716   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240715   clang-18
x86_64       buildonly-randconfig-001-20240716   gcc-13
x86_64       buildonly-randconfig-002-20240715   clang-18
x86_64       buildonly-randconfig-002-20240716   gcc-13
x86_64       buildonly-randconfig-003-20240715   clang-18
x86_64       buildonly-randconfig-003-20240716   gcc-13
x86_64       buildonly-randconfig-004-20240715   clang-18
x86_64       buildonly-randconfig-004-20240716   gcc-13
x86_64       buildonly-randconfig-005-20240715   clang-18
x86_64       buildonly-randconfig-005-20240716   gcc-13
x86_64       buildonly-randconfig-006-20240715   clang-18
x86_64       buildonly-randconfig-006-20240716   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240715   clang-18
x86_64                randconfig-001-20240716   gcc-13
x86_64                randconfig-002-20240715   clang-18
x86_64                randconfig-002-20240716   gcc-13
x86_64                randconfig-003-20240715   clang-18
x86_64                randconfig-003-20240716   gcc-13
x86_64                randconfig-004-20240715   clang-18
x86_64                randconfig-004-20240716   gcc-13
x86_64                randconfig-005-20240715   clang-18
x86_64                randconfig-005-20240716   gcc-13
x86_64                randconfig-006-20240715   clang-18
x86_64                randconfig-006-20240716   gcc-13
x86_64                randconfig-011-20240715   clang-18
x86_64                randconfig-011-20240716   gcc-13
x86_64                randconfig-012-20240715   clang-18
x86_64                randconfig-012-20240716   gcc-13
x86_64                randconfig-013-20240715   clang-18
x86_64                randconfig-013-20240716   gcc-13
x86_64                randconfig-014-20240715   clang-18
x86_64                randconfig-014-20240716   gcc-13
x86_64                randconfig-015-20240715   clang-18
x86_64                randconfig-015-20240716   gcc-13
x86_64                randconfig-016-20240715   clang-18
x86_64                randconfig-016-20240716   gcc-13
x86_64                randconfig-071-20240715   clang-18
x86_64                randconfig-071-20240716   gcc-13
x86_64                randconfig-072-20240715   clang-18
x86_64                randconfig-072-20240716   gcc-13
x86_64                randconfig-073-20240715   clang-18
x86_64                randconfig-073-20240716   gcc-13
x86_64                randconfig-074-20240715   clang-18
x86_64                randconfig-074-20240716   gcc-13
x86_64                randconfig-075-20240715   clang-18
x86_64                randconfig-075-20240716   gcc-13
x86_64                randconfig-076-20240715   clang-18
x86_64                randconfig-076-20240716   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                  audio_kc705_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240715   gcc-13.2.0
xtensa                randconfig-001-20240716   gcc-13.2.0
xtensa                randconfig-002-20240715   gcc-13.2.0
xtensa                randconfig-002-20240716   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
