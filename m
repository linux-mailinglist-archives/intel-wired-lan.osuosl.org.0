Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8C79FA28D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 21:49:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D101E4250A;
	Sat, 21 Dec 2024 20:49:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z1QTFoM2baiR; Sat, 21 Dec 2024 20:49:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D049500B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734814153;
	bh=TfhDrWkaJ9zT8y4W5s/L/86CvvaQaY1tWlVKDSx6E+k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aaF8UXgkbP9fPLJUg838245YqHiGf/rxi3Shj9XqBNpfIFQavn0Awd2n3a7tL49cb
	 XoA5s2rOsVwHwKCt+w3T/Kpy9iyEKFsPPqanNgH1E8xOkxaMbIlILCFZYq2lIsNL1D
	 2Q3n1rNLOeVhTtF4yKk8OvLDoDpTYZvW9Ue9pt1R1ZPGGk/iMZ5xtCBTwYYRMgZUMZ
	 AN1SXXZ+cIscrDqPCO4y+1FOsN3ZhqszenP3tGeAH7xlL6FMd2x/IXu4mV0AHtMfot
	 He+YL2556wguKHm/6DbCl5qXbMsndt/KjqojXyrS/hCyr8FmCMxAdTxpQGrqby+7sv
	 i9n5+71vmct0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D049500B3;
	Sat, 21 Dec 2024 20:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 997A7757
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 20:48:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 82ED4400F9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 20:48:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nWtUaiG_gkXq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 20:48:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9D2CE400B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D2CE400B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D2CE400B5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 20:48:45 +0000 (UTC)
X-CSE-ConnectionGUID: cDlCGmTdQH+MSxjueI5ZyA==
X-CSE-MsgGUID: zQuV8yUXTFu1lxn/shUSPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11293"; a="52735411"
X-IronPort-AV: E=Sophos;i="6.12,254,1728975600"; d="scan'208";a="52735411"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2024 12:48:44 -0800
X-CSE-ConnectionGUID: u8ZzREriSx2oNXDk3lbTDA==
X-CSE-MsgGUID: ImnkEduURnyp43dBrQ1K4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136169249"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 21 Dec 2024 12:48:44 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tP6Ov-0002TL-0v
 for intel-wired-lan@lists.osuosl.org; Sat, 21 Dec 2024 20:48:41 +0000
Date: Sun, 22 Dec 2024 04:47:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412220448.5FmVSnSY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734814125; x=1766350125;
 h=date:from:to:subject:message-id;
 bh=4PHgFIh3Sjga/jnmq/opu2pjd37F+5V06VfD9KBGhnE=;
 b=RZX9PgZcx9rBXIgv20gScdcjcMvwTdw4DfbfE7Qfm9mdN4gZJ0TyrzlM
 KBkwp0T/iWyGBTNqeGboZYSSpcVKT07wbHteHiemN3PWjrI2QmPGZVoxC
 hYhPBSNaQsOmP9qNIy+pbq2dAZFuMkd6+MOTJmewt4qT/PNcUBnqy83dz
 mdQsPAHEDO1/YO2EXQvRXHgJWFbs8dFksCfqoyp38Tl7lysGuJIISRLN2
 BRc3BLOJ6vv69EBuejI8tEuRF0eV68FO+r+CZzn3++a9wb3FCwYMyizBt
 sss0ERtDwwH3RyVKZPHll5L5smY/n5g7LZ2fucUlWzORsdrxKrkCah/mk
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RZX9PgZc
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 4c44b450c69b676955c2790dcf467c1f969d80f1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 4c44b450c69b676955c2790dcf467c1f969d80f1  ixgbevf: Add support for Intel(R) E610 device

elapsed time: 1446m

