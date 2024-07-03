Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD44926623
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 18:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32103417E7;
	Wed,  3 Jul 2024 16:30:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xyIvczB3mvlB; Wed,  3 Jul 2024 16:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E3BA418E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720024226;
	bh=qKh9PDqOoNurN0ms0kap/cT96Gy7bgwsPGo1L+H2Qho=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=w7d8XbFXupB0ovsAM8ZMi5Ki16dxwLoTqsI+BlDlL6CcaQMik5TKSoyYlZlOrsggq
	 j8HFmu7OnHwTnaMEqjJwm8uTCa5YAkkdjWcWRE/SxNNpw2JMl5/PT+7ZwxRo9mT8C5
	 aG8K2Ekt/GBXocUWMLrnDRqjudITXwh0Vv8vEbapM9uW1K2M+Qi0r6WU1tIJRKXt38
	 lk8y6Q4fkcRvsWJOKJo2szGN4PT7m/ilXVYo4NlT8xc27XJIrUaDA5PwtD5YpBWF4N
	 bLIkI6ciD/e6cRpJ9TYZtutyydaT84FpHf7Ttl0RuxjuPzHr7ByzSz2OKHa/25SH2z
	 Wh9KzRSHXdl+A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E3BA418E4;
	Wed,  3 Jul 2024 16:30:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACCC91BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 16:30:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A52B841AFE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 16:30:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8eYgeYakeUEL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 16:30:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F0A1C400BA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0A1C400BA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0A1C400BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 16:30:22 +0000 (UTC)
X-CSE-ConnectionGUID: SZPqJmtdQR+IaDOVuMrqyw==
X-CSE-MsgGUID: EVkFYxeVTTS7PcmNu7FyXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11122"; a="28406934"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="28406934"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 09:30:21 -0700
X-CSE-ConnectionGUID: CJ7urYucTD6QgRY5DQ23Vg==
X-CSE-MsgGUID: BpUo0tMzRUOgrW5xYBieTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="77043770"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa002.jf.intel.com with ESMTP; 03 Jul 2024 09:30:20 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sP2s6-000PyN-0l
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Jul 2024 16:30:18 +0000
Date: Thu, 04 Jul 2024 00:29:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407040026.MkiheqTW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720024223; x=1751560223;
 h=date:from:to:subject:message-id;
 bh=YMLVJnrsEvmut5F/C4mL8/wRVWb1vqgC3BLEIT4OGDg=;
 b=TTFVFJrN6xnMNZm4cvhhRop4DQcURvivBi6QkevjDYeumkVvaIDgvQt2
 wxHEEUR78UgqP36Q6ZPefgnppeuR6kDqoNOPOConGrR69udrIQSQtjbtK
 AjBMSr+swhwxD0GXH5qO1JsKkrHpRgckkMqO1N+da49wdQupQVIh9BdXp
 YwYfLsXbUOvQcQPh3hjI83UqTMdMFltY/owgIGed/svdZ1mW2bz8nZrx3
 Zp/J4N8pFYKE0aLl9o9GFCjlQi0U2jU/t51NoG6EOwo2Yzbx6wOdSu/Yg
 r/Xzmc+uYxtxvuYspJYSqdUBQve/dBFX6y6PJj4UoSo9tzh2qVMfeZmJI
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TTFVFJrN
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 8905a2c7d39b921b8a62bcf80da0f8c45ec0e764
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: 8905a2c7d39b921b8a62bcf80da0f8c45ec0e764  Merge branch 'net-txgbe-fix-msi-and-intx-interrupts'

elapsed time: 1519m

