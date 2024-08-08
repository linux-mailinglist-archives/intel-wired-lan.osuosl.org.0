Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B151C94C095
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 17:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E47540B3D;
	Thu,  8 Aug 2024 15:10:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qiVChzCfdrBE; Thu,  8 Aug 2024 15:10:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 830B340B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723129834;
	bh=/tH7sr1TaQfBB3+D/MOzezWFcXHBEIfNs69Fsy2cBdM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CnYTj0u2+9Ytq2JIa+H946RZ02NP7Bf64MdLRpyUAbVL81vuMYwICjsronJmHJzDy
	 hpB6PIKsDEBrrq7AY6scUBb6U+0we6nC33scooJohC4CeMhJT0KrOayl4OwXjAYHCa
	 Vy16pxSKAGesQFU02qwpR4vDpow/rksuNH2ogOR3J3okvK5pOcs079MtxNaPiqkVyt
	 l4f4Yi/+gXKAKkFD5uoqNGHRCSGX5iwxhI3B3X1LuE2I10uXmYdF9rHfDl8HhPHPhx
	 TpA/Yk+4sgocT/23THgkI3xhPThR12UtZgIaeGR7RYrpudy0ZiBMZw4Fgiu0fvRaTa
	 TJ5ZSvSR6g8zg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 830B340B41;
	Thu,  8 Aug 2024 15:10:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F094F1BF291
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:10:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD28340E0E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:10:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tqr5CpeZ8pl9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 15:10:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4984240042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4984240042
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4984240042
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 15:10:30 +0000 (UTC)
X-CSE-ConnectionGUID: BFdICJhoR/m6dH0cNcKPaA==
X-CSE-MsgGUID: 6YFbL42UQd2QwZr+v78b1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="43779303"
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="43779303"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 08:10:29 -0700
X-CSE-ConnectionGUID: 0Rg9pcL5RSq2nA50BPqM+g==
X-CSE-MsgGUID: XKQUDPmkRPWE2YThLVdXyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,273,1716274800"; d="scan'208";a="57338634"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by fmviesa010.fm.intel.com with ESMTP; 08 Aug 2024 08:10:28 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sc4mX-0006GM-1H
 for intel-wired-lan@lists.osuosl.org; Thu, 08 Aug 2024 15:10:25 +0000
Date: Thu, 08 Aug 2024 23:10:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408082319.gDq6DaGR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723129831; x=1754665831;
 h=date:from:to:subject:message-id;
 bh=UVkh1tNIYQt3Bhw4yiOhBTJiwapkNlzBJDV2DETBTo0=;
 b=dv0hwZ7PUNCQSfv/ioHsfRR+5sRXs2FHKalDxpuphWsVCW+CakxM5L1N
 YjMeZ9iMf3/u1OrEMw4LSobCIz8xMJeJlw60IujgGGTe1AQvhP5okvAld
 UfsKJREx5Y/ZuyZWYedsGix7AKIIYoVrAaLGqkdn0Do0ecY9Dc+j107SP
 zwyn5+INxvVnDf6eHtwAYuvK+Dr9IB7CafIj7R4Sqy0WR5J3X8813QzMd
 XjjaVNKo4iATiu70R/vnWrJceaWCiGYMXAWuulh3qicCEVZ/K6vdPqle/
 W6i/ZjTzkGC849W3a1+9M/DAf/W3Uz59m33g+2N5BCaOGbwEmZzQFGTpX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dv0hwZ7P
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 c181da18a7302c5de510fe975a3a333299c6e4b7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: c181da18a7302c5de510fe975a3a333299c6e4b7  ice: Fix incorrect assigns of FEC counts

elapsed time: 928m

