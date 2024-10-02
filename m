Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B037998E495
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Oct 2024 23:06:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B04F413E5;
	Wed,  2 Oct 2024 21:06:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CLLlhb3uFSya; Wed,  2 Oct 2024 21:06:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 648FE413CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727903202;
	bh=bZsscPFLkzZEKf6yiWtecotZWEB7HTwSwHCaN7Fhvpc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=jHANTtV7Sr0GoDwsJWW3Zv5TYmXiOLPWZ9uB0+mkIbjQ0E2WG2TRjtS5bi+fwvhvz
	 7uk5Xy9WYnQA7Z/HTDp0tXBdRU5LRzixJR40tzgo/foG79wYuBH5f5dRETcCNwL1Kp
	 Cmasyg9F9QsQDa8aurK9Lki36qDtJTJoPtCz6KecALQnh1dYuGw6KMJuaYlwcpNdNt
	 2RidY2DP98i/+sLhfRBQ/M196Ngf1WkYd6X3dRj7OispI7f3WMgJ3UIsHt1BHOIpDO
	 h038OvGV/4sOatDHog5TQD8qkrBchVDTEqRAz6wU4lmIk3ozq7V68zWKXunK4BlAjH
	 0/1+J4R+gm+3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 648FE413CE;
	Wed,  2 Oct 2024 21:06:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A436F1BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 21:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9E4A160778
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 21:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtWW5OJA-DL0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Oct 2024 21:06:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 54FBD60772
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54FBD60772
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 54FBD60772
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Oct 2024 21:06:38 +0000 (UTC)
X-CSE-ConnectionGUID: BPSO9sGxRyGGnL2C5+BMWw==
X-CSE-MsgGUID: 3WEYl+UrRqaNbDWIL2baHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30792647"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="30792647"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 14:06:37 -0700
X-CSE-ConnectionGUID: TQBqtxStQM+AcUiM5R2kVA==
X-CSE-MsgGUID: lcQtIZpoRLigL53gRG+8Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="78545887"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 02 Oct 2024 14:06:36 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sw6YM-000UYt-1G
 for intel-wired-lan@lists.osuosl.org; Wed, 02 Oct 2024 21:06:34 +0000
Date: Thu, 03 Oct 2024 05:06:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410030552.VfGQsMAW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727903198; x=1759439198;
 h=date:from:to:subject:message-id;
 bh=FhAGcBqWganbP0iRhUqhb1fJ4dP7TU6++fTsHzkJSj4=;
 b=NMu2gBMMxooc9NneK3ibccfkRLOJ2GIzSoiHykB84IH4eCR6T8Ab+NaO
 0jMQXIDNS5DLccBvLg1Eok5lnMsSEY9N6Lxv2n0t1YCnO0y4J73S3j6/X
 gQyjnV0GnpMouVqgiXhhsyq3MLMmiKsxbUBc1ctzy6sNkLGs6yCO9zfm2
 RXksxJpgD5iEcb59pdbDuBqqjUUKXIXHBXY6cDSQJkrTy3KmWaDBRvT4G
 +msX8o+FPfjWqhnd7tTd9w3wftp9q9BWAs6/NUZyxGT5g+qlj3ve7l0pZ
 qzgA2gNat+MKwZwP5VOja1J0G5FDHJqC5yxRL1aZO4tVfzmuon9vtI7KN
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NMu2gBMM
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 0333c82fc6b70a3d3ed0390473cf83d1793bc43f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 0333c82fc6b70a3d3ed0390473cf83d1793bc43f  ice: Drop auxbus use for PTP to finalize ice_adapter move

elapsed time: 1479m

