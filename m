Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE7EAB0139
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 May 2025 19:19:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E3D07413FA;
	Thu,  8 May 2025 17:19:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SrQiYwFs90UO; Thu,  8 May 2025 17:19:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF86841448
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746724770;
	bh=94gKyuzyWAi/0+MIgU5G3CdUjTL2feQrC2+UFfZyEbA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DJlsWgU+sEb8dBQ15ZoDZFjsRXaIqCbyQu8n2kLQrGU+5wpzuW4+ClbPWEsp6IXq3
	 fob1AnSrYXVCxewBhTQJIuHb+q4RVLN1eQ6/Buf/T2v3wArscElsbLahRpnLYr8LYC
	 HT1+/EMI5Etvoi0oPyjA1/8y8aBd6M9sL/K9UniCigR48K1cmBFASM2V+QDjMaqFdn
	 ydRx6d6NBj2E0Kse0WmW5SB4cOm5oa1N0IKMJxohTC7Y1qeYPqJGJPdxllWNGB/g71
	 AjhdefOCoEJb/FlCWOWGAzl1FZCufpgGNR5k834u99FNAN69Ht5sITdiMvjXCniqDW
	 KF/gFX/37kYTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF86841448;
	Thu,  8 May 2025 17:19:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 51B581A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:19:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB5A7412F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ixRfouwReMxB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 May 2025 17:19:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D3B944130A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3B944130A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D3B944130A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 May 2025 17:19:25 +0000 (UTC)
X-CSE-ConnectionGUID: nLj96ADDTm2B9eVDI6y0Xw==
X-CSE-MsgGUID: nw4ZNk5ETimzrGeNGPe6Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="66059416"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="66059416"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 10:19:26 -0700
X-CSE-ConnectionGUID: VUIukneqQiSaID5cz/sZgg==
X-CSE-MsgGUID: swijyoyiSbK0LKyQMuur9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="141260581"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2025 10:19:24 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uD4u2-000BCs-1k
 for intel-wired-lan@lists.osuosl.org; Thu, 08 May 2025 17:19:22 +0000
Date: Fri, 09 May 2025 01:19:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505090111.YFNwUA7u-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746724766; x=1778260766;
 h=date:from:to:subject:message-id;
 bh=IFZ2IqgLTGtylk/n8rdMuYyksWiYJSjtt6ukYega9uM=;
 b=d/CaDsAycnpDVF9bNtTzoVvY6++iQbzjYrE1Bw2oU4xMUXxaa/w8YEjp
 a4QmKK9gkRYPRXiEHILfA0ZuP87HIw2XuBKj6QyWoYmMdOXVN+H7q5wgj
 wKQiN0Dr3pRyfT1MlqxMr4KI++9fhXwT4TZbn2HoRMYmobC5uPQux+Vrr
 9u3f2NLdBC8bgHIv9pKZhA8tRglCRWN2CAm9UHEUPXjMMzkGfLXc3Hk0r
 VQ0Rhk3CxdQWZezEYwU7nqTWwbshsE+n1GbCsOWa+BJTAeFzMlTaTBFEt
 J21gxdxLTGRZbaVlnF3UYKe4mUc/QjFjJ8NYhiqGttpml9jrFI+qAt3E4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d/CaDsAy
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 7e5af365e38059ed585917623c1ba3a6c04a8c10
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
branch HEAD: 7e5af365e38059ed585917623c1ba3a6c04a8c10  idpf: fix a race in txq wakeup

elapsed time: 1449m

