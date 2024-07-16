Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAFF93268D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2024 14:31:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29F8E40B5E;
	Tue, 16 Jul 2024 12:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ACNKBmTPEWuQ; Tue, 16 Jul 2024 12:31:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8922F40B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721133059;
	bh=T5Ju5az5Av/Jd1YYNIAhgfwHuQKWFrbo4Kwl0FECWIo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DqSTyOJkDMK6cUHgVjT0bq1AVdz3BWcImO3Toh8PvKnFfLOO9eggTKOJZXkMNhUA/
	 X3fA6VPXakT/qMugj1pFwIMb/XM5WwfbBRQzbZfYh0N9/DGJZVpUWpq1bIcuZprooL
	 DKKYbKAXodAhvlVkbl52baWaG5qhTn28zxqWoLujYqBSiiPLDIoA0QnkS7DSFKscUV
	 za/OTbNuDE4Oep101wpMKiXcrRhGuvFnToILi4R9hZt1IUA01YcsDucW3Cz/9RHyqe
	 EaKDVTvGCKSqpRrDTwXcyjRJbZjjcT+9WybCGlAL+hvPFl4S1eGbTLjfIiG7wUetpo
	 Aan9URfaSyS8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8922F40B8D;
	Tue, 16 Jul 2024 12:30:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE8FA1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 12:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB5C7607D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 12:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1PHpv1w3R90b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2024 12:30:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B5FEA60673
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5FEA60673
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5FEA60673
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 12:30:56 +0000 (UTC)
X-CSE-ConnectionGUID: XTcIqP23QDqQ4QJodYrMeQ==
X-CSE-MsgGUID: UlcanDB6TTKklOiDJRUTbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="29714635"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="29714635"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 05:30:54 -0700
X-CSE-ConnectionGUID: tM4Hf9erSXKZGbZWCOMtGw==
X-CSE-MsgGUID: cqtNUF/vQn2qta5IGkqJIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="49879780"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 16 Jul 2024 05:30:52 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sThKU-000fCY-0z
 for intel-wired-lan@lists.osuosl.org; Tue, 16 Jul 2024 12:30:50 +0000
Date: Tue, 16 Jul 2024 20:30:28 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407162026.exmFQgXv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721133057; x=1752669057;
 h=date:from:to:subject:message-id;
 bh=fsNkbjCIax+bIuOsJmNmUcCeaDFXNxrSIQjt96efCsc=;
 b=OHh5A9RXHyu2CNcgMJoQBjxolBcU6ynUW60j8bug/BfNRu5Ej0uZoQUr
 6lu+zOlYS2bhIdzb0BVBPFZkC3uMbYGmGiRALMZinpAxGlUpvRzazt2E4
 lzXi+JoLZcb1RDSj/PRZeqIkXOiKascLdHtrIELmQPXhiFdUkwQv7Jygk
 RGUrAD+2SzsHD0MyQ0dr29C73wJ0QRO2HqCO+zRT5jyzB7nV61gf5qeP/
 n5g+pmrq9FqT8BosOdwt8e3xvgPs1OZBu5BVGpdsyh0xFPK6fKbgO4B15
 gmF74+mHAOdqil+ibrM81DB5KE2/FsQTwojMvFCRdEcacw68DKchQIQ7u
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OHh5A9RX
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 518cef63ad0f4e0b78513878d7cfdcd285b490cc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 518cef63ad0f4e0b78513878d7cfdcd285b490cc  ice: Fix recipe read procedure

elapsed time: 1429m

configs tested: 130
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                   randconfig-001-20240716   gcc-13.2.0
arc                   randconfig-002-20240716   gcc-13.2.0
arc                           tb10x_defconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-19
arm                              allyesconfig   gcc-14.1.0
arm                             pxa_defconfig   gcc-14.1.0
arm                   randconfig-001-20240716   gcc-14.1.0
arm                   randconfig-002-20240716   clang-19
arm                   randconfig-003-20240716   gcc-14.1.0
arm                   randconfig-004-20240716   gcc-14.1.0
arm                           sunxi_defconfig   gcc-14.1.0
arm                           tegra_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-19
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240716   gcc-14.1.0
arm64                 randconfig-002-20240716   clang-19
arm64                 randconfig-003-20240716   gcc-14.1.0
arm64                 randconfig-004-20240716   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240716   gcc-14.1.0
csky                  randconfig-002-20240716   gcc-14.1.0
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon               randconfig-001-20240716   clang-19
hexagon               randconfig-002-20240716   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240715   clang-18
i386         buildonly-randconfig-002-20240715   clang-18
i386         buildonly-randconfig-003-20240715   gcc-13
i386         buildonly-randconfig-004-20240715   gcc-12
i386         buildonly-randconfig-005-20240715   clang-18
i386         buildonly-randconfig-006-20240715   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240715   gcc-13
i386                  randconfig-002-20240715   clang-18
i386                  randconfig-003-20240715   clang-18
i386                  randconfig-004-20240715   gcc-13
i386                  randconfig-005-20240715   gcc-13
i386                  randconfig-006-20240715   gcc-13
i386                  randconfig-011-20240715   gcc-9
i386                  randconfig-012-20240715   gcc-13
i386                  randconfig-013-20240715   gcc-7
i386                  randconfig-014-20240715   clang-18
i386                  randconfig-015-20240715   clang-18
i386                  randconfig-016-20240715   clang-18
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240716   gcc-14.1.0
loongarch             randconfig-002-20240716   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                           virt_defconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                           ip27_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240716   gcc-14.1.0
nios2                 randconfig-002-20240716   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240716   gcc-14.1.0
parisc                randconfig-002-20240716   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-19
powerpc                      arches_defconfig   gcc-14.1.0
powerpc                       ebony_defconfig   clang-19
powerpc                  iss476-smp_defconfig   gcc-14.1.0
powerpc                      makalu_defconfig   clang-19
powerpc                   motionpro_defconfig   clang-17
powerpc                       ppc64_defconfig   clang-19
powerpc               randconfig-001-20240716   clang-19
powerpc               randconfig-002-20240716   clang-19
powerpc               randconfig-003-20240716   clang-19
powerpc                         wii_defconfig   gcc-14.1.0
powerpc64             randconfig-001-20240716   clang-19
powerpc64             randconfig-002-20240716   clang-19
powerpc64             randconfig-003-20240716   gcc-14.1.0
riscv                            allmodconfig   clang-19
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-19
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240716   clang-19
riscv                 randconfig-002-20240716   clang-19
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-19
s390                  randconfig-001-20240716   gcc-14.1.0
s390                  randconfig-002-20240716   clang-15
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                          landisk_defconfig   gcc-14.1.0
sh                    randconfig-001-20240716   gcc-14.1.0
sh                    randconfig-002-20240716   gcc-14.1.0
sh                          sdk7780_defconfig   gcc-14.1.0
sh                             sh03_defconfig   gcc-14.1.0
sh                   sh7770_generic_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240716   gcc-14.1.0
sparc64               randconfig-002-20240716   gcc-14.1.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240716   gcc-13
um                    randconfig-002-20240716   clang-19
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240716   gcc-14.1.0
xtensa                randconfig-002-20240716   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
