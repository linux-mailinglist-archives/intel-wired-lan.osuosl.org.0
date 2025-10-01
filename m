Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 119D6BB0D78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Oct 2025 16:54:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBD4541296;
	Wed,  1 Oct 2025 14:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jKDCxEyGLMQk; Wed,  1 Oct 2025 14:54:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B322741294
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759330458;
	bh=PVavaFfJWWssYy8jvJEa1RhJxNAsDjIAIqJQw99hFa4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=2243N+qG0ZW5uxBa24OvBCyd0tIwCAPCWm03O0FzW2oLQTZjYyqfhjs9z8n/n43N1
	 dqzBmIi6FQid3VOPmKmLvQeiDz9NgfhrsY1a5/urqq+Kr44QreuOMA726oJlZ67YRb
	 D7iYvd1zrcvzlw73/clR85Bz8HPZkSZPvnMSKGbyutQ6wTv7Bf400VtjUBTbeLkR/J
	 VgF9nhNK7u0xIhk4DDdR6qp1TO2+WxaaSFpzLyF7CRoeG+DqQEuse2yEiXs6/hdLYO
	 WACzbqQlW5me31iEkAE2v2Ut+i93n/OIRJ8OIA1q/BxbPOpKKuWsI8dVO0+d/uqDwi
	 i+gZrYyNLWdXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B322741294;
	Wed,  1 Oct 2025 14:54:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BEF32A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 14:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6D4861383
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 14:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OqUQsT6HstZd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Oct 2025 14:54:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7E8C560B68
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E8C560B68
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E8C560B68
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Oct 2025 14:54:14 +0000 (UTC)
X-CSE-ConnectionGUID: L1JHHNPpQeG0onvPp//bhQ==
X-CSE-MsgGUID: b/ENFx6ySpOnwLcwYwF/rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="79255632"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="79255632"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 07:54:13 -0700
X-CSE-ConnectionGUID: XhOiJGRZRrCeoQgS02PX6w==
X-CSE-MsgGUID: hwNTkDW+QKGRQW4YNu4HwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="177932952"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 01 Oct 2025 07:54:13 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v3yDZ-00036p-2v
 for intel-wired-lan@lists.osuosl.org; Wed, 01 Oct 2025 14:54:09 +0000
Date: Wed, 01 Oct 2025 22:53:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510012249.heVbOMc8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759330455; x=1790866455;
 h=date:from:to:subject:message-id;
 bh=Nxb3SyPpF1W8CDGxe7MxvVp9K9gFlf8leGxNGR6PSRM=;
 b=T2H3BMGjK5hS/TiOxpZcSo5eT/QdYPyim5x8YReIl5DPKvmwNdg7Euy7
 cBou/RDZ6xfvwJMkw6vDQ00VIdzmm2ZhxpaKqqZ2MCaFPuV3G5EYha45U
 5tSJguu/UbOx4NCmYaKUOGX/0ynY+Fa5YIXWFZ/9+mZ3YqZK+CSGgnHyX
 TmqWGcr1K8iGTzyT4X2yFKsjFyuFpJG/wlx8rzur4agHWINMKgGtHbUAT
 +rLp2AF4oLrc98R6Shrv1vk7NWl8Q0D89k3AhqfH+FpNTANofm/pnMDPM
 OUDOLHwj+Lv1wSY41NGrjccJ4JgtJpaXyPITRkavlnAoIZD26/LPPp5A2
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T2H3BMGj
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 2aff4420efc2910e905ee5b000e04e87422aebc4
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
branch HEAD: 2aff4420efc2910e905ee5b000e04e87422aebc4  net: enetc: initialize SW PIR and CIR based HW PIR and CIR values

elapsed time: 1751m