configs tested: 145
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-19
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                      axs103_smp_defconfig    gcc-14.2.0
arc                   randconfig-001-20250508    gcc-8.5.0
arc                   randconfig-002-20250508    gcc-8.5.0
arc                        vdk_hs38_defconfig    gcc-14.2.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    clang-21
arm                              allyesconfig    clang-19
arm                     am200epdkit_defconfig    gcc-14.2.0
arm                            dove_defconfig    gcc-14.2.0
arm                      footbridge_defconfig    gcc-14.2.0
arm                         lpc32xx_defconfig    gcc-14.2.0
arm                   randconfig-001-20250508    gcc-8.5.0
arm                   randconfig-002-20250508    gcc-8.5.0
arm                   randconfig-003-20250508    gcc-8.5.0
arm                   randconfig-004-20250508    gcc-8.5.0
arm                       versatile_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                            allyesconfig    gcc-14.2.0
arm64                 randconfig-001-20250508    gcc-8.5.0
arm64                 randconfig-002-20250508    gcc-8.5.0
arm64                 randconfig-003-20250508    gcc-8.5.0
arm64                 randconfig-004-20250508    gcc-8.5.0
csky                             allmodconfig    gcc-14.2.0
csky                              allnoconfig    gcc-14.2.0
csky                             allyesconfig    gcc-14.2.0
csky                  randconfig-001-20250508    gcc-10.5.0
csky                  randconfig-002-20250508    gcc-10.5.0
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-19
hexagon               randconfig-001-20250508    gcc-10.5.0
hexagon               randconfig-002-20250508    gcc-10.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20250508    clang-20
i386        buildonly-randconfig-002-20250508    clang-20
i386        buildonly-randconfig-003-20250508    clang-20
i386        buildonly-randconfig-004-20250508    clang-20
i386        buildonly-randconfig-005-20250508    clang-20
i386        buildonly-randconfig-006-20250508    clang-20
i386                                defconfig    clang-20
i386                  randconfig-011-20250508    clang-20
i386                  randconfig-012-20250508    clang-20
i386                  randconfig-013-20250508    clang-20
i386                  randconfig-014-20250508    clang-20
i386                  randconfig-015-20250508    clang-20
i386                  randconfig-016-20250508    clang-20
i386                  randconfig-017-20250508    clang-20
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                        allyesconfig    gcc-14.2.0
loongarch             randconfig-001-20250508    gcc-10.5.0
loongarch             randconfig-002-20250508    gcc-10.5.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                             allmodconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                             allyesconfig    gcc-14.2.0
mips                     loongson1b_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250508    gcc-10.5.0
nios2                 randconfig-002-20250508    gcc-10.5.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20250508    gcc-10.5.0
parisc                randconfig-002-20250508    gcc-10.5.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      bamboo_defconfig    gcc-14.2.0
powerpc                       ebony_defconfig    gcc-14.2.0
powerpc                     ep8248e_defconfig    gcc-14.2.0
powerpc                 linkstation_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250508    gcc-10.5.0
powerpc               randconfig-002-20250508    gcc-10.5.0
powerpc               randconfig-003-20250508    gcc-10.5.0
powerpc64             randconfig-001-20250508    gcc-10.5.0
powerpc64             randconfig-002-20250508    gcc-10.5.0
powerpc64             randconfig-003-20250508    gcc-10.5.0
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    gcc-14.2.0
riscv                 randconfig-001-20250508    gcc-7.5.0
riscv                 randconfig-002-20250508    gcc-7.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250508    gcc-7.5.0
s390                  randconfig-002-20250508    gcc-7.5.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                          r7785rp_defconfig    gcc-14.2.0
sh                    randconfig-001-20250508    gcc-7.5.0
sh                    randconfig-002-20250508    gcc-7.5.0
sh                   sh7724_generic_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250508    gcc-7.5.0
sparc                 randconfig-002-20250508    gcc-7.5.0
sparc64               randconfig-001-20250508    gcc-7.5.0
sparc64               randconfig-002-20250508    gcc-7.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                             i386_defconfig    gcc-14.2.0
um                    randconfig-001-20250508    gcc-7.5.0
um                    randconfig-002-20250508    gcc-7.5.0
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250508    clang-20
x86_64      buildonly-randconfig-002-20250508    clang-20
x86_64      buildonly-randconfig-003-20250508    clang-20
x86_64      buildonly-randconfig-004-20250508    clang-20
x86_64      buildonly-randconfig-005-20250508    clang-20
x86_64      buildonly-randconfig-006-20250508    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250508    gcc-7.5.0
xtensa                randconfig-002-20250508    gcc-7.5.0
xtensa                    smp_lx200_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
