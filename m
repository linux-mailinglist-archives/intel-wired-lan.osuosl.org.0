Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 879719E3D08
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 15:44:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4092984330;
	Wed,  4 Dec 2024 14:44:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7b_pTziwP7ow; Wed,  4 Dec 2024 14:44:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C14788433D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733323440;
	bh=ODwxkDpNQt7Hla+VIMPP1Yww4QZF7S3vcEE7NKw9Irc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0TO27+9rVlS/hlxFhSRLNdjt9BN6kwUU7fakCUSc0ruaKVeprMYOUGaQr7cEdA9zI
	 5DtuiqoXuDcuBoqrPsEc3QRpOkhCJU+d6QmeKj1/WkmMaM4mdkZvqaSvFe2+I9mR/k
	 zf9grukOrnlzXHQMT2j74YFaCTM2NHlm2grEZIb94gFa1orTZwspBVqx7qDeNKyCaw
	 RUVV9y3b4Jb0D5fWZnULXCZWYhNN7KTY3IxTjJyUbqx3rV5RdEY5MbW605GnRDEz/M
	 kUZreUgaX5T2O3zOVnRIo45tppcLk0HeRggW3ssW0vaKcy/rUQ/E97Jx5C2BcRuoY1
	 /vysNhypAdyNg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C14788433D;
	Wed,  4 Dec 2024 14:44:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 754391DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DF1C408B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:43:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSdpxyZwxCc9 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 14:43:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CA94D40585
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA94D40585
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA94D40585
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:43:57 +0000 (UTC)
X-CSE-ConnectionGUID: 6VlLqc7mRhG2QOmhd9Aw1A==
X-CSE-MsgGUID: NaxyOY16TEO/+E8t6HO8hw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="51124349"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="51124349"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:43:58 -0800
X-CSE-ConnectionGUID: REeI4niUSfetKgz42JL+QA==
X-CSE-MsgGUID: bX0zX5sLQWOMhlAHkzdUMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117034311"
Received: from lkp-server02.sh.intel.com (HELO 1f5a171d57e2) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 06:43:56 -0800
Received: from kbuild by 1f5a171d57e2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tIqba-00037n-12
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Dec 2024 14:43:54 +0000
Date: Wed, 04 Dec 2024 22:41:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412042213.G9Yqzow7-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733323438; x=1764859438;
 h=date:from:to:subject:message-id;
 bh=JH636EBboD/wu3FHLSuxloLLNtDygCBZ1nr8UwS95zE=;
 b=LRZcriJva9QYJD1+wn5nxi+Na4carZUvqDUsNy+KOFa/d4VsxxtCGrM/
 YP3OCCSmVk7tUphlizCTnHVnJLI5U2lCp3mbyD9wzA6wIl2D4y6htdNRe
 USYOSXw4KgwdRa96bTVXVGsFan9fCaiR4426ejyIFCTlFwo7MB8cP+WjH
 e0xWQzWXz0dtrUDK6fh+8C0027bl5oJXGinQCbRmz7P6WDdUOybLt/jpD
 yzjqjTEgjDket4WOU1u0MY7fLMY+Q1sszuvMCR7U4TYI8104fog0QQQDM
 UBG99Ee6qQcqSWM8uasVrzojZeZCXzPwMDsF64nnwtMS0yOVQErQZg9gt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LRZcriJv
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 af8edaeddbc52e53207d859c912b017fd9a77629
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
branch HEAD: af8edaeddbc52e53207d859c912b017fd9a77629  net: hsr: must allocate more bytes for RedBox support

elapsed time: 1593m