configs tested: 178
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   gcc-13.2.0
arm                            mmp2_defconfig   gcc-14.1.0
arm                       netwinder_defconfig   gcc-14.1.0
arm                           spitz_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240808   clang-18
i386         buildonly-randconfig-002-20240808   clang-18
i386         buildonly-randconfig-002-20240808   gcc-12
i386         buildonly-randconfig-003-20240808   clang-18
i386         buildonly-randconfig-004-20240808   clang-18
i386         buildonly-randconfig-005-20240808   clang-18
i386         buildonly-randconfig-006-20240808   clang-18
i386         buildonly-randconfig-006-20240808   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240808   clang-18
i386                  randconfig-001-20240808   gcc-12
i386                  randconfig-002-20240808   clang-18
i386                  randconfig-002-20240808   gcc-12
i386                  randconfig-003-20240808   clang-18
i386                  randconfig-004-20240808   clang-18
i386                  randconfig-004-20240808   gcc-12
i386                  randconfig-005-20240808   clang-18
i386                  randconfig-005-20240808   gcc-12
i386                  randconfig-006-20240808   clang-18
i386                  randconfig-006-20240808   gcc-12
i386                  randconfig-011-20240808   clang-18
i386                  randconfig-012-20240808   clang-18
i386                  randconfig-012-20240808   gcc-11
i386                  randconfig-013-20240808   clang-18
i386                  randconfig-014-20240808   clang-18
i386                  randconfig-014-20240808   gcc-11
i386                  randconfig-015-20240808   clang-18
i386                  randconfig-015-20240808   gcc-12
i386                  randconfig-016-20240808   clang-18
i386                  randconfig-016-20240808   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                       m5475evb_defconfig   gcc-14.1.0
m68k                        mvme16x_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                           ip30_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                       virt_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                      arches_defconfig   gcc-14.1.0
powerpc                 mpc8313_rdb_defconfig   gcc-14.1.0
powerpc                     redwood_defconfig   gcc-14.1.0
powerpc                     sequoia_defconfig   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                        sh7763rdp_defconfig   gcc-14.1.0
sparc                            alldefconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240808   gcc-12
x86_64       buildonly-randconfig-002-20240808   gcc-12
x86_64       buildonly-randconfig-003-20240808   clang-18
x86_64       buildonly-randconfig-003-20240808   gcc-12
x86_64       buildonly-randconfig-004-20240808   clang-18
x86_64       buildonly-randconfig-004-20240808   gcc-12
x86_64       buildonly-randconfig-005-20240808   clang-18
x86_64       buildonly-randconfig-005-20240808   gcc-12
x86_64       buildonly-randconfig-006-20240808   clang-18
x86_64       buildonly-randconfig-006-20240808   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240808   gcc-12
x86_64                randconfig-002-20240808   clang-18
x86_64                randconfig-002-20240808   gcc-12
x86_64                randconfig-003-20240808   gcc-12
x86_64                randconfig-004-20240808   clang-18
x86_64                randconfig-004-20240808   gcc-12
x86_64                randconfig-005-20240808   clang-18
x86_64                randconfig-005-20240808   gcc-12
x86_64                randconfig-006-20240808   clang-18
x86_64                randconfig-006-20240808   gcc-12
x86_64                randconfig-011-20240808   clang-18
x86_64                randconfig-011-20240808   gcc-12
x86_64                randconfig-012-20240808   gcc-12
x86_64                randconfig-013-20240808   gcc-12
x86_64                randconfig-014-20240808   clang-18
x86_64                randconfig-014-20240808   gcc-12
x86_64                randconfig-015-20240808   gcc-12
x86_64                randconfig-016-20240808   clang-18
x86_64                randconfig-016-20240808   gcc-12
x86_64                randconfig-071-20240808   clang-18
x86_64                randconfig-071-20240808   gcc-12
x86_64                randconfig-072-20240808   clang-18
x86_64                randconfig-072-20240808   gcc-12
x86_64                randconfig-073-20240808   clang-18
x86_64                randconfig-073-20240808   gcc-12
x86_64                randconfig-074-20240808   gcc-12
x86_64                randconfig-075-20240808   clang-18
x86_64                randconfig-075-20240808   gcc-12
x86_64                randconfig-076-20240808   gcc-12
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                       common_defconfig   gcc-14.1.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
