Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31815978F63
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2024 11:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9FD39813D9;
	Sat, 14 Sep 2024 09:16:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lWzddO0Pv61g; Sat, 14 Sep 2024 09:16:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3120A81155
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726305417;
	bh=+nFCL3Diidkqof9kd1EibYlXrnJm/eSVHvgCzG2r+Sg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9fYqiZI/nkDwwVDqsY2TpdaqVIdvZoHNfFpy6TTCCbqKeGxux4l/gc1odO9U1nGRm
	 /typU/eLLFsrmUfseXXS3AI+nPpkd3V3uxm2AP7QXC9d9pQSkxB+Jb1P2oytQKlBr6
	 HrYskSH0OvTRn35mtosRy1XRb6FZAv1UxxA/Twfi6irsMNSa1VSG1+/PKh2wfRix0+
	 LDNmBUZV4+GcavEk7zbYEUk6c9ensIJN4W7HPK7sjri0H1rgXl1NJMjJzPfIHZNpuV
	 qmODkSyOP4KIqMAMNfyn8LyE4J+eZNXZzhSt2UQEOPJReNc2K60x7SDcSbt9h4OIZa
	 igthzHBcBKP0Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3120A81155;
	Sat, 14 Sep 2024 09:16:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD281BF280
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F1D1B60605
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:16:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 48CdA6hH8Up7 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2024 09:16:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AF3C0605F5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF3C0605F5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AF3C0605F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 09:16:53 +0000 (UTC)
X-CSE-ConnectionGUID: KNO/DHkDRaycCmvJ0MUfNA==
X-CSE-MsgGUID: tVQb5EoiTQmKchgTBWeAfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="25081271"
X-IronPort-AV: E=Sophos;i="6.10,228,1719903600"; d="scan'208";a="25081271"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2024 02:16:53 -0700
X-CSE-ConnectionGUID: fp+Z5DowShS0y1MLrw3t8Q==
X-CSE-MsgGUID: BH7AC0RyS9qJ49sVGZa84A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,228,1719903600"; d="scan'208";a="73112380"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa003.jf.intel.com with ESMTP; 14 Sep 2024 02:16:52 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1spOtd-0007Ze-2X
 for intel-wired-lan@lists.osuosl.org; Sat, 14 Sep 2024 09:16:49 +0000
Date: Sat, 14 Sep 2024 17:15:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409141750.1E41GkHG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726305414; x=1757841414;
 h=date:from:to:subject:message-id;
 bh=Xss1Y+PL9Q3r44WwOU5FQw/ba6vqFnus1rvwPjy7fKk=;
 b=Nf9PqVasTXLAsuvto3CrPKeCspctSq7VEY4g1pUZV/6xjAVmwsOmKj9w
 FIcXaiRpMYSuN07oFD81OnaBm6QrI6eCU9HytnbwY4KDF/lVf3r+ijOtt
 mcL5tHUj/JuqYOBIC9Cc7I8ZYyP+2MLm6AO8Nq//ui1Vp+kEWaIgWu2tl
 2Cc1obkFN7Hvn/JOAgZdOGMmkZ0SuSojT27ZH/PwBbe/A6aOgPPZzMTyY
 TBhoVsNZ1kkRa8tJ9mk1hcYNq26+Cv37mkIlDSEGzzTx3VFIe4cC+bg4q
 tXuCSF6/TwJuCSs5pbl9pQHUr4xsAS390K8tHeSeoFF+Yh/WTYE+WXpTv
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Nf9PqVas
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 1f2e900ac26fed3b1d11dbcb9f25589644330112
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
branch HEAD: 1f2e900ac26fed3b1d11dbcb9f25589644330112  Merge branch 'bareudp-pull-inner-ip-header-on-xmit-recv'

elapsed time: 1742m