configs tested: 234
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-14.2.0
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                      axs103_smp_defconfig    gcc-14.2.0
arc                     haps_hs_smp_defconfig    gcc-14.2.0
arc                 nsimosci_hs_smp_defconfig    clang-20
arc                            randconfig-001    gcc-13.2.0
arc                   randconfig-001-20241204    clang-14
arc                   randconfig-001-20241204    gcc-13.2.0
arc                            randconfig-002    gcc-13.2.0
arc                   randconfig-002-20241204    clang-14
arc                   randconfig-002-20241204    gcc-13.2.0
arc                    vdk_hs38_smp_defconfig    gcc-14.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                       aspeed_g4_defconfig    clang-20
arm                       aspeed_g5_defconfig    gcc-14.2.0
arm                         assabet_defconfig    clang-20
arm                         at91_dt_defconfig    clang-20
arm                     davinci_all_defconfig    clang-20
arm                     davinci_all_defconfig    gcc-14.2.0
arm                            dove_defconfig    gcc-14.2.0
arm                          ep93xx_defconfig    gcc-14.2.0
arm                           h3600_defconfig    clang-20
arm                       imx_v4_v5_defconfig    clang-16
arm                       imx_v6_v7_defconfig    clang-20
arm                          ixp4xx_defconfig    gcc-14.2.0
arm                        keystone_defconfig    gcc-14.2.0
arm                         lpc18xx_defconfig    clang-20
arm                          moxart_defconfig    gcc-14.2.0
arm                        mvebu_v5_defconfig    gcc-14.2.0
arm                          pxa3xx_defconfig    clang-15
arm                          pxa3xx_defconfig    gcc-14.2.0
arm                          pxa910_defconfig    clang-20
arm                            qcom_defconfig    clang-15
arm                            qcom_defconfig    clang-20
arm                            randconfig-001    gcc-14.2.0
arm                   randconfig-001-20241204    clang-14
arm                   randconfig-001-20241204    clang-20
arm                            randconfig-002    gcc-14.2.0
arm                   randconfig-002-20241204    clang-14
arm                   randconfig-002-20241204    clang-20
arm                            randconfig-003    clang-20
arm                   randconfig-003-20241204    clang-14
arm                            randconfig-004    gcc-14.2.0
arm                   randconfig-004-20241204    clang-14
arm                   randconfig-004-20241204    gcc-14.2.0
arm                             rpc_defconfig    gcc-14.2.0
arm                         s5pv210_defconfig    gcc-14.2.0
arm                        shmobile_defconfig    clang-18
arm                        shmobile_defconfig    gcc-14.2.0
arm                         socfpga_defconfig    gcc-14.2.0
arm                          sp7021_defconfig    clang-20
arm                        spear3xx_defconfig    clang-20
arm                           spitz_defconfig    gcc-14.2.0
arm                           stm32_defconfig    clang-20
arm                        vexpress_defconfig    gcc-14.2.0
arm                         wpcm450_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                          randconfig-001    gcc-14.2.0
arm64                 randconfig-001-20241204    clang-14
arm64                 randconfig-001-20241204    gcc-14.2.0
arm64                          randconfig-002    gcc-14.2.0
arm64                 randconfig-002-20241204    clang-14
arm64                 randconfig-002-20241204    gcc-14.2.0
arm64                          randconfig-003    clang-15
arm64                 randconfig-003-20241204    clang-14
arm64                 randconfig-003-20241204    gcc-14.2.0
arm64                          randconfig-004    clang-20
arm64                 randconfig-004-20241204    clang-14
arm64                 randconfig-004-20241204    gcc-14.2.0
csky                             alldefconfig    clang-20
csky                             alldefconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386                 buildonly-randconfig-001    gcc-12
i386        buildonly-randconfig-001-20241204    clang-19
i386        buildonly-randconfig-001-20241204    gcc-12
i386                 buildonly-randconfig-002    gcc-12
i386        buildonly-randconfig-002-20241204    clang-19
i386        buildonly-randconfig-002-20241204    gcc-12
i386                 buildonly-randconfig-003    gcc-12
i386        buildonly-randconfig-003-20241204    clang-19
i386        buildonly-randconfig-003-20241204    gcc-12
i386                 buildonly-randconfig-004    gcc-12
i386        buildonly-randconfig-004-20241204    gcc-12
i386                 buildonly-randconfig-005    gcc-12
i386        buildonly-randconfig-005-20241204    gcc-12
i386                 buildonly-randconfig-006    gcc-12
i386        buildonly-randconfig-006-20241204    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                 loongson3_defconfig    clang-18
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          atari_defconfig    clang-18
m68k                          atari_defconfig    gcc-14.2.0
m68k                       bvme6000_defconfig    gcc-14.2.0
m68k                        m5272c3_defconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
m68k                            q40_defconfig    clang-15
m68k                          sun3x_defconfig    gcc-14.2.0
microblaze                       alldefconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath25_defconfig    clang-20
mips                          ath79_defconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    clang-18
mips                  cavium_octeon_defconfig    gcc-14.2.0
mips                           ci20_defconfig    clang-18
mips                          eyeq5_defconfig    gcc-14.2.0
mips                          eyeq6_defconfig    clang-20
mips                          eyeq6_defconfig    gcc-14.2.0
mips                           ip22_defconfig    clang-15
mips                           ip22_defconfig    gcc-14.2.0
mips                           ip28_defconfig    gcc-14.2.0
mips                           ip32_defconfig    gcc-14.2.0
mips                           jazz_defconfig    clang-20
mips                     loongson1b_defconfig    clang-15
mips                          rb532_defconfig    clang-18
mips                         rt305x_defconfig    clang-20
mips                        vocore2_defconfig    clang-15
mips                           xway_defconfig    clang-20
nios2                         10m50_defconfig    gcc-14.2.0
nios2                         3c120_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
openrisc                         alldefconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                       virt_defconfig    clang-20
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-64bit_defconfig    clang-15
powerpc                    adder875_defconfig    clang-15
powerpc                     akebono_defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      cm5200_defconfig    clang-20
powerpc                        fsp2_defconfig    clang-15
powerpc                  iss476-smp_defconfig    clang-20
powerpc                  iss476-smp_defconfig    gcc-14.2.0
powerpc                     kmeter1_defconfig    gcc-14.2.0
powerpc                 linkstation_defconfig    clang-20
powerpc                 linkstation_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    clang-18
powerpc                   motionpro_defconfig    gcc-14.2.0
powerpc                 mpc8313_rdb_defconfig    clang-20
powerpc                 mpc8315_rdb_defconfig    clang-15
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                  mpc885_ads_defconfig    clang-20
powerpc                    mvme5100_defconfig    gcc-14.2.0
powerpc                      pmac32_defconfig    clang-20
powerpc                      pmac32_defconfig    gcc-14.2.0
powerpc                     ppa8548_defconfig    clang-20
powerpc                     skiroot_defconfig    gcc-14.2.0
powerpc                  storcenter_defconfig    clang-15
powerpc                     stx_gp3_defconfig    clang-20
powerpc                     tqm5200_defconfig    gcc-14.2.0
powerpc                      tqm8xx_defconfig    clang-20
powerpc                         wii_defconfig    gcc-14.2.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                    nommu_k210_defconfig    clang-20
riscv                    nommu_k210_defconfig    gcc-14.2.0
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                        dreamcast_defconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    clang-20
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                         ecovec24_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                          landisk_defconfig    clang-20
sh                          rsk7264_defconfig    gcc-14.2.0
sh                   rts7751r2dplus_defconfig    clang-20
sh                          sdk7780_defconfig    gcc-14.2.0
sh                          sdk7786_defconfig    clang-20
sh                           se7343_defconfig    clang-20
sh                           se7619_defconfig    clang-20
sh                           se7619_defconfig    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sh                           se7750_defconfig    gcc-14.2.0
sh                           se7751_defconfig    clang-20
sh                           se7751_defconfig    gcc-14.2.0
sh                           se7780_defconfig    gcc-14.2.0
sh                   secureedge5410_defconfig    clang-20
sh                             sh03_defconfig    clang-20
sh                     sh7710voipgw_defconfig    gcc-14.2.0
sh                        sh7757lcr_defconfig    gcc-14.2.0
sh                            shmin_defconfig    clang-20
sh                            shmin_defconfig    gcc-14.2.0
sh                            titan_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
sparc                       sparc64_defconfig    clang-15
um                               alldefconfig    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                             i386_defconfig    gcc-14.2.0
um                           x86_64_defconfig    gcc-14.2.0
x86_64      buildonly-randconfig-001-20241204    clang-19
x86_64      buildonly-randconfig-001-20241204    gcc-11
x86_64      buildonly-randconfig-002-20241204    clang-19
x86_64      buildonly-randconfig-002-20241204    gcc-12
x86_64      buildonly-randconfig-003-20241204    clang-19
x86_64      buildonly-randconfig-003-20241204    gcc-12
x86_64      buildonly-randconfig-004-20241204    clang-19
x86_64      buildonly-randconfig-005-20241204    clang-19
x86_64      buildonly-randconfig-005-20241204    gcc-12
x86_64      buildonly-randconfig-006-20241204    clang-19
x86_64      buildonly-randconfig-006-20241204    gcc-12
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  nommu_kc705_defconfig    clang-20
xtensa                    smp_lx200_defconfig    gcc-14.2.0
xtensa                         virt_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
