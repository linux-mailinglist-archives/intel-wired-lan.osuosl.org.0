Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB7F9E6063
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Dec 2024 23:19:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9ABD408DA;
	Thu,  5 Dec 2024 22:19:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id REzgQJZihM6P; Thu,  5 Dec 2024 22:19:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F73B40905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733437153;
	bh=AHbwpQLf0BbcXlNFUhp2z+W54fWdnnGYVClS00aQ29k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=HM/WRgCCJ04dPMSU7k+wTBiVgcFmHNMmY9BOEFlDaCVuQVMNkbL3IK/o3YCe6j4ut
	 Emtoi8fEEbbIV86KFgoK/tYQ38+3hAv8lXjlHxhBWtmDH02qFM7mYE413HqxGYCA4d
	 Vu+9L5z7Zn7NBBmeTQt1vPvN5W0cbokYOnWE6RNm8PQY/lQlc3UICsOgZ89HK1Cywt
	 e5eyjZIWOYNjwbZAQbWernLENgL700g6hVEih0w2BJnvcx8MNqkSRjRxPoDI2SLD8G
	 ejU91ntiARIoMhQaay+iPL9jvhsIuONGvnzhprTVasaH/UHK+SUXFe0FVBv2CX1Y8Q
	 3gEK3UB0/kHsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F73B40905;
	Thu,  5 Dec 2024 22:19:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 70423AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 22:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E477408DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 22:19:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pCNhEQJIqJbf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Dec 2024 22:19:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5C267408A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C267408A2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5C267408A2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Dec 2024 22:19:07 +0000 (UTC)
X-CSE-ConnectionGUID: EkADDGZPRwKgkOkj//A4vg==
X-CSE-MsgGUID: pn/1eTfGSPWTC7zCELHsUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11277"; a="37560279"
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="37560279"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2024 14:19:07 -0800
X-CSE-ConnectionGUID: PDUolpmHTGaeFkTcuUAYFQ==
X-CSE-MsgGUID: a1D6epAiT4+/KcYKZJCktQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,211,1728975600"; d="scan'208";a="94091204"
Received: from lkp-server01.sh.intel.com (HELO 82a3f569d0cb) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 05 Dec 2024 14:19:06 -0800
Received: from kbuild by 82a3f569d0cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tJKBb-0000Rl-2L
 for intel-wired-lan@lists.osuosl.org; Thu, 05 Dec 2024 22:19:03 +0000
Date: Fri, 06 Dec 2024 06:15:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412060628.aLD0EuwK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733437148; x=1764973148;
 h=date:from:to:subject:message-id;
 bh=YIboSCtW0l1zVSym5OZhe/74O5MA3zjYZDHNkbX8m/8=;
 b=J4oR5PYEhJrjRAl3u4N7cauhFU7rtpytZXhADfThikfWPHkpSn5DYHfq
 Ws1DSEgubueY/8rKnkcltQufDNi4e2fJwhdhlE+5+tk/RecQSL+0sIubq
 oLq8T8JGREqUJzoLJKRSQu9Wyqn0/lvC7PZCQCunNNtJdvNi1fyqGTAgq
 9uqVORVqXhRWlTNDkNgNr/p8sOrcRsoxbj3FcwWKZXZCuevO7OZGR8nJa
 J4bMP3whNUq3O9+f65z2pNa9bRciZgzk62w8nRAaXAapCU/oct99aZUcT
 3btoPyH67Cfn7HjFM6tZKlq/HQJBDxPockFrJq6guCnXAYwLC/dREihHj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J4oR5PYE
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0d407f933724566c59320b00c0f11dcf1b1f3ef0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0d407f933724566c59320b00c0f11dcf1b1f3ef0  idpf: add read memory barrier when checking descriptor done bit

elapsed time: 1263m