configs tested: 203
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240703   gcc-13.2.0
arc                   randconfig-002-20240703   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                          collie_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                          gemini_defconfig   gcc-13.2.0
arm                           imxrt_defconfig   gcc-13.2.0
arm                       netwinder_defconfig   gcc-13.2.0
arm                   randconfig-001-20240703   clang-19
arm                   randconfig-001-20240703   gcc-13.2.0
arm                   randconfig-002-20240703   gcc-13.2.0
arm                   randconfig-003-20240703   clang-19
arm                   randconfig-003-20240703   gcc-13.2.0
arm                   randconfig-004-20240703   clang-19
arm                   randconfig-004-20240703   gcc-13.2.0
arm                        spear3xx_defconfig   gcc-13.2.0
arm                         wpcm450_defconfig   gcc-13.2.0
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240703   clang-19
arm64                 randconfig-001-20240703   gcc-13.2.0
arm64                 randconfig-002-20240703   gcc-13.2.0
arm64                 randconfig-003-20240703   gcc-13.2.0
arm64                 randconfig-004-20240703   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240703   gcc-13.2.0
csky                  randconfig-002-20240703   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon               randconfig-001-20240703   clang-16
hexagon               randconfig-002-20240703   clang-19
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240703   clang-18
i386         buildonly-randconfig-002-20240703   clang-18
i386         buildonly-randconfig-002-20240703   gcc-13
i386         buildonly-randconfig-003-20240703   clang-18
i386         buildonly-randconfig-003-20240703   gcc-13
i386         buildonly-randconfig-004-20240703   clang-18
i386         buildonly-randconfig-004-20240703   gcc-13
i386         buildonly-randconfig-005-20240703   clang-18
i386         buildonly-randconfig-006-20240703   clang-18
i386         buildonly-randconfig-006-20240703   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240703   clang-18
i386                  randconfig-001-20240703   gcc-13
i386                  randconfig-002-20240703   clang-18
i386                  randconfig-003-20240703   clang-18
i386                  randconfig-003-20240703   gcc-13
i386                  randconfig-004-20240703   clang-18
i386                  randconfig-004-20240703   gcc-11
i386                  randconfig-005-20240703   clang-18
i386                  randconfig-006-20240703   clang-18
i386                  randconfig-006-20240703   gcc-7
i386                  randconfig-011-20240703   clang-18
i386                  randconfig-011-20240703   gcc-13
i386                  randconfig-012-20240703   clang-18
i386                  randconfig-012-20240703   gcc-13
i386                  randconfig-013-20240703   clang-18
i386                  randconfig-013-20240703   gcc-13
i386                  randconfig-014-20240703   clang-18
i386                  randconfig-014-20240703   gcc-13
i386                  randconfig-015-20240703   clang-18
i386                  randconfig-015-20240703   gcc-13
i386                  randconfig-016-20240703   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240703   gcc-13.2.0
loongarch             randconfig-002-20240703   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240703   gcc-13.2.0
nios2                 randconfig-002-20240703   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240703   gcc-13.2.0
parisc                randconfig-002-20240703   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc                          allyesconfig   gcc-13.2.0
powerpc                   motionpro_defconfig   gcc-13.2.0
powerpc                 mpc8315_rdb_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240703   clang-19
powerpc               randconfig-001-20240703   gcc-13.2.0
powerpc               randconfig-002-20240703   gcc-13.2.0
powerpc               randconfig-003-20240703   clang-15
powerpc               randconfig-003-20240703   gcc-13.2.0
powerpc64             randconfig-001-20240703   gcc-13.2.0
powerpc64             randconfig-002-20240703   gcc-13.2.0
powerpc64             randconfig-003-20240703   clang-19
powerpc64             randconfig-003-20240703   gcc-13.2.0
riscv                            allmodconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                            allyesconfig   gcc-13.2.0
riscv                               defconfig   gcc-13.2.0
riscv                 randconfig-001-20240703   clang-19
riscv                 randconfig-001-20240703   gcc-13.2.0
riscv                 randconfig-002-20240703   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-13.2.0
s390                             allyesconfig   clang-19
s390                                defconfig   gcc-13.2.0
s390                  randconfig-001-20240703   clang-15
s390                  randconfig-001-20240703   gcc-13.2.0
s390                  randconfig-002-20240703   clang-19
s390                  randconfig-002-20240703   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                         ap325rxa_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                          polaris_defconfig   gcc-13.2.0
sh                    randconfig-001-20240703   gcc-13.2.0
sh                    randconfig-002-20240703   gcc-13.2.0
sh                   rts7751r2dplus_defconfig   gcc-13.2.0
sh                              ul2_defconfig   gcc-13.2.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240703   gcc-13.2.0
sparc64               randconfig-002-20240703   gcc-13.2.0
um                               allmodconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-13.2.0
um                               allyesconfig   gcc-13.2.0
um                                  defconfig   gcc-13.2.0
um                             i386_defconfig   gcc-13.2.0
um                    randconfig-001-20240703   clang-19
um                    randconfig-001-20240703   gcc-13.2.0
um                    randconfig-002-20240703   clang-19
um                    randconfig-002-20240703   gcc-13.2.0
um                           x86_64_defconfig   gcc-13.2.0
x86_64                           alldefconfig   gcc-13.2.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240703   clang-18
x86_64       buildonly-randconfig-002-20240703   clang-18
x86_64       buildonly-randconfig-002-20240703   gcc-9
x86_64       buildonly-randconfig-003-20240703   clang-18
x86_64       buildonly-randconfig-004-20240703   clang-18
x86_64       buildonly-randconfig-005-20240703   clang-18
x86_64       buildonly-randconfig-006-20240703   clang-18
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240703   clang-18
x86_64                randconfig-002-20240703   clang-18
x86_64                randconfig-002-20240703   gcc-8
x86_64                randconfig-003-20240703   clang-18
x86_64                randconfig-003-20240703   gcc-13
x86_64                randconfig-004-20240703   clang-18
x86_64                randconfig-005-20240703   clang-18
x86_64                randconfig-005-20240703   gcc-13
x86_64                randconfig-006-20240703   clang-18
x86_64                randconfig-006-20240703   gcc-13
x86_64                randconfig-011-20240703   clang-18
x86_64                randconfig-011-20240703   gcc-9
x86_64                randconfig-012-20240703   clang-18
x86_64                randconfig-012-20240703   gcc-11
x86_64                randconfig-013-20240703   clang-18
x86_64                randconfig-013-20240703   gcc-13
x86_64                randconfig-014-20240703   clang-18
x86_64                randconfig-014-20240703   gcc-13
x86_64                randconfig-015-20240703   clang-18
x86_64                randconfig-016-20240703   clang-18
x86_64                randconfig-071-20240703   clang-18
x86_64                randconfig-071-20240703   gcc-13
x86_64                randconfig-072-20240703   clang-18
x86_64                randconfig-073-20240703   clang-18
x86_64                randconfig-074-20240703   clang-18
x86_64                randconfig-075-20240703   clang-18
x86_64                randconfig-075-20240703   gcc-9
x86_64                randconfig-076-20240703   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                       common_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240703   gcc-13.2.0
xtensa                randconfig-002-20240703   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
