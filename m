Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CACBCA197BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 18:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D712406FC;
	Wed, 22 Jan 2025 17:38:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x2kvy-sfxgwI; Wed, 22 Jan 2025 17:38:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 659EC40691
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737567498;
	bh=ZxcV7R7ISojZndb1yeEIj1IgfnwSwVj+R/kItQprMw0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i1MAodLaCjsU+PQdI5mzHZdBgRzvorZjoQHUB5GtsIfeQXMi4mvPITpCxUgxdGeR5
	 VRINVWTkW9guoMdAJDYez1zVs/jE8r4fOfSWFpMzv2EeLi5xddnddUE1CAER10E+H5
	 ENU5xHaaXuf/whG6XwS+9Sd/iJPrxO18XhsWdlfpR4dv7a3Kyrm/INnDqaGgJOxJY+
	 m3uAqI0NR1vT7w8su/r1ejssCOqpuoDcuf931ftvAC/QLXFoD47Q6ojxSGNqLLbA5w
	 0M0iAvRMrymioTJcpvNXjKecksGKfuV5yxDDL8rco3gP3IegN5PvEDmy0KdeqOOwjw
	 yq4rbchVjxPrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 659EC40691;
	Wed, 22 Jan 2025 17:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 05D20959
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 17:38:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6F6E4067B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 17:38:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4-49I0q-3dLB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 17:38:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4BE004031E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BE004031E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BE004031E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 17:38:14 +0000 (UTC)
X-CSE-ConnectionGUID: 391x5fqxRBeUB9SIVgDawQ==
X-CSE-MsgGUID: eqv9obKCSySBkMo8cnSv2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="55585717"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="55585717"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 09:38:14 -0800
X-CSE-ConnectionGUID: pTJs616HTF+yh/0bac6mGQ==
X-CSE-MsgGUID: 0uoo6vFuSPqm2HdjszWDgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108082470"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 22 Jan 2025 09:38:13 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1taeg5-000aAW-2S
 for intel-wired-lan@lists.osuosl.org; Wed, 22 Jan 2025 17:38:09 +0000
Date: Thu, 23 Jan 2025 01:37:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202501230135.zfnQ7yYm-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737567494; x=1769103494;
 h=date:from:to:subject:message-id;
 bh=2tBy9r1MetpH42WQr93OPvzDzxcdKuv3lmzf/50iFP8=;
 b=OV4FKklxuOl5JQjxBK1uNAX2tTpQ5xbk3Az2OIVKtrgw/K+NPmPWMJyL
 y7BhR0IbAGrXtfmlspiTNNBLhbgpKVeGCuzMYeVRXSFVQYXb5CpR2YQee
 suwnRuYFjj1bAlq3XHKsjxufSABWv+NH/RH5pDARcMml70RI/r/h9h8oL
 fb0dVSUrqXlA7SOuTFoV98l6c80CjqX6sqYqUlaRkvtvyVYmaI9uBP88Z
 ELmHinw8SD+G1a6ij6vMo8bwYYem+X3ATbjH5rKqLo3Me1dyYeRBaQ+TU
 jWNteILQrMTCC/LG9YiI0BvMNEEL2B3Bq1pXPRJKKXvwrYcJCAe83lFCU
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OV4FKklx
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3ef16bb459c1a3af2c071cb5651877a47cd03295
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
branch HEAD: 3ef16bb459c1a3af2c071cb5651877a47cd03295  idpf: synchronize pending IRQs after disable

elapsed time: 1442m

