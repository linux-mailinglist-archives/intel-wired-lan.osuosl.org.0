Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C979E3D40
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 15:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B03846F4;
	Wed,  4 Dec 2024 14:51:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ro77k0Q1pWio; Wed,  4 Dec 2024 14:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA247846E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733323868;
	bh=hPPi5WhtQ5gDA0jFnzHcjhq5+Qn4/ojFnEk/QE8Oy/k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CFtSQrEfj8OFboJspMqhxXr53YbXgheN1xFEsxvAUIrouGXHNitsuR9zNQWg/JnJc
	 RZ+rcmBu4oNhscUJdFGKRJ/E5duuyCsfFZ3IqrjcsxxSBcTn/wFlUqz+16mx7DKBUt
	 +vvEqzQZwmQ+cOfAoz4V9l5U0QVMyym027q2CvDuAzqrs7pdJ2WyHLfoCR8jmYMI0x
	 3gobMjO2O2BYZBoMQBDhkl2rdJ6UJRKoooFhYBb2MJy2an+9ezoWlhJENePEcdnuOm
	 +JqeBEqeavjAGzLZkkl0du8xv42OpycnaB0Rkz65OmebOYDyxE2g/VsCnDQre+koQx
	 dmeo79UECKYGg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA247846E2;
	Wed,  4 Dec 2024 14:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0C6961DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2187409E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:51:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 383zikHu1CeL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 14:51:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5DD56408EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DD56408EB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5DD56408EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 14:51:03 +0000 (UTC)
X-CSE-ConnectionGUID: h1YIMGQVTcuaBhjT2w6Mmg==
X-CSE-MsgGUID: u0Vif93jQ0qeIVAYM9KckQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33338207"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33338207"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:51:03 -0800
X-CSE-ConnectionGUID: xS8lDSLcQ7qpYSUlj1/AGw==
X-CSE-MsgGUID: GdkdSAoSTLiPuQkphr08Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="98596689"
Received: from lkp-server02.sh.intel.com (HELO 1f5a171d57e2) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 04 Dec 2024 06:51:03 -0800
Received: from kbuild by 1f5a171d57e2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tIqiS-00039t-0n
 for intel-wired-lan@lists.osuosl.org; Wed, 04 Dec 2024 14:51:00 +0000
Date: Wed, 04 Dec 2024 22:47:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412042230.EvtlLYdt-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733323864; x=1764859864;
 h=date:from:to:subject:message-id;
 bh=P9ed3pIM49qqRweIK3cVEE4+TUVPDkNSHVHWaaWyiV8=;
 b=YSvUlaAtXAsorOawvd2ZtXkp8/AX0y4BbabJLlMN2mE2wDnxoo7NEQY8
 1yAVcq/iU4s6CGnTT8v1vjNA4BhaCB6LP6Wm+8P7CjY+XnauTF4Vo3haH
 0y32Xink6bg/dNEFCTXN9NfaXVSxgwDNdOp8tydVBIaBzngOqBjG+naXA
 CWUXykyEx2cTV+hKV2GZ6XeAIpxhSu3cskpcurLnYtq5v5Hn9thDfazIR
 C+DpgrCPnjlzzeDDjWtEzfPKv6z7vN+A8iEhzn+E0XCzLCq8/jJtzBn/W
 cYI9jlvQNbY8gukn1tdnBdHrQROXBF6par/N374whDfIFLB0zGwPzlpD0
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YSvUlaAt
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 160315a280a7536ddb7ca480bdbc00e49df14a5b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 160315a280a7536ddb7ca480bdbc00e49df14a5b  idpf: add read memory barrier when checking descriptor done bit

elapsed time: 728m

