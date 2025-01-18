Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C4AA15F19
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2025 23:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81276847D5;
	Sat, 18 Jan 2025 22:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWS1zbudmzTI; Sat, 18 Jan 2025 22:49:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EE3D84750
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737240557;
	bh=6PtEGb/xZuQJlPZyTJ7D7sBRfcSNJy9rbdAx2tw6gEo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4djhQzYgD4lOFQzg7JcL/pdTPAB3YmkSwczUGqh/h2mZCK5r/IMuf/AL2L3DOtU6z
	 y3DbuGquYbgV8N5ysVQDuqoWxJ5rScfelW748NuEljG4VS5iSGGfvQ+yWPBCKke8JX
	 m4qJia3/HZYu/cOHV9FSY8wvNFVwRgvhdW1t8PMnhfjE1Dn1e8n2SAtPN+psR7ZD2l
	 Ck+MNikVZG8trrpS6uYKIWfyp63I1kvxvt0sMtgBvMftT4aJS1nBqXJCalGn+jZ4tV
	 r5GIiMgokF4McAiG2ABb9rS9FMSPJl8VAkHRAu68vHgXs8EWfyIqZjwi2+r5rtFfU+
	 7lKq3+/Z4sQVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EE3D84750;
	Sat, 18 Jan 2025 22:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 856512F6D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 22:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70BB2404F5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 22:49:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hj8Ls78gh1XX for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jan 2025 22:49:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2C1CE4012B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C1CE4012B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2C1CE4012B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 22:49:13 +0000 (UTC)
X-CSE-ConnectionGUID: 26kbcXNTRbGaU53OnyNPnA==
X-CSE-MsgGUID: zo3GrVSeR7uDyabb5ZT6zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11319"; a="48141357"
X-IronPort-AV: E=Sophos;i="6.13,216,1732608000"; d="scan'208";a="48141357"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2025 14:49:13 -0800
X-CSE-ConnectionGUID: ugjnyXHERZCxw1vy50yL5Q==
X-CSE-MsgGUID: oJws9J/kS2Wm3Rlf4HcyAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,216,1732608000"; d="scan'208";a="111110944"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 18 Jan 2025 14:49:12 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tZHcs-000Uu1-1G
 for intel-wired-lan@lists.osuosl.org; Sat, 18 Jan 2025 22:49:10 +0000
Date: Sun, 19 Jan 2025 06:48:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501190632.h48y9Uev-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737240554; x=1768776554;
 h=date:from:to:subject:message-id;
 bh=W0JwyowAp4QX5N62k7+q5Zs+/pYceuEqMwWJkTeRvR8=;
 b=kSxWHRu8jdQM3FMmTu6VcVd6vjbIJv156qedjEl1wkJGkx3fiNK83PRa
 JXFarisvRCwRGcZLIZ+R8Gm7Wvl1Ad/zX0d0qaFaRmv5nAHb0eh8bCeOo
 KOWnChnjrsDvzaxWRlSOSNU2qMJZP384tbNzWGS1kOmbQcIOxdLNb3HIq
 iHgr7UEPUqjHIPyqQtlByXN1AA0EVFrFeH6396uU0uTZ+/r2uPJoIUmwT
 LDY8yqirriJJAjvOfJRjOrNv9BF93IiVOCgLF/lEE4iDBID6tH2UMmE1o
 g/XCpGQOl0ZHI1s6c2l5ogNNhLStmbOkNW1NeOnenqpB+LDFdYC6Y1fQn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kSxWHRu8
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 0b7bb9efff1ba555abd4811b61af1e87f4aca572
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 0b7bb9efff1ba555abd4811b61af1e87f4aca572  idpf: modify vport_cfg_lock to be per-vport

elapsed time: 1445m

configs tested: 102
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250118    gcc-13.2.0
arc                   randconfig-002-20250118    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                       imx_v4_v5_defconfig    clang-16
arm                   randconfig-001-20250118    gcc-14.2.0
arm                   randconfig-002-20250118    clang-20
arm                   randconfig-003-20250118    gcc-14.2.0
arm                   randconfig-004-20250118    gcc-14.2.0
arm                         s3c6400_defconfig    gcc-14.2.0
arm                         s5pv210_defconfig    gcc-14.2.0
arm                        spear3xx_defconfig    clang-16
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20250118    clang-17
arm64                 randconfig-002-20250118    gcc-14.2.0
arm64                 randconfig-003-20250118    clang-20
arm64                 randconfig-004-20250118    clang-15
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20250118    gcc-14.2.0
csky                  randconfig-002-20250118    gcc-14.2.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20250118    clang-20
hexagon               randconfig-002-20250118    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386        buildonly-randconfig-001-20250118    gcc-12
i386        buildonly-randconfig-002-20250118    clang-19
i386        buildonly-randconfig-003-20250118    clang-19
i386        buildonly-randconfig-004-20250118    gcc-11
i386        buildonly-randconfig-005-20250118    clang-19
i386        buildonly-randconfig-006-20250118    clang-19
i386                                defconfig    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20250118    gcc-14.2.0
loongarch             randconfig-002-20250118    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         db1xxx_defconfig    clang-20
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250118    gcc-14.2.0
nios2                 randconfig-002-20250118    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250118    gcc-14.2.0
parisc                randconfig-002-20250118    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                 mpc834x_itx_defconfig    clang-20
powerpc                 mpc837x_rdb_defconfig    gcc-14.2.0
powerpc                  mpc885_ads_defconfig    clang-18
powerpc               randconfig-001-20250118    clang-15
powerpc               randconfig-002-20250118    clang-20
powerpc               randconfig-003-20250118    clang-20
powerpc                     tqm8540_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250118    clang-17
powerpc64             randconfig-002-20250118    clang-19
powerpc64             randconfig-003-20250118    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250118    gcc-14.2.0
riscv                 randconfig-002-20250118    clang-20
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250118    clang-20
s390                  randconfig-002-20250118    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                          lboxre2_defconfig    gcc-14.2.0
sh                          polaris_defconfig    gcc-14.2.0
sh                    randconfig-001-20250118    gcc-14.2.0
sh                    randconfig-002-20250118    gcc-14.2.0
sh                     sh7710voipgw_defconfig    gcc-14.2.0
sh                  sh7785lcr_32bit_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250118    gcc-14.2.0
sparc                 randconfig-002-20250118    gcc-14.2.0
sparc64               randconfig-001-20250118    gcc-14.2.0
sparc64               randconfig-002-20250118    gcc-14.2.0
um                                allnoconfig    clang-18
um                    randconfig-001-20250118    clang-17
um                    randconfig-002-20250118    clang-15
x86_64                            allnoconfig    clang-19
x86_64      buildonly-randconfig-001-20250118    clang-19
x86_64      buildonly-randconfig-002-20250118    gcc-12
x86_64      buildonly-randconfig-003-20250118    clang-19
x86_64      buildonly-randconfig-004-20250118    gcc-12
x86_64      buildonly-randconfig-005-20250118    clang-19
x86_64      buildonly-randconfig-006-20250118    gcc-12
x86_64                              defconfig    gcc-11
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250118    gcc-14.2.0
xtensa                randconfig-002-20250118    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
