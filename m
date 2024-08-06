Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 825AB949294
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 16:05:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4557A60834;
	Tue,  6 Aug 2024 14:05:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sgcMEehw-iWj; Tue,  6 Aug 2024 14:05:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAB4060848
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722953103;
	bh=h5vlmUhvyRzf4AZlUU/93/Riw/f5JXMyBLWwPLs1tuY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qsNv8+PjxXtz+9Fqc4PWShtOTihpdpKOd2Ygy6qMBiZ4saeVevfBMmuX9Mxvcc8Dz
	 6MbjKSjoX6Br3z1izxZzAlhUyfA3uvyqhIi6S2CyGOecwA8fPDD4gEwmAh2rV8Edfi
	 LeyZkVV1eVgbRseV/FN8dgb/IN/DQ/67UFsAOniFzGla8RvmvDePUgmp4F/+NTrvph
	 j25NP4Ky3R74w0uEpq8rvOYUE6gpr8CRgdk31Sqfd9POl7Sn8i5g3v856ieYLt3SR7
	 9YS9VqBzhiDgljWWC1c4CQ+usEdPe6z0lpuuo1xRZLnqnLpxmZ3Er7379pc9HdN+GL
	 uadRlJmFYiNRg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAB4060848;
	Tue,  6 Aug 2024 14:05:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 625C01BF349
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 14:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AFCE403ED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 14:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p02eBynyobLm for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 14:04:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DC743403D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DC743403D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC743403D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 14:04:58 +0000 (UTC)
X-CSE-ConnectionGUID: HBj8jKCcS6OIxJ/ayRj4nQ==
X-CSE-MsgGUID: qd+FwnU/QWm431t12IK2zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="32355583"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="32355583"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 07:04:58 -0700
X-CSE-ConnectionGUID: kgnCGjHMS2WOeIbbOlt++Q==
X-CSE-MsgGUID: hjy5a4oIS46y8Hq/nqOuSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56171140"
Received: from unknown (HELO b6bf6c95bbab) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 06 Aug 2024 07:04:56 -0700
Received: from kbuild by b6bf6c95bbab with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sbKo2-0004Xs-2Y
 for intel-wired-lan@lists.osuosl.org; Tue, 06 Aug 2024 14:04:54 +0000
Date: Tue, 06 Aug 2024 22:04:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202408062247.p2DAgr48-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722953099; x=1754489099;
 h=date:from:to:subject:message-id;
 bh=HvEIIuCMScDp6exa3Zs7lCuQK2jKkH3BvwzlzI8wPbw=;
 b=f1SCO+EJPcRHWEDjakOcq31jqcm+4G433UE6yXA6UN/Pamn/E49Tf+Ex
 PmiHLurq8LTpPd96RFGxa7p6uZNGIgEvvENeGqNGGjfmdJ2TRZx7Xzi6e
 H9C0eA3+zEtRPk1iMyM9PfAkmFnc1/MAIqmUAPoVy1S6q8t40CTg/X8Wk
 croejZSk3w1mmGStcGQ9gSaAMB1AoVbGgIMulmavCEMn+uVYfXrod1CL6
 yUJ9RiPsnqG68I5UBgBKuvhB0PDL3aPedtCKJEuHt0uO+Y3TkzJXARkyB
 ifJWUJRHY4h9K9wZ2sSLFbDPdR7HYn4TNFbqt2BMv/8N69OB2m7MVZXE5
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f1SCO+EJ
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 e5741d024b36ae7c31db835fc69dfecbe5681b76
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: e5741d024b36ae7c31db835fc69dfecbe5681b76  ice: fix accounting for filters shared by multiple VSIs

elapsed time: 1298m

configs tested: 139
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                 nsimosci_hs_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240806   gcc-13.2.0
arc                   randconfig-002-20240806   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                              allyesconfig   gcc-14.1.0
arm                                 defconfig   clang-14
arm                         mv78xx0_defconfig   clang-20
arm                   randconfig-001-20240806   clang-20
arm                   randconfig-002-20240806   gcc-14.1.0
arm                   randconfig-003-20240806   gcc-14.1.0
arm                   randconfig-004-20240806   gcc-14.1.0
arm                             rpc_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240806   clang-20
arm64                 randconfig-002-20240806   clang-20
arm64                 randconfig-003-20240806   clang-14
arm64                 randconfig-004-20240806   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240806   gcc-14.1.0
csky                  randconfig-002-20240806   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240806   clang-20
hexagon               randconfig-002-20240806   clang-17
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240806   gcc-11
i386         buildonly-randconfig-002-20240806   gcc-12
i386         buildonly-randconfig-003-20240806   gcc-12
i386         buildonly-randconfig-004-20240806   gcc-12
i386         buildonly-randconfig-005-20240806   clang-18
i386         buildonly-randconfig-006-20240806   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240806   clang-18
i386                  randconfig-002-20240806   gcc-12
i386                  randconfig-003-20240806   gcc-12
i386                  randconfig-004-20240806   gcc-12
i386                  randconfig-005-20240806   clang-18
i386                  randconfig-006-20240806   clang-18
i386                  randconfig-011-20240806   clang-18
i386                  randconfig-012-20240806   gcc-12
i386                  randconfig-013-20240806   clang-18
i386                  randconfig-014-20240806   clang-18
i386                  randconfig-015-20240806   clang-18
i386                  randconfig-016-20240806   clang-18
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240806   gcc-14.1.0
loongarch             randconfig-002-20240806   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                        m5407c3_defconfig   gcc-14.1.0
m68k                           virt_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                       bmips_be_defconfig   gcc-14.1.0
mips                         db1xxx_defconfig   clang-20
mips                          eyeq6_defconfig   clang-14
mips                           ip22_defconfig   gcc-14.1.0
mips                        vocore2_defconfig   clang-15
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240806   gcc-14.1.0
nios2                 randconfig-002-20240806   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                       virt_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240806   gcc-14.1.0
parisc                randconfig-002-20240806   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc               randconfig-001-20240806   gcc-14.1.0
powerpc               randconfig-003-20240806   clang-20
powerpc                     tqm8540_defconfig   gcc-14.1.0
powerpc                     tqm8555_defconfig   clang-20
powerpc64             randconfig-001-20240806   gcc-14.1.0
powerpc64             randconfig-002-20240806   clang-16
riscv                            allmodconfig   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240806   gcc-14.1.0
riscv                 randconfig-002-20240806   clang-20
s390                             alldefconfig   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240806   clang-20
s390                  randconfig-002-20240806   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240806   gcc-14.1.0
sh                    randconfig-002-20240806   gcc-14.1.0
sh                  sh7785lcr_32bit_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240806   gcc-14.1.0
sparc64               randconfig-002-20240806   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                    randconfig-001-20240806   clang-20
um                    randconfig-002-20240806   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                generic_kc705_defconfig   gcc-14.1.0
xtensa                          iss_defconfig   gcc-14.1.0
xtensa                randconfig-001-20240806   gcc-14.1.0
xtensa                randconfig-002-20240806   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