configs tested: 239
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    clang-22
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    clang-19
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    clang-22
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-15.1.0
arc                                 defconfig    clang-19
arc                   randconfig-001-20251001    gcc-14.3.0
arc                   randconfig-001-20251001    gcc-8.5.0
arc                   randconfig-002-20251001    gcc-14.3.0
arc                   randconfig-002-20251001    gcc-8.5.0
arm                              alldefconfig    gcc-15.1.0
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-15.1.0
arm                         assabet_defconfig    clang-22
arm                         bcm2835_defconfig    gcc-15.1.0
arm                                 defconfig    clang-19
arm                        keystone_defconfig    clang-22
arm                   randconfig-001-20251001    gcc-14.3.0
arm                   randconfig-002-20251001    clang-22
arm                   randconfig-002-20251001    gcc-14.3.0
arm                   randconfig-003-20251001    gcc-12.5.0
arm                   randconfig-003-20251001    gcc-14.3.0
arm                   randconfig-004-20251001    gcc-14.3.0
arm                   randconfig-004-20251001    gcc-8.5.0
arm                         socfpga_defconfig    gcc-15.1.0
arm                         wpcm450_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                               defconfig    clang-19
arm64                 randconfig-001-20251001    clang-22
arm64                 randconfig-001-20251001    gcc-14.3.0
arm64                 randconfig-002-20251001    gcc-14.3.0
arm64                 randconfig-002-20251001    gcc-9.5.0
arm64                 randconfig-003-20251001    gcc-14.3.0
arm64                 randconfig-003-20251001    gcc-8.5.0
arm64                 randconfig-004-20251001    gcc-14.3.0
arm64                 randconfig-004-20251001    gcc-8.5.0
csky                              allnoconfig    clang-22
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    clang-19
csky                  randconfig-001-20251001    clang-22
csky                  randconfig-001-20251001    gcc-13.4.0
csky                  randconfig-002-20251001    clang-22
csky                  randconfig-002-20251001    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-22
hexagon                             defconfig    clang-19
hexagon               randconfig-001-20251001    clang-22
hexagon               randconfig-002-20251001    clang-22
i386                             allmodconfig    clang-20
i386                              allnoconfig    clang-20
i386                             allyesconfig    clang-20
i386        buildonly-randconfig-001-20251001    clang-20
i386        buildonly-randconfig-002-20251001    clang-20
i386        buildonly-randconfig-003-20251001    clang-20
i386        buildonly-randconfig-003-20251001    gcc-14
i386        buildonly-randconfig-004-20251001    clang-20
i386        buildonly-randconfig-005-20251001    clang-20
i386        buildonly-randconfig-006-20251001    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20251001    gcc-14
i386                  randconfig-002-20251001    gcc-14
i386                  randconfig-003-20251001    gcc-14
i386                  randconfig-004-20251001    gcc-14
i386                  randconfig-005-20251001    gcc-14
i386                  randconfig-006-20251001    gcc-14
i386                  randconfig-007-20251001    gcc-14
i386                  randconfig-011-20251001    clang-20
i386                  randconfig-012-20251001    clang-20
i386                  randconfig-013-20251001    clang-20
i386                  randconfig-014-20251001    clang-20
i386                  randconfig-015-20251001    clang-20
i386                  randconfig-016-20251001    clang-20
i386                  randconfig-017-20251001    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251001    clang-22
loongarch             randconfig-001-20251001    gcc-13.4.0
loongarch             randconfig-002-20251001    clang-22
loongarch             randconfig-002-20251001    gcc-15.1.0
m68k                             allmodconfig    clang-19
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    clang-19
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    clang-19
m68k                          hp300_defconfig    gcc-15.1.0
m68k                           sun3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    clang-19
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    clang-19
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          eyeq6_defconfig    clang-22
mips                        vocore2_defconfig    clang-22
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                               defconfig    gcc-15.1.0
nios2                 randconfig-001-20251001    clang-22
nios2                 randconfig-001-20251001    gcc-11.5.0
nios2                 randconfig-002-20251001    clang-22
nios2                 randconfig-002-20251001    gcc-11.5.0
openrisc                          allnoconfig    clang-22
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-14
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    clang-22
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251001    clang-22
parisc                randconfig-001-20251001    gcc-8.5.0
parisc                randconfig-002-20251001    clang-22
parisc                randconfig-002-20251001    gcc-8.5.0
parisc64                         alldefconfig    clang-22
parisc64                            defconfig    gcc-15.1.0
powerpc                     akebono_defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    clang-22
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                          allyesconfig    gcc-15.1.0
powerpc                      mgcoge_defconfig    clang-22
powerpc               randconfig-001-20251001    clang-22
powerpc               randconfig-001-20251001    gcc-8.5.0
powerpc               randconfig-002-20251001    clang-22
powerpc               randconfig-003-20251001    clang-22
powerpc                      tqm8xx_defconfig    clang-22
powerpc64             randconfig-001-20251001    clang-22
powerpc64             randconfig-001-20251001    gcc-8.5.0
powerpc64             randconfig-002-20251001    clang-22
powerpc64             randconfig-003-20251001    clang-22
powerpc64             randconfig-003-20251001    gcc-13.4.0
riscv                            allmodconfig    clang-22
riscv                            allmodconfig    gcc-15.1.0
riscv                             allnoconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-15.1.0
riscv                               defconfig    gcc-14
riscv                 randconfig-001-20251001    clang-22
riscv                 randconfig-001-20251001    gcc-8.5.0
riscv                 randconfig-002-20251001    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-15.1.0
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    gcc-14
s390                  randconfig-001-20251001    clang-22
s390                  randconfig-001-20251001    gcc-8.5.0
s390                  randconfig-002-20251001    gcc-12.5.0
s390                  randconfig-002-20251001    gcc-8.5.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-14
sh                          landisk_defconfig    gcc-15.1.0
sh                          r7780mp_defconfig    clang-22
sh                    randconfig-001-20251001    gcc-13.4.0
sh                    randconfig-001-20251001    gcc-8.5.0
sh                    randconfig-002-20251001    gcc-11.5.0
sh                    randconfig-002-20251001    gcc-8.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251001    gcc-15.1.0
sparc                 randconfig-001-20251001    gcc-8.5.0
sparc                 randconfig-002-20251001    gcc-8.5.0
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20251001    gcc-8.5.0
sparc64               randconfig-002-20251001    clang-20
sparc64               randconfig-002-20251001    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-14
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251001    gcc-14
um                    randconfig-001-20251001    gcc-8.5.0
um                    randconfig-002-20251001    gcc-14
um                    randconfig-002-20251001    gcc-8.5.0
um                           x86_64_defconfig    gcc-14
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251001    clang-20
x86_64      buildonly-randconfig-002-20251001    clang-20
x86_64      buildonly-randconfig-003-20251001    clang-20
x86_64      buildonly-randconfig-004-20251001    clang-20
x86_64      buildonly-randconfig-005-20251001    clang-20
x86_64      buildonly-randconfig-006-20251001    clang-20
x86_64                              defconfig    clang-20
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20251001    clang-20
x86_64                randconfig-002-20251001    clang-20
x86_64                randconfig-003-20251001    clang-20
x86_64                randconfig-004-20251001    clang-20
x86_64                randconfig-005-20251001    clang-20
x86_64                randconfig-006-20251001    clang-20
x86_64                randconfig-007-20251001    clang-20
x86_64                randconfig-008-20251001    clang-20
x86_64                randconfig-071-20251001    gcc-14
x86_64                randconfig-072-20251001    gcc-14
x86_64                randconfig-073-20251001    gcc-14
x86_64                randconfig-074-20251001    gcc-14
x86_64                randconfig-075-20251001    gcc-14
x86_64                randconfig-076-20251001    gcc-14
x86_64                randconfig-077-20251001    gcc-14
x86_64                randconfig-078-20251001    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251001    gcc-15.1.0
xtensa                randconfig-001-20251001    gcc-8.5.0
xtensa                randconfig-002-20251001    gcc-10.5.0
xtensa                randconfig-002-20251001    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
