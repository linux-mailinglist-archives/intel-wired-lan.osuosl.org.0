Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B1AAD656A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 04:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 231E360B52;
	Thu, 12 Jun 2025 02:07:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FFySupkSTEYk; Thu, 12 Jun 2025 02:07:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B3C460B75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749694021;
	bh=fEWodXDDDqJw8TKogKuxVaGvkaM3JEw5zDL1ABZNSVM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=L0p95ufMq87sYFgw7fVbl4NZFWHhxNFJm0cjJ5MfgJlqB3/ReDmRVsBF+o3WSiXZP
	 10kTC4Bu5gS2QfCAwFWBnzZWTc4GO4UlBaJge5yjPDXdONXdKvfyBcxpx58Pz8D2Wi
	 zNXJt8xxoyLTPol2NfNFerpvFxUqxzkn4elZ0u4ugsSZSoGlFSr2mRMktiN33lW+iP
	 wqJttB3wspcVlM2+MnY8JHWiVl6UJSPlDfNsq5hvqBp+VskwIxncsd8d0XUBe5vZqs
	 GJe4srOPSFESuFXopRJZ1mRUYSNSKi5Iqz0UkpwEFCnRQQ1FU+qqRHurKLOQlsqU2o
	 o/qtLkvYYDbqg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B3C460B75;
	Thu, 12 Jun 2025 02:07:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 06FA3183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 02:07:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ECA5941B70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 02:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YIN3tjcH5q15 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 02:06:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ACDA241B6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ACDA241B6B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ACDA241B6B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 02:06:58 +0000 (UTC)
X-CSE-ConnectionGUID: lv1wBhM2SGWH1osIobRbAg==
X-CSE-MsgGUID: QihuAqw7Rwe2u0z1VFl7Xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51942171"
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="51942171"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 19:06:58 -0700
X-CSE-ConnectionGUID: UKqWJ9KYS/WlanFK94ibbQ==
X-CSE-MsgGUID: JoPokkEtSweuBV982UF60g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="147240680"
Received: from lkp-server01.sh.intel.com (HELO e8142ee1dce2) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 11 Jun 2025 19:06:57 -0700
Received: from kbuild by e8142ee1dce2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uPXLC-000B0i-0o
 for intel-wired-lan@lists.osuosl.org; Thu, 12 Jun 2025 02:06:54 +0000
Date: Thu, 12 Jun 2025 10:06:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202506121008.LBVYveb9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749694019; x=1781230019;
 h=date:from:to:subject:message-id;
 bh=K8LACE7eyu9cFLY8uCfKY7Wtt1keDXcGKnwDBpzM128=;
 b=K1FSmcCHwovN81MjVhKs2vGH37hMyTRMBO7YNceTP2Pof1g+LtDJNc+B
 97LJcIt/2y9q+REBIiX2hGt4V4fZJ8h5wEt3wORqNIMwhNM3F5X1vw7i/
 IGW3Bzwhh/tLfIkGizar+8ZjF2ETJ/Pj91vUhamWih2pBZ2BxV1evVifE
 G2bg1+nyqYRKKZTViIazDZSr51mGzU+nSPfqhl1im2G3UxA6PilP5Aj/w
 krjXGQDg66LUl18EE6Qaz+CaE/Ly89/1XL3SPzWlqLY6uqdMtTp/TGMOS
 94N85acDUJQF9YL+3rpvu4LKTMzq/MZAjoG/07/XxASGqedPV+HVRRAbU
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K1FSmcCH
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 b4a8085ceefb7bbb12c2b71c55e71fc946c6929f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: b4a8085ceefb7bbb12c2b71c55e71fc946c6929f  e1000: Move cancel_work_sync to avoid deadlock

elapsed time: 1469m

