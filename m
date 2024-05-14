Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 615E88C4EB5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 12:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CDB4D40173;
	Tue, 14 May 2024 10:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id unHht7CrBUNB; Tue, 14 May 2024 10:03:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A93E241713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715680999;
	bh=3qaSjgEHXcWvzncll1TqYqY9h3cXSMxMkNWYpYwYFVI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u3O8p6mk70ZBh888LhsKvrv0l75XrcL8pCoowQ50PIFIGS8oGpJpkETcIKTjtdzT8
	 qirJYMWHZqBlBXgK0Xl44t1KajQKp8sjL2b9nnmH/GW4I9jgki66O9GVfaUpGBQqzM
	 aipyfU3b7J2PE6UppJYoxXorlRSdDKHaw0sO41mrBLrj3eDlWbu/F0uRj+YITQbtpm
	 VwX+433ZmrVg6FsS2FauBWAvW/mqaBAl47mkwr9dHqUMg1L9h7v14t9IlwJIbjkhsr
	 1ok/MtPsacDnziX6Eq76wRkL16PiD7kTMTh3pmAuWvH866OJuVhnFTPOPWgKMbd375
	 BONVsaRH69WbA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A93E241713;
	Tue, 14 May 2024 10:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 336F01BF955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B33960ACA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vau_3TnNl8oo for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 10:03:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C231060AB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C231060AB3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C231060AB3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 10:03:14 +0000 (UTC)
X-CSE-ConnectionGUID: fItCzSHYTr+m2kHGDin0zw==
X-CSE-MsgGUID: bP6qmeIQSvOCXdAnpAjB6g==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="15488257"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="15488257"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 03:03:13 -0700
X-CSE-ConnectionGUID: Ym/LLKaNSRq3I95S0PRqVw==
X-CSE-MsgGUID: zZXgWsfPT5uypA9tmJUxDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30679768"
Received: from lkp-server01.sh.intel.com (HELO f8b243fe6e68) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 14 May 2024 03:03:12 -0700
Received: from kbuild by f8b243fe6e68 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1s6p01-000BMJ-2w
 for intel-wired-lan@lists.osuosl.org; Tue, 14 May 2024 10:03:09 +0000
Date: Tue, 14 May 2024 18:02:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202405141825.NTo22DYq-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715680994; x=1747216994;
 h=date:from:to:subject:message-id;
 bh=nlYPtCisle/y6x8hwFQySyMz5a7GypHK8f3u4uNbN7Q=;
 b=je/sfJtSKYSFA3hZRGCyRZV8hEJCizzFee+cM1hun0agjq5DPjJz6hZX
 qejTRpVb4+4PBjYz2YSV9Dy7I6G4dFAoZQoOJ9FPsO9RDMof8X6pUoRuO
 cn/sbZX2TYU3zhGRwey4pVNnxL+6dcTyWdNU8ZFsorANJbiFCYcJZMQ6f
 eU+tu3nk0arBGd4QgZCwwNAaelUSwf7WagIiPc1i4Mfr6yuVr84qbhbJc
 QOnzgYhepYjrmWPk4dqvsyUgtOK2CwhU3M9XW7zYWBydGxE54Rt7ZgEkb
 gShKbRF4+Dbl57/3vCoMZLkzR752Y8ZMr6FLyjJSOBpVp0ADdgdS1VN+Z
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=je/sfJtS
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 cfc2eefd40f1bc121a41a2acd54458046d77f9ae
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: cfc2eefd40f1bc121a41a2acd54458046d77f9ae  selftests: net: use upstream mtools

elapsed time: 722m