configs tested: 272
configs skipped: 19

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              alldefconfig    clang-20
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                          axs101_defconfig    clang-18
arc                         haps_hs_defconfig    clang-19
arc                        nsimosci_defconfig    clang-20
arc                            randconfig-001    clang-20
arc                   randconfig-001-20241205    clang-20
arc                   randconfig-001-20241205    gcc-13.2.0
arc                   randconfig-001-20241206    gcc-14.2.0
arc                            randconfig-002    clang-20
arc                   randconfig-002-20241205    clang-20
arc                   randconfig-002-20241205    gcc-13.2.0
arc                   randconfig-002-20241206    gcc-14.2.0
arc                           tb10x_defconfig    clang-20
arc                        vdk_hs38_defconfig    gcc-14.2.0
arc                    vdk_hs38_smp_defconfig    clang-19
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                       aspeed_g4_defconfig    gcc-14.2.0
arm                         assabet_defconfig    gcc-14.2.0
arm                         at91_dt_defconfig    clang-20
arm                            dove_defconfig    gcc-14.2.0
arm                          exynos_defconfig    gcc-14.2.0
arm                            hisi_defconfig    clang-20
arm                            hisi_defconfig    gcc-14.2.0
arm                       imx_v4_v5_defconfig    clang-18
arm                           imxrt_defconfig    clang-20
arm                      integrator_defconfig    clang-20
arm                          ixp4xx_defconfig    clang-20
arm                        keystone_defconfig    clang-20
arm                            mps2_defconfig    clang-20
arm                        multi_v7_defconfig    gcc-14.2.0
arm                         mv78xx0_defconfig    clang-17
arm                        mvebu_v5_defconfig    clang-20
arm                           omap1_defconfig    clang-20
arm                           omap1_defconfig    gcc-14.2.0
arm                         orion5x_defconfig    clang-20
arm                          pxa910_defconfig    clang-20
arm                          pxa910_defconfig    gcc-14.2.0
arm                            randconfig-001    clang-20
arm                   randconfig-001-20241205    clang-20
arm                   randconfig-001-20241206    gcc-14.2.0
arm                            randconfig-002    clang-20
arm                   randconfig-002-20241205    clang-20
arm                   randconfig-002-20241205    gcc-14.2.0
arm                   randconfig-002-20241206    gcc-14.2.0
arm                            randconfig-003    clang-20
arm                   randconfig-003-20241205    clang-20
arm                   randconfig-003-20241206    gcc-14.2.0
arm                            randconfig-004    clang-20
arm                   randconfig-004-20241205    clang-15
arm                   randconfig-004-20241205    clang-20
arm                   randconfig-004-20241206    gcc-14.2.0
arm                        realview_defconfig    clang-20
arm                             rpc_defconfig    gcc-14.2.0
arm                          sp7021_defconfig    clang-19
arm                          sp7021_defconfig    clang-20
arm                        spear3xx_defconfig    clang-20
arm                           spitz_defconfig    gcc-14.2.0
arm                           stm32_defconfig    clang-20
arm                       versatile_defconfig    clang-20
arm                    vt8500_v6_v7_defconfig    clang-20
arm                         wpcm450_defconfig    gcc-14.2.0
arm64                            alldefconfig    gcc-14.2.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    clang-20
arm64                          randconfig-001    clang-20
arm64                 randconfig-001-20241205    clang-15
arm64                 randconfig-001-20241205    clang-20
arm64                 randconfig-001-20241206    gcc-14.2.0
arm64                          randconfig-002    clang-20
arm64                 randconfig-002-20241205    clang-20
arm64                 randconfig-002-20241205    gcc-14.2.0
arm64                 randconfig-002-20241206    gcc-14.2.0
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20241205    clang-20
arm64                 randconfig-003-20241206    gcc-14.2.0
arm64                          randconfig-004    clang-20
arm64                 randconfig-004-20241205    clang-20
arm64                 randconfig-004-20241205    gcc-14.2.0
arm64                 randconfig-004-20241206    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386                 buildonly-randconfig-001    gcc-12
i386        buildonly-randconfig-001-20241205    clang-19
i386                 buildonly-randconfig-002    clang-19
i386                 buildonly-randconfig-002    gcc-12
i386        buildonly-randconfig-002-20241205    clang-19
i386                 buildonly-randconfig-003    clang-19
i386                 buildonly-randconfig-003    gcc-12
i386        buildonly-randconfig-003-20241205    clang-19
i386                 buildonly-randconfig-004    gcc-12
i386        buildonly-randconfig-004-20241205    clang-19
i386                 buildonly-randconfig-005    gcc-12
i386        buildonly-randconfig-005-20241205    clang-19
i386                 buildonly-randconfig-006    gcc-12
i386        buildonly-randconfig-006-20241205    clang-19
loongarch                        alldefconfig    gcc-14.2.0
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                       m5475evb_defconfig    clang-20
m68k                            mac_defconfig    gcc-14.2.0
m68k                          multi_defconfig    gcc-14.2.0
m68k                        mvme16x_defconfig    clang-20
m68k                           virt_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath25_defconfig    gcc-14.2.0
mips                          ath79_defconfig    clang-20
mips                         bigsur_defconfig    clang-17
mips                      bmips_stb_defconfig    clang-20
mips                         db1xxx_defconfig    clang-20
mips                          eyeq6_defconfig    clang-20
mips                            gpr_defconfig    clang-20
mips                           jazz_defconfig    clang-20
mips                        qi_lb60_defconfig    clang-20
mips                          rb532_defconfig    clang-17
nios2                         3c120_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
openrisc                         alldefconfig    clang-20
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                 simple_smp_defconfig    clang-20
openrisc                       virt_defconfig    clang-19
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-32bit_defconfig    clang-20
parisc                generic-64bit_defconfig    gcc-14.2.0
parisc64                         alldefconfig    clang-20
powerpc                    adder875_defconfig    clang-20
powerpc                     akebono_defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      arches_defconfig    gcc-14.2.0
powerpc                   bluestone_defconfig    clang-20
powerpc                 canyonlands_defconfig    clang-19
powerpc                      chrp32_defconfig    gcc-14.2.0
powerpc                   currituck_defconfig    clang-20
powerpc                       ebony_defconfig    clang-18
powerpc                     ep8248e_defconfig    clang-20
powerpc                        fsp2_defconfig    clang-19
powerpc                          g5_defconfig    gcc-14.2.0
powerpc                    ge_imp3a_defconfig    clang-18
powerpc                    ge_imp3a_defconfig    clang-20
powerpc                       holly_defconfig    clang-20
powerpc                        icon_defconfig    clang-20
powerpc                        icon_defconfig    gcc-14.2.0
powerpc                 linkstation_defconfig    clang-18
powerpc                   lite5200b_defconfig    clang-20
powerpc                      mgcoge_defconfig    clang-20
powerpc                     mpc5200_defconfig    gcc-14.2.0
powerpc                 mpc8313_rdb_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    gcc-14.2.0
powerpc                 mpc834x_itx_defconfig    gcc-14.2.0
powerpc                 mpc837x_rdb_defconfig    clang-20
powerpc                    mvme5100_defconfig    clang-20
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc                     ppa8548_defconfig    clang-20
powerpc                      ppc44x_defconfig    clang-20
powerpc                       ppc64_defconfig    clang-18
powerpc                      ppc6xx_defconfig    gcc-14.2.0
powerpc                     redwood_defconfig    gcc-14.2.0
powerpc                     skiroot_defconfig    clang-20
powerpc                    socrates_defconfig    clang-19
powerpc                     tqm8540_defconfig    clang-20
powerpc                     tqm8540_defconfig    gcc-14.2.0
powerpc                     tqm8548_defconfig    clang-20
powerpc                     tqm8555_defconfig    clang-20
powerpc                     tqm8560_defconfig    clang-20
powerpc                        warp_defconfig    clang-17
powerpc64                        alldefconfig    clang-18
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                    nommu_virt_defconfig    gcc-14.2.0
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        dreamcast_defconfig    clang-17
sh                        dreamcast_defconfig    clang-18
sh                        dreamcast_defconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    clang-18
sh                         ecovec24_defconfig    clang-20
sh                             espt_defconfig    gcc-14.2.0
sh                          kfr2r09_defconfig    clang-20
sh                          landisk_defconfig    gcc-14.2.0
sh                          lboxre2_defconfig    gcc-14.2.0
sh                     magicpanelr2_defconfig    gcc-14.2.0
sh                            migor_defconfig    gcc-14.2.0
sh                          polaris_defconfig    gcc-14.2.0
sh                          r7780mp_defconfig    clang-18
sh                          r7780mp_defconfig    clang-20
sh                          r7780mp_defconfig    gcc-14.2.0
sh                          rsk7201_defconfig    clang-20
sh                          rsk7264_defconfig    gcc-14.2.0
sh                          rsk7269_defconfig    clang-18
sh                   rts7751r2dplus_defconfig    clang-20
sh                          sdk7780_defconfig    clang-20
sh                           se7206_defconfig    clang-17
sh                           se7206_defconfig    clang-20
sh                           se7343_defconfig    clang-20
sh                           se7721_defconfig    gcc-14.2.0
sh                           se7722_defconfig    clang-17
sh                   secureedge5410_defconfig    clang-18
sh                   sh7724_generic_defconfig    clang-20
sh                   sh7724_generic_defconfig    gcc-14.2.0
sh                        sh7757lcr_defconfig    gcc-14.2.0
sh                        sh7763rdp_defconfig    clang-20
sh                             shx3_defconfig    clang-20
sh                            titan_defconfig    gcc-14.2.0
sh                          urquell_defconfig    gcc-14.2.0
sparc                            alldefconfig    clang-18
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                           x86_64_defconfig    clang-20
x86_64      buildonly-randconfig-001-20241205    clang-19
x86_64      buildonly-randconfig-001-20241206    clang-19
x86_64      buildonly-randconfig-002-20241205    clang-19
x86_64      buildonly-randconfig-002-20241206    clang-19
x86_64      buildonly-randconfig-003-20241205    clang-19
x86_64      buildonly-randconfig-003-20241206    clang-19
x86_64      buildonly-randconfig-004-20241205    clang-19
x86_64      buildonly-randconfig-004-20241206    clang-19
x86_64      buildonly-randconfig-005-20241205    clang-19
x86_64      buildonly-randconfig-005-20241205    gcc-12
x86_64      buildonly-randconfig-005-20241206    clang-19
x86_64      buildonly-randconfig-006-20241205    clang-19
x86_64      buildonly-randconfig-006-20241205    gcc-12
x86_64      buildonly-randconfig-006-20241206    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  audio_kc705_defconfig    clang-20
xtensa                  cadence_csp_defconfig    gcc-14.2.0
xtensa                generic_kc705_defconfig    clang-20
xtensa                          iss_defconfig    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
