Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0B2B0A6D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 17:11:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7A3541194;
	Fri, 18 Jul 2025 15:11:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kq5pqrfdFfWc; Fri, 18 Jul 2025 15:11:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0C2240D50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752851487;
	bh=tZMh/R60M8z51N5eSY59QgwrkaO0AKF+ZVVlEoIkGqQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aVf/qrtDeIRC4pEA5kVUhBzHKosex6nW3LsTbl+X139D+F2EC8wyG95oYui2CI5iD
	 bxcvC2JaOJ2YwQUVf5GDiKPkwSDX/WV28gMfqWYrOS5A8vuMRrr6y7egGZ5+PEZAid
	 Ms9BPuJd09FTsFfXdQTWtLzeyCkzuo0VNPSRbsXpoWUlGOFPZ6hhozOLlCvZxka+u5
	 oAwo6aayS6kpXvqCw5DLBmPIu/JXEx+qi+NFUPdwlabP2pidSyLxHf5PBcLrkdOuN2
	 iwN9ZRCYWjYhH324p7eXc08xlOMZlWOY1w8VYn+HWTIGrgOwxLQp4HQO1WqKNzbHES
	 cJEECW2rwKMLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0C2240D50;
	Fri, 18 Jul 2025 15:11:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7CEA0DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 15:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D8BA842E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 15:11:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qjo18OiME0fl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 15:11:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 70F37842E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70F37842E4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 70F37842E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 15:11:25 +0000 (UTC)
X-CSE-ConnectionGUID: 7NuwsvglQmWYwhtN7u4djQ==
X-CSE-MsgGUID: M9GqcINqQzWfToSagQ+7wA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="58961418"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="58961418"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 08:11:23 -0700
X-CSE-ConnectionGUID: skUOdTT7S2K3x2HdvI6Z1g==
X-CSE-MsgGUID: xR+TK770TwSuY4qQ7WmoGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="158565484"
Received: from lkp-server01.sh.intel.com (HELO 9ee84586c615) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 18 Jul 2025 08:11:22 -0700
Received: from kbuild by 9ee84586c615 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ucmk3-000EmF-2G
 for intel-wired-lan@lists.osuosl.org; Fri, 18 Jul 2025 15:11:19 +0000
Date: Fri, 18 Jul 2025 23:10:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202507182329.qz1emSLz-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752851486; x=1784387486;
 h=date:from:to:subject:message-id;
 bh=JJicFku09+PoL3KFjMcKyPF5tMTKi1YTWhAXWcyhV04=;
 b=JjQ7EhK7UYVrfCk3QRNBBxGxYtzBC/sNZSPVXLdc/z5BhMGYOf5nMq5G
 5aQJCWqheCfc40/L/cfXhvdUOPC41p7z1/vl6rS6vRlNBBDn7FdyGtUvG
 JGA5QUFLdqWqwRez7njF7GsBXom6RwhwWCv4mZNp7HJkVFjFhF449DKM3
 HJl5QnXRmB4ta5H0ts8AcIlX9QyZ9QC+27wKYb6POmnpZh3IjTe9NhhXe
 D54OYDwyg3cPdgJWtpxP2l4qqJa6q15burLpbJvG/dngTP65fmFAvZNnu
 AJ9vl0djhaBgdWY3QKz/mXytBIGHksgGb2l6v0v9TsL0wU9SFikMMmHyh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JjQ7EhK7
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 a2bbaff6816a1531fd61b07739c3f2a500cd3693
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: a2bbaff6816a1531fd61b07739c3f2a500cd3693  Merge tag 'for-net-2025-07-17' of git://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth

elapsed time: 1409m