configs tested: 184
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.1.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-14.1.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arc                   randconfig-001-20240914    gcc-13.2.0
arc                   randconfig-002-20240914    gcc-13.2.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    gcc-14.1.0
arm                              allyesconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                      footbridge_defconfig    clang-20
arm                      jornada720_defconfig    clang-20
arm                            mmp2_defconfig    clang-20
arm                        multi_v5_defconfig    clang-20
arm                         orion5x_defconfig    clang-20
arm                   randconfig-001-20240914    gcc-13.2.0
arm                   randconfig-002-20240914    gcc-13.2.0
arm                   randconfig-003-20240914    gcc-13.2.0
arm                   randconfig-004-20240914    gcc-13.2.0
arm                         wpcm450_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    clang-20
arm64                               defconfig    gcc-14.1.0
arm64                 randconfig-001-20240914    gcc-13.2.0
arm64                 randconfig-002-20240914    gcc-13.2.0
arm64                 randconfig-003-20240914    gcc-13.2.0
arm64                 randconfig-004-20240914    gcc-13.2.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
csky                  randconfig-001-20240914    gcc-13.2.0
csky                  randconfig-002-20240914    gcc-13.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.1.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
hexagon               randconfig-001-20240914    gcc-13.2.0
hexagon               randconfig-002-20240914    gcc-13.2.0
i386                             allmodconfig    clang-18
i386                              allnoconfig    clang-18
i386                             allyesconfig    clang-18
i386        buildonly-randconfig-001-20240914    clang-18
i386        buildonly-randconfig-002-20240914    clang-18
i386        buildonly-randconfig-003-20240914    clang-18
i386        buildonly-randconfig-004-20240914    clang-18
i386        buildonly-randconfig-005-20240914    clang-18
i386        buildonly-randconfig-006-20240914    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240914    clang-18
i386                  randconfig-002-20240914    clang-18
i386                  randconfig-003-20240914    clang-18
i386                  randconfig-004-20240914    clang-18
i386                  randconfig-005-20240914    clang-18
i386                  randconfig-006-20240914    clang-18
i386                  randconfig-011-20240914    clang-18
i386                  randconfig-012-20240914    clang-18
i386                  randconfig-013-20240914    clang-18
i386                  randconfig-014-20240914    clang-18
i386                  randconfig-015-20240914    clang-18
i386                  randconfig-016-20240914    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
loongarch             randconfig-001-20240914    gcc-13.2.0
loongarch             randconfig-002-20240914    gcc-13.2.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                       m5249evb_defconfig    clang-20
m68k                        m5307c3_defconfig    clang-20
m68k                          multi_defconfig    clang-20
m68k                        mvme16x_defconfig    clang-20
m68k                           sun3_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                          ath25_defconfig    clang-20
mips                     loongson1b_defconfig    clang-20
mips                        omega2p_defconfig    clang-20
mips                           xway_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
nios2                 randconfig-001-20240914    gcc-13.2.0
nios2                 randconfig-002-20240914    gcc-13.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
openrisc                 simple_smp_defconfig    clang-20
parisc                           alldefconfig    clang-20
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20240914    gcc-13.2.0
parisc                randconfig-002-20240914    gcc-13.2.0
parisc64                            defconfig    gcc-14.1.0
powerpc                    adder875_defconfig    clang-20
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    gcc-14.1.0
powerpc                      bamboo_defconfig    clang-20
powerpc                   bluestone_defconfig    clang-20
powerpc                      chrp32_defconfig    clang-20
powerpc                  mpc885_ads_defconfig    clang-20
powerpc                      ppc44x_defconfig    clang-20
powerpc                     rainier_defconfig    clang-20
powerpc               randconfig-001-20240914    gcc-13.2.0
powerpc64             randconfig-001-20240914    gcc-13.2.0
powerpc64             randconfig-002-20240914    gcc-13.2.0
powerpc64             randconfig-003-20240914    gcc-13.2.0
riscv                            alldefconfig    clang-20
riscv                            allmodconfig    gcc-14.1.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20240914    gcc-13.2.0
riscv                 randconfig-002-20240914    gcc-13.2.0
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20240914    gcc-13.2.0
s390                  randconfig-002-20240914    gcc-13.2.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20240914    gcc-13.2.0
sh                    randconfig-002-20240914    gcc-13.2.0
sh                           se7705_defconfig    clang-20
sh                            shmin_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20240914    gcc-13.2.0
sparc64               randconfig-002-20240914    gcc-13.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20240914    gcc-13.2.0
um                    randconfig-002-20240914    gcc-13.2.0
um                           x86_64_defconfig    clang-20
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20240914    clang-18
x86_64      buildonly-randconfig-002-20240914    clang-18
x86_64      buildonly-randconfig-003-20240914    clang-18
x86_64      buildonly-randconfig-004-20240914    clang-18
x86_64      buildonly-randconfig-005-20240914    clang-18
x86_64      buildonly-randconfig-006-20240914    clang-18
x86_64                              defconfig    clang-18
x86_64                                  kexec    gcc-12
x86_64                randconfig-001-20240914    clang-18
x86_64                randconfig-002-20240914    clang-18
x86_64                randconfig-003-20240914    clang-18
x86_64                randconfig-004-20240914    clang-18
x86_64                randconfig-005-20240914    clang-18
x86_64                randconfig-006-20240914    clang-18
x86_64                randconfig-011-20240914    clang-18
x86_64                randconfig-012-20240914    clang-18
x86_64                randconfig-013-20240914    clang-18
x86_64                randconfig-014-20240914    clang-18
x86_64                randconfig-015-20240914    clang-18
x86_64                randconfig-016-20240914    clang-18
x86_64                randconfig-071-20240914    clang-18
x86_64                randconfig-072-20240914    clang-18
x86_64                randconfig-073-20240914    clang-18
x86_64                randconfig-074-20240914    clang-18
x86_64                randconfig-075-20240914    clang-18
x86_64                randconfig-076-20240914    clang-18
x86_64                          rhel-8.3-rust    clang-18
x86_64                               rhel-8.3    gcc-12
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20240914    gcc-13.2.0
xtensa                randconfig-002-20240914    gcc-13.2.0
xtensa                    smp_lx200_defconfig    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
