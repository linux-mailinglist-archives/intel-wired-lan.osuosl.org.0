Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8278F9E7E91
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Dec 2024 07:32:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 246EA409F4;
	Sat,  7 Dec 2024 06:32:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lfq8yxGo3CM; Sat,  7 Dec 2024 06:32:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D010340B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733553131;
	bh=jdjSlbELLLdnLeCUvldYo6SnXqvLfPNgLaXoARHsdBc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XriZcAUpYZHWMbKuZyvI18uqMRqRfdS3eDi8X8ZhaAXDz5h/Leo3dxyVVEHLezPGg
	 q2AUBvuUH+7vfBeSWgvw19eankstwM+QvJVWaZ4rPI55B+O8LxnlvboEdaZ1qTTB9o
	 G2R1qxMR1G3smvReKmAWNMs9gJsmEa7hOb60G7yPtYJpRJEAIBdIjZwN7O5KTA1nMU
	 AXwjlNutpHZdO2nBGW51XoxT6FlvXnS3NmyQ+/S7Oy/GC/BMT61fhMJsvodSAthNHE
	 rcIy5REG4XdNjmiunQugrhre1vnq5hasV42gfCRO96dYXupDTFCbuXXbNfwlVdc2lJ
	 PxZsz0T6QoPgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D010340B41;
	Sat,  7 Dec 2024 06:32:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 059E4ED7
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 06:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7A63610E9
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 06:32:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PvnKg7TIAXNq for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Dec 2024 06:32:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB2A5610DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB2A5610DC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB2A5610DC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Dec 2024 06:32:05 +0000 (UTC)
X-CSE-ConnectionGUID: eb0vKMLvRMORbIwQML6KAg==
X-CSE-MsgGUID: uL/nu474SU+liJoDpSwdow==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="36750521"
X-IronPort-AV: E=Sophos;i="6.12,215,1728975600"; d="scan'208";a="36750521"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 22:32:05 -0800
X-CSE-ConnectionGUID: w3RRje1cQS23kQmFM4F/Ag==
X-CSE-MsgGUID: TyDjr7iZR9yQ28pUG/BGmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,215,1728975600"; d="scan'208";a="95047885"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by orviesa007.jf.intel.com with ESMTP; 06 Dec 2024 22:32:05 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tJoMD-0002Wh-2J
 for intel-wired-lan@lists.osuosl.org; Sat, 07 Dec 2024 06:32:01 +0000
Date: Sat, 07 Dec 2024 14:29:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412071453.wWLgEZom-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733553127; x=1765089127;
 h=date:from:to:subject:message-id;
 bh=K7+BCORGsaO1WgZY7vWS0upgs5SQVWthg7T8Y/kw5rw=;
 b=I+izoFRnb5uPr7yoU2pSkormlIeOZn0xElLWoS29gFVqea0yvbHkKi50
 Pni20W5Z8bKxOZ2XO7kS9t1kqyGM+3VYm86xHMhIjVa+CujztB9ti7fGm
 5lTzrksKLeqY2PCLsUQXLXmGW17MiSzOg3RRl57BJIEmettnLVB5L3M6t
 sTlZMJ0E3rXCySOgqx95EFmdf5iw7EWbvXfxCayUULJ1BZchz4vE6U77l
 9OpucVc7E3yCPKgSH0ldd6AuJYsgyuuYidxLeBH+dPbX2V5q2tXWn6ALL
 qPq7Cu1hOBtLQdX69IRdzAPKhfp89e2sUj6cTjDOdNbs6SbsLxiqFGjs2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I+izoFRn
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 11776cff0b563c8b8a4fa76cab620bfb633a8cb8
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
branch HEAD: 11776cff0b563c8b8a4fa76cab620bfb633a8cb8  net/mlx5: DR, prevent potential error pointer dereference

elapsed time: 1385m