configs tested: 163
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                        nsim_700_defconfig    gcc-15.1.0
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20250717    gcc-8.5.0
arc                   randconfig-001-20250718    gcc-10.5.0
arc                   randconfig-002-20250717    gcc-15.1.0
arc                   randconfig-002-20250718    gcc-8.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                         bcm2835_defconfig    clang-21
arm                         orion5x_defconfig    clang-21
arm                            qcom_defconfig    clang-21
arm                   randconfig-001-20250717    clang-21
arm                   randconfig-001-20250718    gcc-8.5.0
arm                   randconfig-002-20250717    gcc-8.5.0
arm                   randconfig-002-20250718    gcc-8.5.0
arm                   randconfig-003-20250717    gcc-8.5.0
arm                   randconfig-003-20250718    gcc-8.5.0
arm                   randconfig-004-20250717    clang-21
arm                   randconfig-004-20250718    gcc-10.5.0
arm                          sp7021_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250717    clang-18
arm64                 randconfig-001-20250718    gcc-13.4.0
arm64                 randconfig-002-20250717    clang-18
arm64                 randconfig-002-20250718    gcc-8.5.0
arm64                 randconfig-003-20250717    gcc-10.5.0
arm64                 randconfig-003-20250718    clang-21
arm64                 randconfig-004-20250717    clang-21
arm64                 randconfig-004-20250718    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250718    gcc-15.1.0
csky                  randconfig-002-20250718    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250718    clang-21
hexagon               randconfig-002-20250718    clang-21
i386                             alldefconfig    gcc-12
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250717    gcc-12
i386        buildonly-randconfig-001-20250718    gcc-12
i386        buildonly-randconfig-002-20250717    gcc-12
i386        buildonly-randconfig-002-20250718    clang-20
i386        buildonly-randconfig-003-20250717    clang-20
i386        buildonly-randconfig-003-20250718    gcc-12
i386        buildonly-randconfig-004-20250717    clang-20
i386        buildonly-randconfig-004-20250718    gcc-11
i386        buildonly-randconfig-005-20250717    clang-20
i386        buildonly-randconfig-005-20250718    gcc-12
i386        buildonly-randconfig-006-20250717    gcc-12
i386        buildonly-randconfig-006-20250718    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-21
loongarch             randconfig-001-20250718    gcc-15.1.0
loongarch             randconfig-002-20250718    gcc-15.1.0
m68k                             alldefconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                         amcore_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          ath25_defconfig    clang-21
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250718    gcc-8.5.0
nios2                 randconfig-002-20250718    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                generic-32bit_defconfig    gcc-15.1.0
parisc                randconfig-001-20250718    gcc-14.3.0
parisc                randconfig-002-20250718    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                    gamecube_defconfig    clang-21
powerpc                      mgcoge_defconfig    clang-21
powerpc                  mpc866_ads_defconfig    clang-21
powerpc                      pcm030_defconfig    clang-21
powerpc                      ppc44x_defconfig    clang-21
powerpc               randconfig-001-20250718    gcc-9.3.0
powerpc               randconfig-002-20250718    gcc-11.5.0
powerpc               randconfig-003-20250718    clang-17
powerpc64             randconfig-001-20250718    clang-18
powerpc64             randconfig-002-20250718    clang-21
powerpc64             randconfig-003-20250718    gcc-8.5.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                 randconfig-001-20250717    gcc-14.3.0
riscv                 randconfig-001-20250718    clang-21
riscv                 randconfig-002-20250717    clang-21
riscv                 randconfig-002-20250718    clang-16
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250717    gcc-8.5.0
s390                  randconfig-001-20250718    clang-21
s390                  randconfig-002-20250717    gcc-9.3.0
s390                  randconfig-002-20250718    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                         apsh4a3a_defconfig    gcc-15.1.0
sh                        edosk7760_defconfig    gcc-15.1.0
sh                    randconfig-001-20250717    gcc-14.3.0
sh                    randconfig-001-20250718    gcc-15.1.0
sh                    randconfig-002-20250717    gcc-9.3.0
sh                    randconfig-002-20250718    gcc-15.1.0
sh                           se7722_defconfig    gcc-15.1.0
sh                           se7780_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250717    gcc-14.3.0
sparc                 randconfig-001-20250718    gcc-10.3.0
sparc                 randconfig-002-20250717    gcc-8.5.0
sparc                 randconfig-002-20250718    gcc-11.5.0
sparc                       sparc32_defconfig    gcc-15.1.0
sparc64               randconfig-001-20250717    gcc-12.4.0
sparc64               randconfig-001-20250718    gcc-10.5.0
sparc64               randconfig-002-20250717    clang-21
sparc64               randconfig-002-20250718    clang-20
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                    randconfig-001-20250717    gcc-12
um                    randconfig-001-20250718    gcc-12
um                    randconfig-002-20250717    gcc-12
um                    randconfig-002-20250718    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250718    clang-20
x86_64      buildonly-randconfig-002-20250718    gcc-12
x86_64      buildonly-randconfig-003-20250718    gcc-12
x86_64      buildonly-randconfig-004-20250718    clang-20
x86_64      buildonly-randconfig-005-20250718    clang-20
x86_64      buildonly-randconfig-006-20250718    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250717    gcc-13.4.0
xtensa                randconfig-001-20250718    gcc-8.5.0
xtensa                randconfig-002-20250717    gcc-9.3.0
xtensa                randconfig-002-20250718    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