configs tested: 207
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                     nsimosci_hs_defconfig   gcc  
arc                   randconfig-001-20240514   gcc  
arc                   randconfig-002-20240514   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                       aspeed_g5_defconfig   gcc  
arm                                 defconfig   clang
arm                       netwinder_defconfig   gcc  
arm                           omap1_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240514   clang
arm                   randconfig-002-20240514   gcc  
arm                   randconfig-003-20240514   gcc  
arm                   randconfig-004-20240514   gcc  
arm                        realview_defconfig   clang
arm                             rpc_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240514   clang
arm64                 randconfig-002-20240514   clang
arm64                 randconfig-003-20240514   gcc  
arm64                 randconfig-004-20240514   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240514   gcc  
csky                  randconfig-002-20240514   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240514   clang
hexagon               randconfig-002-20240514   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240514   clang
i386         buildonly-randconfig-002-20240514   clang
i386         buildonly-randconfig-003-20240514   gcc  
i386         buildonly-randconfig-004-20240514   clang
i386         buildonly-randconfig-005-20240514   gcc  
i386         buildonly-randconfig-006-20240514   clang
i386                                defconfig   clang
i386                  randconfig-001-20240514   gcc  
i386                  randconfig-002-20240514   clang
i386                  randconfig-003-20240514   gcc  
i386                  randconfig-004-20240514   clang
i386                  randconfig-005-20240514   clang
i386                  randconfig-006-20240514   clang
i386                  randconfig-011-20240514   clang
i386                  randconfig-012-20240514   gcc  
i386                  randconfig-013-20240514   gcc  
i386                  randconfig-014-20240514   clang
i386                  randconfig-015-20240514   gcc  
i386                  randconfig-016-20240514   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240514   gcc  
loongarch             randconfig-002-20240514   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath79_defconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                            gpr_defconfig   clang
mips                          malta_defconfig   gcc  
mips                        maltaup_defconfig   clang
mips                    maltaup_xpa_defconfig   gcc  
mips                           mtx1_defconfig   clang
mips                      pic32mzda_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240514   gcc  
nios2                 randconfig-002-20240514   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240514   gcc  
parisc                randconfig-002-20240514   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                     asp8347_defconfig   clang
powerpc                      cm5200_defconfig   clang
powerpc                   currituck_defconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc                    ge_imp3a_defconfig   gcc  
powerpc                       maple_defconfig   clang
powerpc                      mgcoge_defconfig   clang
powerpc                 mpc834x_itx_defconfig   clang
powerpc                      pcm030_defconfig   clang
powerpc               randconfig-001-20240514   gcc  
powerpc               randconfig-002-20240514   gcc  
powerpc               randconfig-003-20240514   clang
powerpc                     redwood_defconfig   clang
powerpc                  storcenter_defconfig   gcc  
powerpc64             randconfig-001-20240514   clang
powerpc64             randconfig-002-20240514   clang
powerpc64             randconfig-003-20240514   gcc  
riscv                            alldefconfig   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240514   gcc  
riscv                 randconfig-002-20240514   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240514   gcc  
s390                  randconfig-002-20240514   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240514   gcc  
sh                    randconfig-002-20240514   gcc  
sh                          rsk7264_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7619_defconfig   gcc  
sh                           se7750_defconfig   gcc  
sh                           sh2007_defconfig   gcc  
sh                   sh7724_generic_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sh                          urquell_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240514   gcc  
sparc64               randconfig-002-20240514   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240514   clang
um                    randconfig-002-20240514   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240514   clang
x86_64       buildonly-randconfig-002-20240514   clang
x86_64       buildonly-randconfig-003-20240514   gcc  
x86_64       buildonly-randconfig-004-20240514   clang
x86_64       buildonly-randconfig-005-20240514   clang
x86_64       buildonly-randconfig-006-20240514   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240514   gcc  
x86_64                randconfig-002-20240514   gcc  
x86_64                randconfig-003-20240514   clang
x86_64                randconfig-004-20240514   clang
x86_64                randconfig-005-20240514   gcc  
x86_64                randconfig-006-20240514   gcc  
x86_64                randconfig-011-20240514   clang
x86_64                randconfig-012-20240514   gcc  
x86_64                randconfig-013-20240514   gcc  
x86_64                randconfig-014-20240514   clang
x86_64                randconfig-015-20240514   gcc  
x86_64                randconfig-016-20240514   gcc  
x86_64                randconfig-071-20240514   clang
x86_64                randconfig-072-20240514   clang
x86_64                randconfig-073-20240514   gcc  
x86_64                randconfig-074-20240514   gcc  
x86_64                randconfig-075-20240514   clang
x86_64                randconfig-076-20240514   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240514   gcc  
xtensa                randconfig-002-20240514   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
