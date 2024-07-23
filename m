Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0612893990A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 06:59:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4DF9811CC;
	Tue, 23 Jul 2024 04:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q0aZ_ZeM4I01; Tue, 23 Jul 2024 04:59:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB70D8119F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721710767;
	bh=LgOiqdhKsKzD12VeZW1EFPQyg6SpM4qlnzu3czPszMA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7wdwBY17LGK1Uop0EsY/9yv/0WS4zJgQfifx+JZkdrMAekmqS1p1IsAvlD6S2oPkt
	 u+pmpmuPzoW0EXjIdr3+/Ro6Cf/7LrKnyS5nxC+HQjqtAER7H7L+vwpAklIttJ/Igr
	 xj6rnHjDIxsNNR+4v00jINngh35z7dlupWTbo9OxEAsbmsj6ww/teakq+b4vL0rgrV
	 UY0UiVK28TeaNYy1TWiWr/LIwe6YBPKPOkLHINk422UYbidooqY55wECd8mwaR3bSc
	 CqUsP77Fq0NgVUp5Lncbsjr4F+iEVhyKqVAvbJkUTsaPA8rMMTHHAwfZMlqJArYTtr
	 Bug9svD7q7WWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB70D8119F;
	Tue, 23 Jul 2024 04:59:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00B781BF215
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 04:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED4C260654
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 04:59:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i2ukuilixovM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 04:59:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 72186605C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72186605C8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72186605C8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 04:59:24 +0000 (UTC)
X-CSE-ConnectionGUID: 0N4DSyIXSwKMmSqMOeUCVg==
X-CSE-MsgGUID: HI+IfaBOQvywKAooyUznag==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19438605"
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="19438605"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 21:59:20 -0700
X-CSE-ConnectionGUID: vurgb4IuRPi6XJvHcPXCIA==
X-CSE-MsgGUID: FRli4734Q6ukVHVxJ2jjqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="51998158"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 22 Jul 2024 21:59:19 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sW7cI-000lew-2Q
 for intel-wired-lan@lists.osuosl.org; Tue, 23 Jul 2024 04:59:14 +0000
Date: Tue, 23 Jul 2024 12:58:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407231239.wS2liPDZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721710765; x=1753246765;
 h=date:from:to:subject:message-id;
 bh=VNvIa6MDgsvJHun0EZx4pacn8D/FK3HI/jNXn3Ud7lY=;
 b=mjKEYCCPmEfO7ZtJ4sjnHuR031on/UTFSRb6L2pkyD8F/5v7EDJ76Xi8
 YlABgO5IV4UMiNeZEtLTaVAzhhYjLu/tKhtrb0EtxqEzxDtP9oyMKZYW+
 0SJxRIze7gluYvWyS9YUhPJ9VXxQgWJtJDyoZZbfxhXypffbe233G8Sbq
 aTLFAft6z2HMBEeN57IaAXGViNW3Ee0wswnmzdI6VhsVPSt5Aqd87+HVF
 iJaeKESWu8NkoEyTKiJHYVr5kyjCyryq8Uvu4AeA9DYpLs+2aeDKcabFk
 EIHNncal8XzYUjkB6xpQm9yuWuPxGb0lh4OGhY8PcdW1Zqs/zkAWpCmZI
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mjKEYCCP
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 5104599d28a023c2650f1f1da7a522381fb26057
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
branch HEAD: 5104599d28a023c2650f1f1da7a522381fb26057  ice: Adjust over allocation of memory in ice_sched_add_root_node() and ice_sched_add_node()

elapsed time: 729m