configs tested: 215
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                            hsdk_defconfig    clang-20
arc                        nsim_700_defconfig    clang-20
arc                   randconfig-001-20241221    gcc-13.2.0
arc                   randconfig-002-20241221    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                                 defconfig    gcc-14.2.0
arm                   randconfig-001-20241221    gcc-13.2.0
arm                   randconfig-001-20241221    gcc-14.2.0
arm                   randconfig-002-20241221    gcc-13.2.0
arm                   randconfig-002-20241221    gcc-14.2.0
arm                   randconfig-003-20241221    gcc-13.2.0
arm                   randconfig-003-20241221    gcc-14.2.0
arm                   randconfig-004-20241221    clang-18
arm                   randconfig-004-20241221    gcc-13.2.0
arm                           sunxi_defconfig    clang-20
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20241221    clang-18
arm64                 randconfig-001-20241221    gcc-13.2.0
arm64                 randconfig-002-20241221    clang-16
arm64                 randconfig-002-20241221    gcc-13.2.0
arm64                 randconfig-003-20241221    clang-20
arm64                 randconfig-003-20241221    gcc-13.2.0
arm64                 randconfig-004-20241221    gcc-13.2.0
arm64                 randconfig-004-20241221    gcc-14.2.0
csky                             alldefconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20241221    gcc-14.2.0
csky                  randconfig-002-20241221    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20241221    clang-17
hexagon               randconfig-001-20241221    gcc-14.2.0
hexagon               randconfig-002-20241221    clang-20
hexagon               randconfig-002-20241221    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241221    clang-19
i386        buildonly-randconfig-001-20241221    gcc-12
i386        buildonly-randconfig-002-20241221    clang-19
i386        buildonly-randconfig-002-20241221    gcc-12
i386        buildonly-randconfig-003-20241221    clang-19
i386        buildonly-randconfig-004-20241221    clang-19
i386        buildonly-randconfig-005-20241221    clang-19
i386        buildonly-randconfig-006-20241221    clang-19
i386                                defconfig    clang-19
i386                  randconfig-001-20241221    gcc-12
i386                  randconfig-002-20241221    gcc-12
i386                  randconfig-003-20241221    gcc-12
i386                  randconfig-004-20241221    gcc-12
i386                  randconfig-005-20241221    gcc-12
i386                  randconfig-006-20241221    gcc-12
i386                  randconfig-007-20241221    gcc-12
i386                  randconfig-011-20241221    gcc-12
i386                  randconfig-012-20241221    gcc-12
i386                  randconfig-013-20241221    gcc-12
i386                  randconfig-014-20241221    gcc-12
i386                  randconfig-015-20241221    gcc-12
i386                  randconfig-016-20241221    gcc-12
i386                  randconfig-017-20241221    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20241221    gcc-14.2.0
loongarch             randconfig-002-20241221    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20241221    gcc-14.2.0
nios2                 randconfig-002-20241221    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20241221    gcc-14.2.0
parisc                randconfig-002-20241221    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc                 canyonlands_defconfig    clang-20
powerpc                      cm5200_defconfig    clang-20
powerpc                    gamecube_defconfig    clang-20
powerpc                        icon_defconfig    clang-20
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc                   lite5200b_defconfig    gcc-14.2.0
powerpc                 mpc8315_rdb_defconfig    gcc-14.2.0
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                     ppa8548_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241221    gcc-14.2.0
powerpc               randconfig-002-20241221    gcc-14.2.0
powerpc               randconfig-003-20241221    gcc-14.2.0
powerpc64             randconfig-001-20241221    gcc-14.2.0
powerpc64             randconfig-002-20241221    gcc-14.2.0
powerpc64             randconfig-003-20241221    clang-18
powerpc64             randconfig-003-20241221    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20241221    clang-18
riscv                 randconfig-001-20241221    gcc-14.2.0
riscv                 randconfig-002-20241221    clang-18
riscv                 randconfig-002-20241221    gcc-14.2.0
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20241221    clang-18
s390                  randconfig-001-20241221    gcc-14.2.0
s390                  randconfig-002-20241221    clang-18
s390                  randconfig-002-20241221    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                    randconfig-001-20241221    clang-18
sh                    randconfig-001-20241221    gcc-14.2.0
sh                    randconfig-002-20241221    clang-18
sh                    randconfig-002-20241221    gcc-14.2.0
sh                   sh7724_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241221    clang-18
sparc                 randconfig-001-20241221    gcc-14.2.0
sparc                 randconfig-002-20241221    clang-18
sparc                 randconfig-002-20241221    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20241221    clang-18
sparc64               randconfig-001-20241221    gcc-14.2.0
sparc64               randconfig-002-20241221    clang-18
sparc64               randconfig-002-20241221    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20241221    clang-18
um                    randconfig-002-20241221    clang-18
um                    randconfig-002-20241221    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241221    gcc-12
x86_64      buildonly-randconfig-002-20241221    gcc-12
x86_64      buildonly-randconfig-003-20241221    gcc-12
x86_64      buildonly-randconfig-004-20241221    gcc-12
x86_64      buildonly-randconfig-005-20241221    gcc-11
x86_64      buildonly-randconfig-005-20241221    gcc-12
x86_64      buildonly-randconfig-006-20241221    gcc-12
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241221    gcc-11
x86_64                randconfig-002-20241221    gcc-11
x86_64                randconfig-003-20241221    gcc-11
x86_64                randconfig-004-20241221    gcc-11
x86_64                randconfig-005-20241221    gcc-11
x86_64                randconfig-006-20241221    gcc-11
x86_64                randconfig-007-20241221    gcc-11
x86_64                randconfig-008-20241221    gcc-11
x86_64                randconfig-071-20241221    gcc-12
x86_64                randconfig-072-20241221    gcc-12
x86_64                randconfig-073-20241221    gcc-12
x86_64                randconfig-074-20241221    gcc-12
x86_64                randconfig-075-20241221    gcc-12
x86_64                randconfig-076-20241221    gcc-12
x86_64                randconfig-077-20241221    gcc-12
x86_64                randconfig-078-20241221    gcc-12
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241221    clang-18
xtensa                randconfig-001-20241221    gcc-14.2.0
xtensa                randconfig-002-20241221    clang-18
xtensa                randconfig-002-20241221    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
