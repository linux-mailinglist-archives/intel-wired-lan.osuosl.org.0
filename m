Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E5E9414D9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2024 16:52:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2BBC60A3F;
	Tue, 30 Jul 2024 14:52:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qf-DCQ5twDGS; Tue, 30 Jul 2024 14:52:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B25C60A3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722351168;
	bh=yr+HdMIuxLTcwQtJGPJA76BGAtzlnssZFUYuKWCfBzc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1sI8r9LvPqMdIMFAE/QxBvjkMgRearOlGWoaVKRmYH7LzACUaQlN+uuyRPdjP2K9C
	 yUvXnXyGaMlUZBu8ufRcQUdWV8672AZVCZEgBybXG9Cw5UidjdTPRl3340hTDB8Y4N
	 h5jzIGrWjvK6Z/dxOo5E9jF3zznwhiwM5v43eCxvBqWywai3is2BO9aRW0GslNBPgF
	 ps4BlYKVPcTDnhB8yVXHVTdfgGUKbcw1/lIEYWaNawq2uHpbFNyJSv7aD/fmpXiSAY
	 ixnTnY6SwbzH2oJdPi9ZJhedflP81MwSLnW6O0Qk9uqhAMlTVrrAl0MemAKGZXp5TK
	 h7PBVBvDOWrkw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B25C60A3B;
	Tue, 30 Jul 2024 14:52:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6531D1BF95F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:52:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4FF3040260
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:52:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Ka45nSREQDb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2024 14:52:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9AF894025A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AF894025A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9AF894025A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2024 14:52:44 +0000 (UTC)
X-CSE-ConnectionGUID: WS86h17SR8mjIWuyIQlZtA==
X-CSE-MsgGUID: I8ejzzEuQmalt9FOSRDjBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="31565957"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="31565957"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 07:52:43 -0700
X-CSE-ConnectionGUID: L/wE0DbYSeSBKPK+7FZr5A==
X-CSE-MsgGUID: R12ySdnKRMm+ztsFBBh/zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54042024"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jul 2024 07:52:42 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sYoDQ-000sy4-12
 for intel-wired-lan@lists.osuosl.org; Tue, 30 Jul 2024 14:52:40 +0000
Date: Tue, 30 Jul 2024 22:52:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407302212.MrwyCJgc-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722351164; x=1753887164;
 h=date:from:to:subject:message-id;
 bh=47xIH068gPj+9Uic+1BbwTJYSc6872ZFC622Bq5OGpU=;
 b=WC8rvk+XAJaHkDcxJDM8q8LOhrRoztUpijkYB8r6Uwp+pfFkyuZaUuEN
 dR13EGZ35XbVszfKRhvjBW8Lh0qMRgsrnIohppiY8sUbO3CZyx4w92/iT
 zbuafILga0WLYEZoL4rNjniofbqIFjRzMKjAneYrM2miUzTvbaYz+nylN
 m/3auOHHgHRplX8kLOQYK1NrupENZeFeFfN4LujlPgYZs4zr0SU1nvfdv
 e/qpHQn4vEij5Lhsqbr8GpLndvEmaMW6ap3T7zsugJYCgbbYChUyXSiIa
 yMqaGrd3FvKuPXgx4N4ufnXNzqIC7OOYY6pYMyCB1F0EV6hII5RYSjbTX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WC8rvk+X
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 aa0c730d242c9ae63008a4696507984582bcecee
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
branch HEAD: aa0c730d242c9ae63008a4696507984582bcecee  ice: allow to activate and deactivate subfunction

elapsed time: 933m