configs tested: 357
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    clang-15
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              alldefconfig    clang-20
arc                              allmodconfig    clang-18
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.2.0
arc                         haps_hs_defconfig    gcc-13.2.0
arc                            hsdk_defconfig    gcc-14.2.0
arc                     nsimosci_hs_defconfig    gcc-13.2.0
arc                   randconfig-001-20241206    gcc-14.2.0
arc                   randconfig-001-20241207    clang-19
arc                   randconfig-001-20241207    gcc-13.2.0
arc                   randconfig-002-20241206    gcc-14.2.0
arc                   randconfig-002-20241207    clang-19
arc                   randconfig-002-20241207    gcc-13.2.0
arc                        vdk_hs38_defconfig    clang-20
arm                              allmodconfig    clang-18
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    clang-20
arm                     am200epdkit_defconfig    gcc-14.2.0
arm                       aspeed_g5_defconfig    gcc-14.2.0
arm                         axm55xx_defconfig    clang-20
arm                          collie_defconfig    gcc-14.2.0
arm                     davinci_all_defconfig    clang-20
arm                                 defconfig    gcc-14.2.0
arm                            dove_defconfig    gcc-14.2.0
arm                          gemini_defconfig    clang-15
arm                            hisi_defconfig    gcc-14.2.0
arm                           imxrt_defconfig    gcc-13.2.0
arm                         lpc18xx_defconfig    gcc-14.2.0
arm                            mps2_defconfig    clang-15
arm                            mps2_defconfig    clang-20
arm                        multi_v5_defconfig    clang-20
arm                        multi_v5_defconfig    gcc-14.2.0
arm                           omap1_defconfig    clang-20
arm                           omap1_defconfig    gcc-14.2.0
arm                         orion5x_defconfig    clang-20
arm                          pxa168_defconfig    clang-20
arm                   randconfig-001-20241206    gcc-14.2.0
arm                   randconfig-001-20241207    clang-19
arm                   randconfig-001-20241207    gcc-14.2.0
arm                   randconfig-002-20241206    gcc-14.2.0
arm                   randconfig-002-20241207    clang-19
arm                   randconfig-002-20241207    gcc-14.2.0
arm                   randconfig-003-20241206    gcc-14.2.0
arm                   randconfig-003-20241207    clang-19
arm                   randconfig-004-20241206    gcc-14.2.0
arm                   randconfig-004-20241207    clang-19
arm                   randconfig-004-20241207    clang-20
arm                        realview_defconfig    clang-20
arm                             rpc_defconfig    gcc-14.2.0
arm                           sama7_defconfig    clang-20
arm                        shmobile_defconfig    gcc-14.2.0
arm                          sp7021_defconfig    gcc-14.2.0
arm                           stm32_defconfig    gcc-14.2.0
arm                           u8500_defconfig    gcc-13.2.0
arm                         vf610m4_defconfig    clang-17
arm64                            alldefconfig    clang-20
arm64                            allmodconfig    clang-18
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241206    gcc-14.2.0
arm64                 randconfig-001-20241207    clang-19
arm64                 randconfig-001-20241207    gcc-14.2.0
arm64                 randconfig-002-20241206    gcc-14.2.0
arm64                 randconfig-002-20241207    clang-19
arm64                 randconfig-002-20241207    gcc-14.2.0
arm64                 randconfig-003-20241206    gcc-14.2.0
arm64                 randconfig-003-20241207    clang-19
arm64                 randconfig-003-20241207    clang-20
arm64                 randconfig-004-20241206    gcc-14.2.0
arm64                 randconfig-004-20241207    clang-15
arm64                 randconfig-004-20241207    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241206    gcc-14.2.0
csky                  randconfig-001-20241207    clang-19
csky                  randconfig-001-20241207    gcc-14.2.0
csky                  randconfig-002-20241206    gcc-14.2.0
csky                  randconfig-002-20241207    clang-19
csky                  randconfig-002-20241207    gcc-14.2.0
hexagon                          alldefconfig    clang-20
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241206    gcc-14.2.0
hexagon               randconfig-001-20241207    clang-14
hexagon               randconfig-001-20241207    clang-19
hexagon               randconfig-002-20241206    gcc-14.2.0
hexagon               randconfig-002-20241207    clang-16
hexagon               randconfig-002-20241207    clang-19
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386                 buildonly-randconfig-001    gcc-12
i386        buildonly-randconfig-001-20241206    clang-19
i386        buildonly-randconfig-001-20241207    clang-19
i386                 buildonly-randconfig-002    clang-19
i386                 buildonly-randconfig-002    gcc-12
i386        buildonly-randconfig-002-20241206    clang-19
i386        buildonly-randconfig-002-20241206    gcc-12
i386        buildonly-randconfig-002-20241207    clang-19
i386                 buildonly-randconfig-003    clang-19
i386                 buildonly-randconfig-003    gcc-12
i386        buildonly-randconfig-003-20241206    clang-19
i386        buildonly-randconfig-003-20241206    gcc-12
i386        buildonly-randconfig-003-20241207    clang-19
i386        buildonly-randconfig-003-20241207    gcc-12
i386                 buildonly-randconfig-004    gcc-12
i386        buildonly-randconfig-004-20241206    clang-19
i386        buildonly-randconfig-004-20241206    gcc-12
i386        buildonly-randconfig-004-20241207    clang-19
i386                 buildonly-randconfig-005    gcc-12
i386        buildonly-randconfig-005-20241206    clang-19
i386        buildonly-randconfig-005-20241207    clang-19
i386                 buildonly-randconfig-006    gcc-12
i386        buildonly-randconfig-006-20241206    clang-19
i386        buildonly-randconfig-006-20241206    gcc-12
i386        buildonly-randconfig-006-20241207    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241206    gcc-14.2.0
loongarch             randconfig-001-20241207    clang-19
loongarch             randconfig-001-20241207    gcc-14.2.0
loongarch             randconfig-002-20241206    gcc-14.2.0
loongarch             randconfig-002-20241207    clang-19
loongarch             randconfig-002-20241207    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          atari_defconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
m68k                            mac_defconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-13.2.0
m68k                          multi_defconfig    gcc-14.2.0
m68k                        mvme16x_defconfig    gcc-14.2.0
m68k                            q40_defconfig    clang-20
m68k                        stmark2_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
microblaze                      mmu_defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath25_defconfig    clang-20
mips                          ath79_defconfig    gcc-14.2.0
mips                        bcm47xx_defconfig    gcc-14.2.0
mips                           ip27_defconfig    gcc-14.2.0
mips                           ip30_defconfig    gcc-14.2.0
mips                        maltaup_defconfig    clang-17
mips                           mtx1_defconfig    gcc-14.2.0
mips                        omega2p_defconfig    gcc-14.2.0
mips                          rb532_defconfig    clang-17
mips                   sb1250_swarm_defconfig    clang-20
mips                   sb1250_swarm_defconfig    gcc-14.2.0
nios2                         3c120_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241206    gcc-14.2.0
nios2                 randconfig-001-20241207    clang-19
nios2                 randconfig-001-20241207    gcc-14.2.0
nios2                 randconfig-002-20241206    gcc-14.2.0
nios2                 randconfig-002-20241207    clang-19
nios2                 randconfig-002-20241207    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
openrisc                  or1klitex_defconfig    gcc-14.2.0
openrisc                 simple_smp_defconfig    clang-20
openrisc                 simple_smp_defconfig    gcc-13.2.0
openrisc                       virt_defconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                generic-64bit_defconfig    gcc-14.2.0
parisc                randconfig-001-20241206    gcc-14.2.0
parisc                randconfig-001-20241207    clang-19
parisc                randconfig-001-20241207    gcc-14.2.0
parisc                randconfig-002-20241206    gcc-14.2.0
parisc                randconfig-002-20241207    clang-19
parisc                randconfig-002-20241207    gcc-14.2.0
parisc64                         alldefconfig    clang-20
parisc64                            defconfig    gcc-14.2.0
powerpc                    adder875_defconfig    clang-15
powerpc                     akebono_defconfig    clang-17
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      arches_defconfig    clang-20
powerpc                      arches_defconfig    gcc-14.2.0
powerpc                     asp8347_defconfig    gcc-14.2.0
powerpc                      bamboo_defconfig    gcc-14.2.0
powerpc                   bluestone_defconfig    gcc-13.2.0
powerpc                      cm5200_defconfig    clang-20
powerpc                   currituck_defconfig    clang-15
powerpc                   currituck_defconfig    gcc-14.2.0
powerpc                       ebony_defconfig    clang-18
powerpc                       eiger_defconfig    gcc-14.2.0
powerpc                     ep8248e_defconfig    clang-20
powerpc                      ep88xc_defconfig    gcc-14.2.0
powerpc                    ge_imp3a_defconfig    clang-20
powerpc                    ge_imp3a_defconfig    gcc-13.2.0
powerpc                    ge_imp3a_defconfig    gcc-14.2.0
powerpc                       holly_defconfig    clang-20
powerpc                       holly_defconfig    gcc-14.2.0
powerpc                        icon_defconfig    clang-20
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc                      mgcoge_defconfig    gcc-14.2.0
powerpc                 mpc8313_rdb_defconfig    gcc-13.2.0
powerpc                 mpc8315_rdb_defconfig    gcc-14.2.0
powerpc                 mpc832x_rdb_defconfig    clang-20
powerpc                 mpc832x_rdb_defconfig    gcc-13.2.0
powerpc                 mpc832x_rdb_defconfig    gcc-14.2.0
powerpc                 mpc837x_rdb_defconfig    clang-20
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc                      pmac32_defconfig    clang-15
powerpc                       ppc64_defconfig    clang-18
powerpc                      ppc6xx_defconfig    gcc-14.2.0
powerpc                         ps3_defconfig    gcc-14.2.0
powerpc                     rainier_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241206    gcc-14.2.0
powerpc               randconfig-001-20241207    clang-19
powerpc               randconfig-001-20241207    gcc-14.2.0
powerpc               randconfig-002-20241206    gcc-14.2.0
powerpc               randconfig-002-20241207    clang-19
powerpc               randconfig-002-20241207    clang-20
powerpc               randconfig-003-20241206    gcc-14.2.0
powerpc               randconfig-003-20241207    clang-15
powerpc               randconfig-003-20241207    clang-19
powerpc                     redwood_defconfig    gcc-14.2.0
powerpc                    sam440ep_defconfig    gcc-14.2.0
powerpc                     skiroot_defconfig    gcc-14.2.0
powerpc                     tqm8540_defconfig    clang-20
powerpc                     tqm8540_defconfig    gcc-14.2.0
powerpc                     tqm8541_defconfig    clang-20
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc                     tqm8560_defconfig    clang-20
powerpc64                        alldefconfig    clang-18
powerpc64             randconfig-001-20241207    clang-19
powerpc64             randconfig-001-20241207    gcc-14.2.0
powerpc64             randconfig-002-20241206    gcc-14.2.0
powerpc64             randconfig-002-20241207    clang-19
powerpc64             randconfig-003-20241206    gcc-14.2.0
powerpc64             randconfig-003-20241207    clang-17
powerpc64             randconfig-003-20241207    clang-19
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                               defconfig    gcc-13.2.0
riscv                    nommu_virt_defconfig    gcc-14.2.0
riscv                 randconfig-001-20241206    gcc-14.2.0
riscv                 randconfig-002-20241206    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                                defconfig    gcc-14.2.0
s390                  randconfig-001-20241206    gcc-14.2.0
s390                  randconfig-002-20241206    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         ap325rxa_defconfig    clang-17
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        dreamcast_defconfig    clang-18
sh                ecovec24-romimage_defconfig    gcc-13.2.0
sh                         ecovec24_defconfig    clang-20
sh                         ecovec24_defconfig    gcc-14.2.0
sh                        edosk7705_defconfig    gcc-14.2.0
sh                        edosk7760_defconfig    gcc-14.2.0
sh                             espt_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    clang-20
sh                          landisk_defconfig    clang-20
sh                          lboxre2_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                          polaris_defconfig    gcc-14.2.0
sh                          r7780mp_defconfig    clang-18
sh                    randconfig-001-20241206    gcc-14.2.0
sh                    randconfig-002-20241206    gcc-14.2.0
sh                          rsk7264_defconfig    gcc-14.2.0
sh                          rsk7269_defconfig    clang-18
sh                          rsk7269_defconfig    clang-20
sh                      rts7751r2d1_defconfig    clang-20
sh                   rts7751r2dplus_defconfig    gcc-14.2.0
sh                          sdk7786_defconfig    gcc-14.2.0
sh                           se7206_defconfig    clang-20
sh                           se7343_defconfig    clang-15
sh                           se7343_defconfig    clang-20
sh                           se7722_defconfig    gcc-14.2.0
sh                           se7724_defconfig    gcc-14.2.0
sh                   secureedge5410_defconfig    clang-18
sh                   secureedge5410_defconfig    gcc-14.2.0
sh                           sh2007_defconfig    gcc-14.2.0
sh                        sh7763rdp_defconfig    clang-20
sh                        sh7763rdp_defconfig    gcc-14.2.0
sh                  sh7785lcr_32bit_defconfig    gcc-14.2.0
sh                             shx3_defconfig    gcc-14.2.0
sh                            titan_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241206    gcc-14.2.0
sparc                 randconfig-002-20241206    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
sparc64                          alldefconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241206    gcc-14.2.0
sparc64               randconfig-002-20241206    gcc-14.2.0
um                               alldefconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241206    gcc-14.2.0
um                    randconfig-002-20241206    gcc-14.2.0
um                           x86_64_defconfig    gcc-12
um                           x86_64_defconfig    gcc-13.2.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241206    clang-19
x86_64      buildonly-randconfig-001-20241207    clang-19
x86_64      buildonly-randconfig-002-20241206    clang-19
x86_64      buildonly-randconfig-002-20241207    clang-19
x86_64      buildonly-randconfig-003-20241206    clang-19
x86_64      buildonly-randconfig-003-20241207    clang-19
x86_64      buildonly-randconfig-003-20241207    gcc-11
x86_64      buildonly-randconfig-004-20241206    clang-19
x86_64      buildonly-randconfig-004-20241207    clang-19
x86_64      buildonly-randconfig-005-20241206    clang-19
x86_64      buildonly-randconfig-005-20241207    clang-19
x86_64      buildonly-randconfig-006-20241206    clang-19
x86_64      buildonly-randconfig-006-20241207    clang-19
x86_64      buildonly-randconfig-006-20241207    gcc-12
x86_64                              defconfig    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-13.2.0
xtensa                generic_kc705_defconfig    clang-20
xtensa                generic_kc705_defconfig    gcc-14.2.0
xtensa                  nommu_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20241206    gcc-14.2.0
xtensa                randconfig-002-20241206    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