configs tested: 226
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    clang-19
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                                 defconfig    gcc-15.1.0
arc                            hsdk_defconfig    clang-21
arc                   randconfig-001-20250611    gcc-12.4.0
arc                   randconfig-002-20250611    gcc-12.4.0
arc                   randconfig-002-20250611    gcc-8.5.0
arm                              allmodconfig    clang-19
arm                               allnoconfig    gcc-15.1.0
arm                              allyesconfig    clang-19
arm                                 defconfig    gcc-15.1.0
arm                          exynos_defconfig    clang-21
arm                   randconfig-001-20250611    gcc-11.5.0
arm                   randconfig-001-20250611    gcc-12.4.0
arm                   randconfig-002-20250611    clang-21
arm                   randconfig-002-20250611    gcc-12.4.0
arm                   randconfig-003-20250611    gcc-12.4.0
arm                   randconfig-003-20250611    gcc-13.3.0
arm                   randconfig-004-20250611    gcc-12.4.0
arm                   randconfig-004-20250611    gcc-13.3.0
arm                          sp7021_defconfig    clang-21
arm                         wpcm450_defconfig    clang-21
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    gcc-15.1.0
arm64                 randconfig-001-20250611    gcc-12.4.0
arm64                 randconfig-001-20250611    gcc-8.5.0
arm64                 randconfig-002-20250611    gcc-12.4.0
arm64                 randconfig-002-20250611    gcc-9.5.0
arm64                 randconfig-003-20250611    gcc-12.4.0
arm64                 randconfig-003-20250611    gcc-13.3.0
arm64                 randconfig-004-20250611    gcc-12.4.0
arm64                 randconfig-004-20250611    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250611    gcc-15.1.0
csky                  randconfig-001-20250611    gcc-8.5.0
csky                  randconfig-002-20250611    gcc-15.1.0
csky                  randconfig-002-20250611    gcc-8.5.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    gcc-15.1.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-15.1.0
hexagon               randconfig-001-20250611    clang-21
hexagon               randconfig-001-20250611    gcc-8.5.0
hexagon               randconfig-002-20250611    clang-21
hexagon               randconfig-002-20250611    gcc-8.5.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250611    clang-20
i386        buildonly-randconfig-001-20250611    gcc-12
i386        buildonly-randconfig-002-20250611    clang-20
i386        buildonly-randconfig-002-20250611    gcc-12
i386        buildonly-randconfig-003-20250611    clang-20
i386        buildonly-randconfig-004-20250611    clang-20
i386        buildonly-randconfig-004-20250611    gcc-12
i386        buildonly-randconfig-005-20250611    clang-20
i386        buildonly-randconfig-005-20250611    gcc-11
i386        buildonly-randconfig-006-20250611    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250611    clang-20
i386                  randconfig-002-20250611    clang-20
i386                  randconfig-003-20250611    clang-20
i386                  randconfig-004-20250611    clang-20
i386                  randconfig-005-20250611    clang-20
i386                  randconfig-006-20250611    clang-20
i386                  randconfig-007-20250611    clang-20
i386                  randconfig-011-20250611    gcc-12
i386                  randconfig-012-20250611    gcc-12
i386                  randconfig-013-20250611    gcc-12
i386                  randconfig-014-20250611    gcc-12
i386                  randconfig-015-20250611    gcc-12
i386                  randconfig-016-20250611    gcc-12
i386                  randconfig-017-20250611    gcc-12
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch                           defconfig    gcc-15.1.0
loongarch             randconfig-001-20250611    gcc-15.1.0
loongarch             randconfig-001-20250611    gcc-8.5.0
loongarch             randconfig-002-20250611    gcc-15.1.0
loongarch             randconfig-002-20250611    gcc-8.5.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         apollo_defconfig    clang-21
m68k                                defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                        qi_lb60_defconfig    clang-21
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20250611    gcc-8.5.0
nios2                 randconfig-002-20250611    gcc-8.5.0
nios2                 randconfig-002-20250611    gcc-9.3.0
openrisc                          allnoconfig    clang-21
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-21
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250611    gcc-11.5.0
parisc                randconfig-001-20250611    gcc-8.5.0
parisc                randconfig-002-20250611    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-21
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-15.1.0
powerpc                       ebony_defconfig    clang-21
powerpc                      ep88xc_defconfig    clang-21
powerpc                       holly_defconfig    clang-21
powerpc                      katmai_defconfig    clang-21
powerpc               randconfig-001-20250611    gcc-8.5.0
powerpc               randconfig-002-20250611    gcc-13.3.0
powerpc               randconfig-002-20250611    gcc-8.5.0
powerpc               randconfig-003-20250611    clang-21
powerpc               randconfig-003-20250611    gcc-8.5.0
powerpc64             randconfig-001-20250611    clang-21
powerpc64             randconfig-001-20250611    gcc-8.5.0
powerpc64             randconfig-002-20250611    clang-21
powerpc64             randconfig-002-20250611    gcc-8.5.0
riscv                            alldefconfig    clang-21
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-21
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-12
riscv                 randconfig-001-20250611    clang-21
riscv                 randconfig-001-20250611    gcc-15.1.0
riscv                 randconfig-002-20250611    clang-19
riscv                 randconfig-002-20250611    gcc-15.1.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250611    gcc-15.1.0
s390                  randconfig-002-20250611    gcc-11.5.0
s390                  randconfig-002-20250611    gcc-15.1.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-12
sh                          polaris_defconfig    clang-21
sh                    randconfig-001-20250611    gcc-15.1.0
sh                    randconfig-002-20250611    gcc-15.1.0
sh                           sh2007_defconfig    clang-21
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250611    gcc-11.5.0
sparc                 randconfig-001-20250611    gcc-15.1.0
sparc                 randconfig-002-20250611    gcc-15.1.0
sparc                 randconfig-002-20250611    gcc-8.5.0
sparc                       sparc32_defconfig    clang-21
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250611    gcc-15.1.0
sparc64               randconfig-001-20250611    gcc-8.5.0
sparc64               randconfig-002-20250611    gcc-13.3.0
sparc64               randconfig-002-20250611    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250611    clang-21
um                    randconfig-001-20250611    gcc-15.1.0
um                    randconfig-002-20250611    clang-19
um                    randconfig-002-20250611    gcc-15.1.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250611    clang-20
x86_64      buildonly-randconfig-001-20250611    gcc-12
x86_64      buildonly-randconfig-002-20250611    clang-20
x86_64      buildonly-randconfig-003-20250611    clang-20
x86_64      buildonly-randconfig-004-20250611    clang-20
x86_64      buildonly-randconfig-004-20250611    gcc-12
x86_64      buildonly-randconfig-005-20250611    clang-20
x86_64      buildonly-randconfig-005-20250611    gcc-12
x86_64      buildonly-randconfig-006-20250611    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250611    clang-20
x86_64                randconfig-002-20250611    clang-20
x86_64                randconfig-003-20250611    clang-20
x86_64                randconfig-004-20250611    clang-20
x86_64                randconfig-005-20250611    clang-20
x86_64                randconfig-006-20250611    clang-20
x86_64                randconfig-007-20250611    clang-20
x86_64                randconfig-008-20250611    clang-20
x86_64                randconfig-071-20250611    gcc-12
x86_64                randconfig-072-20250611    gcc-12
x86_64                randconfig-073-20250611    gcc-12
x86_64                randconfig-074-20250611    gcc-12
x86_64                randconfig-075-20250611    gcc-12
x86_64                randconfig-076-20250611    gcc-12
x86_64                randconfig-077-20250611    gcc-12
x86_64                randconfig-078-20250611    gcc-12
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  nommu_kc705_defconfig    clang-21
xtensa                randconfig-001-20250611    gcc-13.3.0
xtensa                randconfig-001-20250611    gcc-15.1.0
xtensa                randconfig-002-20250611    gcc-10.5.0
xtensa                randconfig-002-20250611    gcc-15.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
