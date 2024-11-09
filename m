Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B4C9C2DC0
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 15:25:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE5C960635;
	Sat,  9 Nov 2024 14:25:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OhhuU0sI7ZMs; Sat,  9 Nov 2024 14:25:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADA3B605F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731162353;
	bh=ccKQK20nVywjUUYLOQ31n9vvjQuMWJY/4Z9vJ+cgp/A=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a3KbjK7S4folz9Ce+gsmiNcjAjnjiwHG6CdMA1hOJDrhOL8SUVp6wUM0w7N6xMj9I
	 hmh7FP5901Fv3e0r9z1r4cpCi8Og1rrlwoslBke0j2GBNZ3Dkd4e4jNcWdLvv2ijsE
	 TNNfouq8BGGotz0QUBw5CNLHWYrO0qwjXAGzkFVGYwK8RVpm9zNm5Xb1uE5kc5lcRm
	 bU6UA6CqV5ivzfWeyNOmoJMGDV023z04I9l2QtAFwf3zPZ1aFIC/4lEwYB58oGe3k7
	 EzTHH91q19eAOvIKymLDKYz6Mn49eWaX3tCvhHgJbMb5z41HsIPlNaQ+LuS4DRQ0KK
	 YWWiMhrwoQ2Aw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADA3B605F5;
	Sat,  9 Nov 2024 14:25:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BD1D2D92
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 14:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AA9CD6060E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 14:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3_GgiXjwIrh2 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 14:25:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17DCC605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17DCC605F5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17DCC605F5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 14:25:49 +0000 (UTC)
X-CSE-ConnectionGUID: 8+9LIb9NQXWzY4ybMUDoow==
X-CSE-MsgGUID: IqmDcF9XQZ+XUu0p2xr1jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11251"; a="48548396"
X-IronPort-AV: E=Sophos;i="6.12,141,1728975600"; d="scan'208";a="48548396"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2024 06:25:48 -0800
X-CSE-ConnectionGUID: nZmJdtf5R3ucYlpRdqh1Mw==
X-CSE-MsgGUID: 3rwu17NeQAyZBe5dzQEEXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,141,1728975600"; d="scan'208";a="86415169"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa010.fm.intel.com with ESMTP; 09 Nov 2024 06:25:46 -0800
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1t9mPI-000sPJ-1u
 for intel-wired-lan@lists.osuosl.org; Sat, 09 Nov 2024 14:25:44 +0000
Date: Sat, 09 Nov 2024 22:25:35 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202411092230.psoDdeo8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731162350; x=1762698350;
 h=date:from:to:subject:message-id;
 bh=5Z8dCHrEroOiRAfvQBrTvM3wOhdv+9qq+UaNag+2vJE=;
 b=YMY4MO8C8MPs12RSq91qpUh0ayPe/9OxA9nF4R14gf323tKosHNVJLKj
 Yg6Cos/oxeP9lrmUXPbGrxd/mnGAa+MT3OrgygPFwUipIWRXpFJjY/Y85
 mAdTML8xrZfqMsjY2645ezctXhl7Ao1p2OHxz/hmQ3O9nzTInbMgCF18d
 WRm1talNWwrBw4Z/QeeEY1G32VHVaf3L820LjKBMSrhSjl94GwNvv/vbk
 A2VqGF2dkn/2Z1XnTIt7UnmeXj+Rv3alQDJ/ekNOIu6VfMtIAPZWSmeQg
 MfebluZNB8Mrt+Yt5FCnU9fkCxSQf8xFDA8v7VBPrLFnPi3o9owSpPObJ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YMY4MO8C
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 6d0dbb3dae5273e8efd6fd25deb00404ff5a8f38
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
branch HEAD: 6d0dbb3dae5273e8efd6fd25deb00404ff5a8f38  iavf: add support for Rx timestamps to hotpath

elapsed time: 1014m