configs tested: 221
configs skipped: 3

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
arc                          axs101_defconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240723   gcc-13.2.0
arc                   randconfig-002-20240723   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                         axm55xx_defconfig   clang-19
arm                                 defconfig   gcc-13.2.0
arm                          exynos_defconfig   clang-17
arm                          moxart_defconfig   gcc-13.2.0
arm                             pxa_defconfig   gcc-14.1.0
arm                   randconfig-001-20240723   gcc-14.1.0
arm                   randconfig-002-20240723   gcc-14.1.0
arm                   randconfig-003-20240723   gcc-14.1.0
arm                   randconfig-004-20240723   clang-19
arm                             rpc_defconfig   clang-19
arm                          sp7021_defconfig   gcc-13.2.0
arm                           spitz_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240723   gcc-14.1.0
arm64                 randconfig-002-20240723   gcc-14.1.0
arm64                 randconfig-003-20240723   clang-19
arm64                 randconfig-004-20240723   clang-16
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240723   gcc-14.1.0
csky                  randconfig-002-20240723   gcc-14.1.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240723   clang-19
hexagon               randconfig-002-20240723   clang-19
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240723   gcc-8
i386         buildonly-randconfig-002-20240723   gcc-8
i386         buildonly-randconfig-003-20240723   gcc-13
i386         buildonly-randconfig-003-20240723   gcc-8
i386         buildonly-randconfig-004-20240723   gcc-12
i386         buildonly-randconfig-004-20240723   gcc-8
i386         buildonly-randconfig-005-20240723   clang-18
i386         buildonly-randconfig-005-20240723   gcc-8
i386         buildonly-randconfig-006-20240723   clang-18
i386         buildonly-randconfig-006-20240723   gcc-8
i386                                defconfig   clang-18
i386                  randconfig-001-20240723   clang-18
i386                  randconfig-001-20240723   gcc-8
i386                  randconfig-002-20240723   gcc-12
i386                  randconfig-002-20240723   gcc-8
i386                  randconfig-003-20240723   gcc-13
i386                  randconfig-003-20240723   gcc-8
i386                  randconfig-004-20240723   gcc-10
i386                  randconfig-004-20240723   gcc-8
i386                  randconfig-005-20240723   gcc-13
i386                  randconfig-005-20240723   gcc-8
i386                  randconfig-006-20240723   gcc-13
i386                  randconfig-006-20240723   gcc-8
i386                  randconfig-011-20240723   gcc-11
i386                  randconfig-011-20240723   gcc-8
i386                  randconfig-012-20240723   clang-18
i386                  randconfig-012-20240723   gcc-8
i386                  randconfig-013-20240723   clang-18
i386                  randconfig-013-20240723   gcc-8
i386                  randconfig-014-20240723   gcc-7
i386                  randconfig-014-20240723   gcc-8
i386                  randconfig-015-20240723   gcc-13
i386                  randconfig-015-20240723   gcc-8
i386                  randconfig-016-20240723   clang-18
i386                  randconfig-016-20240723   gcc-8
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-13.2.0
loongarch             randconfig-001-20240723   gcc-14.1.0
loongarch             randconfig-002-20240723   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                       bvme6000_defconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                       m5475evb_defconfig   gcc-13.2.0
m68k                            mac_defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm47xx_defconfig   clang-15
mips                     loongson1c_defconfig   gcc-13.2.0
mips                malta_qemu_32r6_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240723   gcc-14.1.0
nios2                 randconfig-002-20240723   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240723   gcc-14.1.0
parisc                randconfig-002-20240723   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                      ep88xc_defconfig   gcc-13.2.0
powerpc                          g5_defconfig   gcc-14.1.0
powerpc                 mpc8313_rdb_defconfig   gcc-13.2.0
powerpc                 mpc836x_rdk_defconfig   gcc-13.2.0
powerpc                         ps3_defconfig   gcc-14.1.0
powerpc                     rainier_defconfig   gcc-14.1.0
powerpc               randconfig-001-20240723   gcc-14.1.0
powerpc               randconfig-002-20240723   gcc-14.1.0
powerpc               randconfig-003-20240723   gcc-14.1.0
powerpc64             randconfig-001-20240723   gcc-14.1.0
powerpc64             randconfig-002-20240723   gcc-14.1.0
powerpc64             randconfig-003-20240723   clang-14
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   gcc-14.1.0
riscv                    nommu_k210_defconfig   clang-19
riscv                 randconfig-001-20240723   gcc-14.1.0
riscv                 randconfig-002-20240723   clang-17
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240723   clang-19
s390                  randconfig-002-20240723   clang-19
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         ap325rxa_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                ecovec24-romimage_defconfig   gcc-14.1.0
sh                    randconfig-001-20240723   gcc-14.1.0
sh                    randconfig-002-20240723   gcc-14.1.0
sh                          rsk7264_defconfig   gcc-14.1.0
sh                           se7705_defconfig   gcc-14.1.0
sh                           se7724_defconfig   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sh                     sh7710voipgw_defconfig   gcc-14.1.0
sh                   sh7724_generic_defconfig   gcc-14.1.0
sh                            shmin_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240723   gcc-10
x86_64       buildonly-randconfig-002-20240723   gcc-10
x86_64       buildonly-randconfig-003-20240723   gcc-10
x86_64       buildonly-randconfig-003-20240723   gcc-12
x86_64       buildonly-randconfig-004-20240723   gcc-10
x86_64       buildonly-randconfig-004-20240723   gcc-8
x86_64       buildonly-randconfig-005-20240723   gcc-10
x86_64       buildonly-randconfig-005-20240723   gcc-12
x86_64       buildonly-randconfig-006-20240723   gcc-10
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240723   clang-18
x86_64                randconfig-001-20240723   gcc-10
x86_64                randconfig-002-20240723   clang-18
x86_64                randconfig-002-20240723   gcc-10
x86_64                randconfig-003-20240723   clang-18
x86_64                randconfig-003-20240723   gcc-10
x86_64                randconfig-004-20240723   clang-18
x86_64                randconfig-004-20240723   gcc-10
x86_64                randconfig-005-20240723   clang-18
x86_64                randconfig-005-20240723   gcc-10
x86_64                randconfig-006-20240723   clang-18
x86_64                randconfig-006-20240723   gcc-10
x86_64                randconfig-011-20240723   gcc-10
x86_64                randconfig-012-20240723   gcc-10
x86_64                randconfig-013-20240723   gcc-10
x86_64                randconfig-014-20240723   gcc-10
x86_64                randconfig-015-20240723   gcc-10
x86_64                randconfig-016-20240723   gcc-10
x86_64                randconfig-071-20240723   gcc-10
x86_64                randconfig-072-20240723   gcc-10
x86_64                randconfig-073-20240723   gcc-10
x86_64                randconfig-074-20240723   gcc-10
x86_64                randconfig-075-20240723   gcc-10
x86_64                randconfig-076-20240723   gcc-10
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