configs tested: 143
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                          axs103_defconfig    gcc-13.2.0
arc                            hsdk_defconfig    gcc-13.2.0
arc                   randconfig-001-20241002    gcc-13.2.0
arc                   randconfig-002-20241002    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                        clps711x_defconfig    clang-20
arm                         lpc18xx_defconfig    clang-20
arm                         orion5x_defconfig    clang-20
arm                   randconfig-001-20241002    gcc-14.1.0
arm                   randconfig-002-20241002    clang-20
arm                   randconfig-003-20241002    clang-14
arm                   randconfig-004-20241002    gcc-14.1.0
arm                        realview_defconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241002    clang-20
arm64                 randconfig-002-20241002    clang-20
arm64                 randconfig-003-20241002    gcc-14.1.0
arm64                 randconfig-004-20241002    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241002    gcc-14.1.0
csky                  randconfig-002-20241002    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241002    clang-20
hexagon               randconfig-002-20241002    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241002    clang-18
i386        buildonly-randconfig-002-20241002    clang-18
i386        buildonly-randconfig-003-20241002    gcc-12
i386        buildonly-randconfig-004-20241002    gcc-12
i386        buildonly-randconfig-005-20241002    gcc-12
i386        buildonly-randconfig-006-20241002    gcc-12
i386                                defconfig    clang-18
i386                  randconfig-001-20241002    gcc-12
i386                  randconfig-002-20241002    gcc-12
i386                  randconfig-003-20241002    clang-18
i386                  randconfig-004-20241002    clang-18
i386                  randconfig-005-20241002    clang-18
i386                  randconfig-006-20241002    gcc-12
i386                  randconfig-011-20241002    clang-18
i386                  randconfig-012-20241002    clang-18
i386                  randconfig-013-20241002    gcc-12
i386                  randconfig-014-20241002    clang-18
i386                  randconfig-015-20241002    clang-18
i386                  randconfig-016-20241002    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20241002    gcc-14.1.0
loongarch             randconfig-002-20241002    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                       m5275evb_defconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                        bcm63xx_defconfig    clang-17
mips                     loongson1b_defconfig    clang-15
mips                        qi_lb60_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20241002    gcc-14.1.0
nios2                 randconfig-002-20241002    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
parisc                randconfig-001-20241002    gcc-14.1.0
parisc                randconfig-002-20241002    gcc-14.1.0
parisc64                         alldefconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                   currituck_defconfig    clang-20
powerpc               randconfig-002-20241002    clang-20
powerpc               randconfig-003-20241002    clang-20
powerpc64             randconfig-001-20241002    gcc-14.1.0
powerpc64             randconfig-002-20241002    gcc-14.1.0
powerpc64             randconfig-003-20241002    gcc-14.1.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    clang-20
riscv                 randconfig-001-20241002    clang-14
riscv                 randconfig-002-20241002    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
s390                  randconfig-001-20241002    gcc-14.1.0
s390                  randconfig-002-20241002    gcc-14.1.0
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sh                          kfr2r09_defconfig    gcc-14.1.0
sh                    randconfig-001-20241002    gcc-14.1.0
sh                    randconfig-002-20241002    gcc-14.1.0
sh                           se7750_defconfig    gcc-14.1.0
sh                            shmin_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-14.1.0
sparc64               randconfig-001-20241002    gcc-14.1.0
sparc64               randconfig-002-20241002    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241002    gcc-12
um                    randconfig-002-20241002    gcc-12
um                           x86_64_defconfig    clang-15
x86_64      buildonly-randconfig-001-20241002    gcc-12
x86_64      buildonly-randconfig-002-20241002    gcc-12
x86_64      buildonly-randconfig-003-20241002    gcc-12
x86_64      buildonly-randconfig-004-20241002    gcc-12
x86_64      buildonly-randconfig-005-20241002    gcc-12
x86_64      buildonly-randconfig-006-20241002    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20241002    clang-18
x86_64                randconfig-002-20241002    gcc-12
x86_64                randconfig-003-20241002    clang-18
x86_64                randconfig-004-20241002    gcc-11
x86_64                randconfig-005-20241002    gcc-11
x86_64                randconfig-006-20241002    clang-18
x86_64                randconfig-011-20241002    clang-18
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                randconfig-001-20241002    gcc-14.1.0
xtensa                randconfig-002-20241002    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
