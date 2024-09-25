Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B6294986540
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 18:59:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B896611B8;
	Wed, 25 Sep 2024 16:59:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AhRnSoiEGPAN; Wed, 25 Sep 2024 16:59:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EAE00611BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727283574;
	bh=vo7Htgvuh+W+iGaOSNf+/SVlVn+q1h/AbyN8U80krkY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=biqClb5tYNgRbOgJS7uu5s0iGnG4QUIuE0chPRZV3LlMXa0w5WsoxIrZO5pXCq1kS
	 eWEQ0kWewzu3Pw7GqHAQ9PgeR0QtuDFsg0rL5jNPcUyNr8Jsfz70uv0lnDc/sREXoD
	 06TZtvIYshYw7mzlEdytthbZsRgL6FjFBMVzpyh015bEOKCx86xH5iIJysgI+ye74G
	 grMYAHqOsV8Il15arxeDCtGZAR6Bw+6zOqCDjQAdWrOOObWk5X/hkDPAt8tt+oJq12
	 PGbAmGP2CVGY9n7XVNgTshcVXDip/rOXBtoVBYca/BDF92nidihc/8wpLkpMs16zfc
	 2LLSXncBIp+/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EAE00611BC;
	Wed, 25 Sep 2024 16:59:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 363A21BF21A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:59:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31DC584ABD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:59:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 35Lk6qcmT5Er for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 16:59:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1048284ABC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1048284ABC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1048284ABC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 16:59:30 +0000 (UTC)
X-CSE-ConnectionGUID: ybMfH3TcSNKE1DRGmLVR7Q==
X-CSE-MsgGUID: jJ7FE+T9TpS6NNVdE/Mylg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="13971817"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="13971817"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 09:59:30 -0700
X-CSE-ConnectionGUID: d+JgcBD2RfqXu+kU+/iS2Q==
X-CSE-MsgGUID: e8mGQKVHSxqoSTxPr762iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="72642385"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 25 Sep 2024 09:59:29 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1stVMM-000Jlb-2a
 for intel-wired-lan@lists.osuosl.org; Wed, 25 Sep 2024 16:59:26 +0000
Date: Thu, 26 Sep 2024 00:58:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409260025.tRb8CEgf-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727283571; x=1758819571;
 h=date:from:to:subject:message-id;
 bh=C5uSqG07D0I+eoCQmGeOttEtmCF9tCPJNpeH7Pom8kE=;
 b=PA+ScE8NhFrGSgu55P5nmsQpmd1j9yYA5FU4tECcKDdqKm4n2z2yx/aH
 uIcjKgvlRiDJwvmcBXwn4bGU96FL6MPP+cCohfMUmpY3uRFTF5d1ND5Fx
 mHSikvYyq0vJ4B0IeJTl0wDHma73KJaNpHoDNc9Ct0gEmmGpznESYimHM
 1SCVhcZVdlvq6thUbwEGVUsuSSwyMshFcBvDxxa92Xkmy4RBtwsKGk4CS
 4PN+9r5UfurDJ8rIR6KT/bl52l5c/byTgRhP+HNZfhxwRDboMICdazR2T
 pUNxZs2Mfzj62vRCGsih2vyGR/P8h6AUyz/QnWqpi6yXjxshq7ngpBhq2
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PA+ScE8N
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5b254fc607367e7420d07d72a2595a676bc1f84a
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
branch HEAD: 5b254fc607367e7420d07d72a2595a676bc1f84a  igbvf: remove unused spinlock

elapsed time: 1024m

configs tested: 133
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20240925    gcc-13.2.0
arc                   randconfig-002-20240925    gcc-13.2.0
arc                    vdk_hs38_smp_defconfig    clang-20
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                      jornada720_defconfig    clang-20
arm                   randconfig-001-20240925    gcc-14.1.0
arm                   randconfig-002-20240925    clang-20
arm                   randconfig-003-20240925    clang-20
arm                   randconfig-004-20240925    gcc-14.1.0
arm                         s3c6400_defconfig    clang-20
arm                           tegra_defconfig    clang-20
arm                        vexpress_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20240925    gcc-14.1.0
arm64                 randconfig-002-20240925    gcc-14.1.0
arm64                 randconfig-003-20240925    clang-20
arm64                 randconfig-004-20240925    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20240925    gcc-14.1.0
csky                  randconfig-002-20240925    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240925    clang-18
i386        buildonly-randconfig-002-20240925    clang-18
i386        buildonly-randconfig-003-20240925    clang-18
i386        buildonly-randconfig-004-20240925    gcc-12
i386        buildonly-randconfig-005-20240925    clang-18
i386        buildonly-randconfig-006-20240925    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240925    gcc-12
i386                  randconfig-002-20240925    clang-18
i386                  randconfig-003-20240925    gcc-12
i386                  randconfig-004-20240925    clang-18
i386                  randconfig-005-20240925    clang-18
i386                  randconfig-006-20240925    gcc-12
i386                  randconfig-011-20240925    gcc-12
i386                  randconfig-012-20240925    gcc-12
i386                  randconfig-013-20240925    clang-18
i386                  randconfig-014-20240925    clang-18
i386                  randconfig-015-20240925    clang-18
i386                  randconfig-016-20240925    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                       m5208evb_defconfig    clang-20
m68k                        m5407c3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                        bcm47xx_defconfig    clang-20
mips                           ip28_defconfig    clang-20
mips                        omega2p_defconfig    clang-20
mips                           rs90_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                            defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                              defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                     asp8347_defconfig    clang-20
powerpc                   microwatt_defconfig    clang-20
powerpc                     rainier_defconfig    clang-20
powerpc                     skiroot_defconfig    clang-20
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    clang-20
riscv                               defconfig    gcc-12
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                                  defconfig    gcc-14.1.0
sh                ecovec24-romimage_defconfig    clang-20
sparc                            alldefconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64                             defconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    clang-15
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