configs tested: 255
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240730   gcc-13.2.0
arc                   randconfig-002-20240730   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                         bcm2835_defconfig   clang-20
arm                                 defconfig   clang-14
arm                                 defconfig   gcc-13.2.0
arm                        keystone_defconfig   gcc-14.1.0
arm                   randconfig-001-20240730   gcc-13.2.0
arm                   randconfig-001-20240730   gcc-14.1.0
arm                   randconfig-002-20240730   gcc-13.2.0
arm                   randconfig-002-20240730   gcc-14.1.0
arm                   randconfig-003-20240730   gcc-13.2.0
arm                   randconfig-003-20240730   gcc-14.1.0
arm                   randconfig-004-20240730   gcc-13.2.0
arm                   randconfig-004-20240730   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                            allyesconfig   clang-20
arm64                               defconfig   gcc-13.2.0
arm64                               defconfig   gcc-14.1.0
arm64                 randconfig-001-20240730   gcc-13.2.0
arm64                 randconfig-001-20240730   gcc-14.1.0
arm64                 randconfig-002-20240730   clang-20
arm64                 randconfig-002-20240730   gcc-13.2.0
arm64                 randconfig-003-20240730   clang-20
arm64                 randconfig-003-20240730   gcc-13.2.0
arm64                 randconfig-004-20240730   gcc-13.2.0
arm64                 randconfig-004-20240730   gcc-14.1.0
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                                defconfig   gcc-14.1.0
csky                  randconfig-001-20240730   gcc-13.2.0
csky                  randconfig-001-20240730   gcc-14.1.0
csky                  randconfig-002-20240730   gcc-13.2.0
csky                  randconfig-002-20240730   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   clang-20
hexagon               randconfig-001-20240730   clang-20
hexagon               randconfig-002-20240730   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240730   gcc-13
i386         buildonly-randconfig-002-20240730   gcc-13
i386         buildonly-randconfig-003-20240730   clang-18
i386         buildonly-randconfig-003-20240730   gcc-13
i386         buildonly-randconfig-004-20240730   clang-18
i386         buildonly-randconfig-004-20240730   gcc-13
i386         buildonly-randconfig-005-20240730   gcc-13
i386         buildonly-randconfig-006-20240730   clang-18
i386         buildonly-randconfig-006-20240730   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240730   gcc-13
i386                  randconfig-001-20240730   gcc-8
i386                  randconfig-002-20240730   gcc-13
i386                  randconfig-003-20240730   gcc-13
i386                  randconfig-004-20240730   gcc-13
i386                  randconfig-005-20240730   gcc-10
i386                  randconfig-005-20240730   gcc-13
i386                  randconfig-006-20240730   gcc-10
i386                  randconfig-006-20240730   gcc-13
i386                  randconfig-011-20240730   gcc-11
i386                  randconfig-011-20240730   gcc-13
i386                  randconfig-012-20240730   clang-18
i386                  randconfig-012-20240730   gcc-13
i386                  randconfig-013-20240730   clang-18
i386                  randconfig-013-20240730   gcc-13
i386                  randconfig-014-20240730   gcc-13
i386                  randconfig-014-20240730   gcc-9
i386                  randconfig-015-20240730   gcc-13
i386                  randconfig-015-20240730   gcc-9
i386                  randconfig-016-20240730   clang-18
i386                  randconfig-016-20240730   gcc-13
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                           defconfig   gcc-14.1.0
loongarch             randconfig-001-20240730   gcc-13.2.0
loongarch             randconfig-001-20240730   gcc-14.1.0
loongarch             randconfig-002-20240730   gcc-13.2.0
loongarch             randconfig-002-20240730   gcc-14.1.0
m68k                             alldefconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                                defconfig   gcc-14.1.0
m68k                       m5275evb_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
microblaze                          defconfig   gcc-14.1.0
mips                             allmodconfig   clang-20
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                             allyesconfig   clang-20
mips                malta_qemu_32r6_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                               defconfig   gcc-14.1.0
nios2                 randconfig-001-20240730   gcc-13.2.0
nios2                 randconfig-001-20240730   gcc-14.1.0
nios2                 randconfig-002-20240730   gcc-13.2.0
nios2                 randconfig-002-20240730   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                 simple_smp_defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                generic-32bit_defconfig   gcc-14.1.0
parisc                randconfig-001-20240730   gcc-13.2.0
parisc                randconfig-001-20240730   gcc-14.1.0
parisc                randconfig-002-20240730   gcc-13.2.0
parisc                randconfig-002-20240730   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                 canyonlands_defconfig   clang-20
powerpc                       ebony_defconfig   clang-20
powerpc                     ep8248e_defconfig   gcc-14.1.0
powerpc                      pmac32_defconfig   clang-20
powerpc               randconfig-002-20240730   clang-16
powerpc               randconfig-002-20240730   gcc-13.2.0
powerpc               randconfig-003-20240730   clang-20
powerpc               randconfig-003-20240730   gcc-13.2.0
powerpc                     taishan_defconfig   clang-20
powerpc                     tqm8555_defconfig   clang-20
powerpc                      tqm8xx_defconfig   clang-20
powerpc64             randconfig-001-20240730   gcc-13.2.0
powerpc64             randconfig-001-20240730   gcc-14.1.0
powerpc64             randconfig-002-20240730   clang-20
powerpc64             randconfig-002-20240730   gcc-13.2.0
powerpc64             randconfig-003-20240730   gcc-13.2.0
powerpc64             randconfig-003-20240730   gcc-14.1.0
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   clang-20
riscv                 randconfig-001-20240730   clang-14
riscv                 randconfig-001-20240730   gcc-13.2.0
riscv                 randconfig-002-20240730   gcc-13.2.0
riscv                 randconfig-002-20240730   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
s390                  randconfig-001-20240730   gcc-13.2.0
s390                  randconfig-001-20240730   gcc-14.1.0
s390                  randconfig-002-20240730   clang-20
s390                  randconfig-002-20240730   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240730   gcc-13.2.0
sh                    randconfig-001-20240730   gcc-14.1.0
sh                    randconfig-002-20240730   gcc-13.2.0
sh                    randconfig-002-20240730   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240730   gcc-13.2.0
sparc64               randconfig-001-20240730   gcc-14.1.0
sparc64               randconfig-002-20240730   gcc-13.2.0
sparc64               randconfig-002-20240730   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240730   gcc-13
um                    randconfig-001-20240730   gcc-13.2.0
um                    randconfig-002-20240730   clang-20
um                    randconfig-002-20240730   gcc-13.2.0
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240730   clang-18
x86_64       buildonly-randconfig-002-20240730   clang-18
x86_64       buildonly-randconfig-002-20240730   gcc-12
x86_64       buildonly-randconfig-003-20240730   clang-18
x86_64       buildonly-randconfig-004-20240730   clang-18
x86_64       buildonly-randconfig-004-20240730   gcc-13
x86_64       buildonly-randconfig-005-20240730   clang-18
x86_64       buildonly-randconfig-005-20240730   gcc-12
x86_64       buildonly-randconfig-006-20240730   clang-18
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                                  kexec   clang-18
x86_64                randconfig-001-20240730   clang-18
x86_64                randconfig-002-20240730   clang-18
x86_64                randconfig-002-20240730   gcc-13
x86_64                randconfig-003-20240730   clang-18
x86_64                randconfig-004-20240730   clang-18
x86_64                randconfig-005-20240730   clang-18
x86_64                randconfig-006-20240730   clang-18
x86_64                randconfig-011-20240730   clang-18
x86_64                randconfig-011-20240730   gcc-13
x86_64                randconfig-012-20240730   clang-18
x86_64                randconfig-013-20240730   clang-18
x86_64                randconfig-014-20240730   clang-18
x86_64                randconfig-015-20240730   clang-18
x86_64                randconfig-015-20240730   gcc-8
x86_64                randconfig-016-20240730   clang-18
x86_64                randconfig-016-20240730   gcc-13
x86_64                randconfig-071-20240730   clang-18
x86_64                randconfig-071-20240730   gcc-8
x86_64                randconfig-072-20240730   clang-18
x86_64                randconfig-073-20240730   clang-18
x86_64                randconfig-073-20240730   gcc-12
x86_64                randconfig-074-20240730   clang-18
x86_64                randconfig-075-20240730   clang-18
x86_64                randconfig-076-20240730   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240730   gcc-13.2.0
xtensa                randconfig-001-20240730   gcc-14.1.0
xtensa                randconfig-002-20240730   gcc-13.2.0
xtensa                randconfig-002-20240730   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