configs tested: 142
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                      axs103_smp_defconfig    gcc-14.2.0
arc                 nsimosci_hs_smp_defconfig    clang-20
arc                            randconfig-001    clang-20
arc                   randconfig-001-20241204    clang-14
arc                            randconfig-002    clang-20
arc                   randconfig-002-20241204    clang-14
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                       aspeed_g4_defconfig    clang-20
arm                         at91_dt_defconfig    clang-20
arm                       imx_v6_v7_defconfig    clang-20
arm                        keystone_defconfig    gcc-14.2.0
arm                         lpc18xx_defconfig    clang-20
arm                        mvebu_v5_defconfig    gcc-14.2.0
arm                          pxa3xx_defconfig    clang-15
arm                          pxa3xx_defconfig    gcc-14.2.0
arm                            qcom_defconfig    clang-15
arm                            randconfig-001    clang-20
arm                   randconfig-001-20241204    clang-14
arm                            randconfig-002    clang-20
arm                   randconfig-002-20241204    clang-14
arm                            randconfig-003    clang-20
arm                   randconfig-003-20241204    clang-14
arm                            randconfig-004    clang-20
arm                   randconfig-004-20241204    clang-14
arm                             rpc_defconfig    gcc-14.2.0
arm                        shmobile_defconfig    clang-18
arm                        shmobile_defconfig    gcc-14.2.0
arm                          sp7021_defconfig    clang-20
arm                         wpcm450_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                          randconfig-001    clang-20
arm64                 randconfig-001-20241204    clang-14
arm64                          randconfig-002    clang-20
arm64                 randconfig-002-20241204    clang-14
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20241204    clang-14
arm64                          randconfig-004    clang-20
arm64                 randconfig-004-20241204    clang-14
csky                             alldefconfig    clang-20
csky                              allnoconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
i386                 buildonly-randconfig-001    gcc-12
i386                 buildonly-randconfig-002    gcc-12
i386                 buildonly-randconfig-003    gcc-12
i386                 buildonly-randconfig-004    gcc-12
i386                 buildonly-randconfig-005    gcc-12
i386                 buildonly-randconfig-006    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                 loongson3_defconfig    clang-18
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          atari_defconfig    clang-18
m68k                          atari_defconfig    gcc-14.2.0
m68k                       bvme6000_defconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
m68k                            q40_defconfig    clang-15
microblaze                       alldefconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath25_defconfig    clang-20
mips                          ath79_defconfig    gcc-14.2.0
mips                      bmips_stb_defconfig    clang-18
mips                           ci20_defconfig    clang-18
mips                           ip22_defconfig    clang-15
mips                           ip22_defconfig    gcc-14.2.0
mips                           jazz_defconfig    clang-20
mips                     loongson1b_defconfig    clang-15
mips                          rb532_defconfig    clang-18
mips                         rt305x_defconfig    clang-20
mips                        vocore2_defconfig    clang-15
mips                           xway_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                generic-64bit_defconfig    clang-15
powerpc                    adder875_defconfig    clang-15
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                        fsp2_defconfig    clang-15
powerpc                 linkstation_defconfig    clang-20
powerpc                 linkstation_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    clang-18
powerpc                 mpc8313_rdb_defconfig    clang-20
powerpc                 mpc8315_rdb_defconfig    clang-15
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                      pmac32_defconfig    gcc-14.2.0
powerpc                     ppa8548_defconfig    clang-20
powerpc                  storcenter_defconfig    clang-15
powerpc                     tqm5200_defconfig    gcc-14.2.0
powerpc                      tqm8xx_defconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                    nommu_k210_defconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                            hp6xx_defconfig    gcc-14.2.0
sh                          landisk_defconfig    clang-20
sh                          sdk7780_defconfig    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sh                           se7722_defconfig    gcc-14.2.0
sh                           se7751_defconfig    clang-20
sh                           se7780_defconfig    gcc-14.2.0
sh                   secureedge5410_defconfig    clang-20
sh                            shmin_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                       sparc32_defconfig    gcc-14.2.0
sparc                       sparc64_defconfig    clang-15
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20241204    clang-19
x86_64      buildonly-randconfig-002-20241204    clang-19
x86_64      buildonly-randconfig-003-20241204    clang-19
x86_64      buildonly-randconfig-004-20241204    clang-19
x86_64      buildonly-randconfig-005-20241204    clang-19
x86_64      buildonly-randconfig-006-20241204    clang-19
xtensa                            allnoconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