configs tested: 205
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-20
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-20
arc                              allyesconfig    gcc-13.2.0
arc                          axs101_defconfig    clang-20
arc                                 defconfig    gcc-14.2.0
arc                         haps_hs_defconfig    clang-14
arc                        nsimosci_defconfig    gcc-14.2.0
arc                        vdk_hs38_defconfig    clang-20
arm                              allmodconfig    clang-20
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-20
arm                              allyesconfig    gcc-14.2.0
arm                         at91_dt_defconfig    clang-15
arm                                 defconfig    gcc-14.2.0
arm                         lpc18xx_defconfig    gcc-14.2.0
arm                         lpc32xx_defconfig    clang-20
arm                            mps2_defconfig    gcc-14.2.0
arm                        neponset_defconfig    clang-14
arm                            qcom_defconfig    gcc-14.2.0
arm                        realview_defconfig    clang-20
arm                         s3c6400_defconfig    gcc-14.2.0
arm                           stm32_defconfig    clang-20
arm                           tegra_defconfig    clang-15
arm                           u8500_defconfig    clang-14
arm                           u8500_defconfig    clang-20
arm                         wpcm450_defconfig    clang-15
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241109    clang-19
i386        buildonly-randconfig-002-20241109    clang-19
i386        buildonly-randconfig-003-20241109    clang-19
i386        buildonly-randconfig-004-20241109    clang-19
i386        buildonly-randconfig-005-20241109    clang-19
i386        buildonly-randconfig-006-20241109    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241109    clang-19
i386                  randconfig-002-20241109    clang-19
i386                  randconfig-003-20241109    clang-19
i386                  randconfig-004-20241109    clang-19
i386                  randconfig-005-20241109    clang-19
i386                  randconfig-006-20241109    clang-19
i386                  randconfig-011-20241109    clang-19
i386                  randconfig-012-20241109    clang-19
i386                  randconfig-013-20241109    clang-19
i386                  randconfig-014-20241109    clang-19
i386                  randconfig-015-20241109    clang-19
i386                  randconfig-016-20241109    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          amiga_defconfig    clang-15
m68k                                defconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    clang-14
m68k                        stmark2_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                          ath79_defconfig    clang-20
mips                        bcm63xx_defconfig    clang-15
mips                          eyeq5_defconfig    clang-20
mips                            gpr_defconfig    clang-15
mips                      maltaaprp_defconfig    clang-14
mips                        omega2p_defconfig    clang-20
mips                        qi_lb60_defconfig    gcc-14.2.0
mips                          rb532_defconfig    clang-14
mips                        vocore2_defconfig    clang-15
mips                           xway_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           alldefconfig    clang-14
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-20
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      arches_defconfig    clang-14
powerpc                       eiger_defconfig    clang-15
powerpc                     ep8248e_defconfig    clang-14
powerpc                        fsp2_defconfig    clang-14
powerpc                  iss476-smp_defconfig    clang-14
powerpc                  iss476-smp_defconfig    clang-20
powerpc                     ksi8560_defconfig    gcc-14.2.0
powerpc                     mpc512x_defconfig    gcc-14.2.0
powerpc                 mpc8313_rdb_defconfig    clang-14
powerpc                 mpc8313_rdb_defconfig    clang-20
powerpc                 mpc8313_rdb_defconfig    gcc-14.2.0
powerpc                 mpc834x_itx_defconfig    clang-20
powerpc                 mpc836x_rdk_defconfig    clang-14
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                  mpc885_ads_defconfig    clang-14
powerpc                      pmac32_defconfig    clang-15
powerpc                     redwood_defconfig    clang-14
powerpc                 xes_mpc85xx_defconfig    clang-20
riscv                            alldefconfig    clang-20
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    clang-15
s390                             allmodconfig    clang-20
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                         ecovec24_defconfig    clang-15
sh                        edosk7705_defconfig    gcc-14.2.0
sh                             espt_defconfig    clang-15
sh                            hp6xx_defconfig    clang-20
sh                     magicpanelr2_defconfig    gcc-14.2.0
sh                           se7619_defconfig    gcc-14.2.0
sh                           se7721_defconfig    gcc-14.2.0
sh                   secureedge5410_defconfig    clang-15
sh                        sh7757lcr_defconfig    clang-15
sh                              ul2_defconfig    clang-20
sh                          urquell_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241109    gcc-12
x86_64      buildonly-randconfig-002-20241109    gcc-12
x86_64      buildonly-randconfig-003-20241109    gcc-12
x86_64      buildonly-randconfig-004-20241109    gcc-12
x86_64      buildonly-randconfig-005-20241109    gcc-12
x86_64      buildonly-randconfig-006-20241109    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20241109    gcc-12
x86_64                randconfig-002-20241109    gcc-12
x86_64                randconfig-003-20241109    gcc-12
x86_64                randconfig-004-20241109    gcc-12
x86_64                randconfig-005-20241109    gcc-12
x86_64                randconfig-006-20241109    gcc-12
x86_64                randconfig-011-20241109    gcc-12
x86_64                randconfig-012-20241109    gcc-12
x86_64                randconfig-013-20241109    gcc-12
x86_64                randconfig-014-20241109    gcc-12
x86_64                randconfig-015-20241109    gcc-12
x86_64                randconfig-016-20241109    gcc-12
x86_64                randconfig-071-20241109    gcc-12
x86_64                randconfig-072-20241109    gcc-12
x86_64                randconfig-073-20241109    gcc-12
x86_64                randconfig-074-20241109    gcc-12
x86_64                randconfig-075-20241109    gcc-12
x86_64                randconfig-076-20241109    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                           rhel-8.3-bpf    clang-19
x86_64                         rhel-8.3-kunit    clang-19
x86_64                           rhel-8.3-ltp    clang-19
x86_64                          rhel-8.3-rust    clang-19
xtensa                           alldefconfig    clang-15
xtensa                            allnoconfig    gcc-14.2.0
xtensa                          iss_defconfig    clang-15

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