configs tested: 196
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250122    gcc-13.2.0
arc                   randconfig-002-20250122    gcc-13.2.0
arm                               allnoconfig    clang-17
arm                         assabet_defconfig    gcc-14.2.0
arm                         at91_dt_defconfig    clang-20
arm                                 defconfig    gcc-14.2.0
arm                            hisi_defconfig    clang-20
arm                        multi_v7_defconfig    gcc-14.2.0
arm                   randconfig-001-20250122    clang-19
arm                   randconfig-002-20250122    clang-20
arm                   randconfig-003-20250122    gcc-14.2.0
arm                   randconfig-004-20250122    gcc-14.2.0
arm                          sp7021_defconfig    clang-20
arm                           sunxi_defconfig    gcc-14.2.0
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250122    clang-20
arm64                 randconfig-002-20250122    clang-15
arm64                 randconfig-003-20250122    clang-20
arm64                 randconfig-004-20250122    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250122    gcc-14.2.0
csky                  randconfig-002-20250122    gcc-14.2.0
hexagon                          alldefconfig    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-18
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250122    clang-20
hexagon               randconfig-001-20250122    gcc-14.2.0
hexagon               randconfig-002-20250122    clang-20
hexagon               randconfig-002-20250122    gcc-14.2.0
i386                             allmodconfig    clang-19
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-19
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-19
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250122    clang-19
i386        buildonly-randconfig-001-20250122    gcc-12
i386        buildonly-randconfig-002-20250122    gcc-12
i386        buildonly-randconfig-003-20250122    gcc-12
i386        buildonly-randconfig-004-20250122    clang-19
i386        buildonly-randconfig-004-20250122    gcc-12
i386        buildonly-randconfig-005-20250122    clang-19
i386        buildonly-randconfig-005-20250122    gcc-12
i386        buildonly-randconfig-006-20250122    clang-19
i386        buildonly-randconfig-006-20250122    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20250122    clang-19
i386                  randconfig-002-20250122    clang-19
i386                  randconfig-003-20250122    clang-19
i386                  randconfig-004-20250122    clang-19
i386                  randconfig-005-20250122    clang-19
i386                  randconfig-006-20250122    clang-19
i386                  randconfig-007-20250122    clang-19
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250122    gcc-14.2.0
loongarch             randconfig-002-20250122    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                        bcm63xx_defconfig    gcc-14.2.0
mips                      maltaaprp_defconfig    clang-20
mips                        vocore2_defconfig    clang-15
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250122    gcc-14.2.0
nios2                 randconfig-002-20250122    gcc-14.2.0
openrisc                          allnoconfig    clang-20
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-20
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250122    gcc-14.2.0
parisc                randconfig-002-20250122    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-20
powerpc                          allyesconfig    clang-16
powerpc                          allyesconfig    gcc-14.2.0
powerpc                        icon_defconfig    gcc-14.2.0
powerpc                     kmeter1_defconfig    gcc-14.2.0
powerpc                  mpc866_ads_defconfig    clang-20
powerpc                       ppc64_defconfig    clang-20
powerpc               randconfig-001-20250122    gcc-14.2.0
powerpc               randconfig-002-20250122    clang-17
powerpc               randconfig-002-20250122    gcc-14.2.0
powerpc               randconfig-003-20250122    clang-15
powerpc               randconfig-003-20250122    gcc-14.2.0
powerpc                    sam440ep_defconfig    clang-20
powerpc                         wii_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250122    clang-20
powerpc64             randconfig-001-20250122    gcc-14.2.0
powerpc64             randconfig-002-20250122    clang-19
powerpc64             randconfig-002-20250122    gcc-14.2.0
powerpc64             randconfig-003-20250122    clang-20
powerpc64             randconfig-003-20250122    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-20
riscv                            allyesconfig    clang-20
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                    nommu_virt_defconfig    clang-20
riscv                 randconfig-001-20250122    clang-20
riscv                 randconfig-002-20250122    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250122    clang-18
s390                  randconfig-002-20250122    clang-20
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                            hp6xx_defconfig    gcc-14.2.0
sh                    randconfig-001-20250122    gcc-14.2.0
sh                    randconfig-002-20250122    gcc-14.2.0
sh                           se7705_defconfig    clang-20
sh                             sh03_defconfig    clang-20
sh                           sh2007_defconfig    clang-20
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250122    gcc-14.2.0
sparc                 randconfig-002-20250122    gcc-14.2.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250122    gcc-14.2.0
sparc64               randconfig-002-20250122    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-20
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250122    gcc-12
um                    randconfig-002-20250122    clang-20
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20250122    gcc-12
x86_64      buildonly-randconfig-002-20250122    clang-19
x86_64      buildonly-randconfig-003-20250122    gcc-12
x86_64      buildonly-randconfig-004-20250122    gcc-12
x86_64      buildonly-randconfig-005-20250122    gcc-12
x86_64      buildonly-randconfig-006-20250122    clang-19
x86_64                              defconfig    clang-19
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250122    gcc-12
x86_64                randconfig-002-20250122    gcc-12
x86_64                randconfig-003-20250122    gcc-12
x86_64                randconfig-004-20250122    gcc-12
x86_64                randconfig-005-20250122    gcc-12
x86_64                randconfig-006-20250122    gcc-12
x86_64                randconfig-007-20250122    gcc-12
x86_64                randconfig-008-20250122    gcc-12
x86_64                randconfig-071-20250122    clang-19
x86_64                randconfig-072-20250122    clang-19
x86_64                randconfig-073-20250122    clang-19
x86_64                randconfig-074-20250122    clang-19
x86_64                randconfig-075-20250122    clang-19
x86_64                randconfig-076-20250122    clang-19
x86_64                randconfig-077-20250122    clang-19
x86_64                randconfig-078-20250122    clang-19
x86_64                               rhel-9.4    clang-19
x86_64                           rhel-9.4-bpf    clang-19
x86_64                         rhel-9.4-kunit    clang-19
x86_64                           rhel-9.4-ltp    clang-19
x86_64                          rhel-9.4-rust    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                  audio_kc705_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250122    gcc-14.2.0
xtensa                randconfig-002-20250122    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
