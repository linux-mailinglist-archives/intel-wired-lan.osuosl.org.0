Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6B2C37351
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 18:54:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 272206137D;
	Wed,  5 Nov 2025 17:54:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ljsO6jRA6mdj; Wed,  5 Nov 2025 17:54:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4AF5761295
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762365242;
	bh=DZBYCXxFvDgOZeZODTJopy57fJjbHuJb9av2Rzel7yM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=of4bDmJWOaxYxXCsnfvpWfXFR+wwx9FH3uYQ1ZSoXfmW/yVn8Q7NPuzlhnJ54mjtQ
	 GtGQmezefaRMtpbfMdeTgLwFDY9xt4aaIBA5gPR0YGjvOuinVfAsr2to2YdnDvlBoo
	 PF3p8veiO5zKoQhfrt9xMXYvH97SvWEHpQAL4OiQmqNcCG0naLreZP9lXAfSwH2vs6
	 4FxhyPb07SmXqc+/Riryri0FlpzMyOVjCErCSedtewALWn/jhYZgzLkyT05zYOiTED
	 XybWmzxxoA/aMsIB1luP33smNcb6gv5eay50Iiac/dJASq/lhv1mSeX5i5MKPGD6dl
	 SiSLh1jd6EI1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4AF5761295;
	Wed,  5 Nov 2025 17:54:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5508C4C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 17:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B48A41106
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 17:54:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H4exCS_kFZIr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 17:53:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18EE7410FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18EE7410FF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18EE7410FF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 17:53:58 +0000 (UTC)
X-CSE-ConnectionGUID: 4nLh50gnTpSCOohJWl3RRw==
X-CSE-MsgGUID: rI2lxGHRQzCTRcyN5gGnDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="52057188"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="52057188"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 09:53:59 -0800
X-CSE-ConnectionGUID: KSpj7VQPTRO+i1y99t9u+w==
X-CSE-MsgGUID: eRGlOn0QTjq0pML03Eew3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="192584710"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa004.fm.intel.com with ESMTP; 05 Nov 2025 09:53:58 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGhhj-000SxB-0u
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Nov 2025 17:53:55 +0000
Date: Thu, 06 Nov 2025 01:49:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511060121.qDexlhQq-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762365239; x=1793901239;
 h=date:from:to:subject:message-id;
 bh=eoVMY7dbIUr8OKKBZgRcMndGYEzFcYIR+zWZoMFUnxE=;
 b=ODKoAmak4BRwf52mpZXZficHTt2Ii8pCXShlFo3tbCvNJ0Iow6dmzIww
 kjQM9PPFrHwrobyCuVbACWGyVOeHLdISVbzEQoAjDUq44PBCHrM+Mt+qe
 W3w+K78tSPpR10qiOv6A0Re9p02G5ygICsnGKYhnjaU4mUAOvvQp5Al19
 wkKZxOzmcfqyxwva3Snkc10OIiuQhgMFXiNOWnqRZNxBHjxjsiZY6syzV
 RVtDbi3f1jkt8a+hlX5RhdoBkHfvYdrFGp5eLUYngptk6SwblRJ3WAjwz
 s0V0orphz5IM9aeW88xxgq7KoTbez4n55OfJ7A45m+a49vt8kSKMTVqU0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ODKoAmak
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 255d75ef029f33f75fcf5015052b7302486f7ad2
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
branch HEAD: 255d75ef029f33f75fcf5015052b7302486f7ad2  Merge branch 'xsk-minor-optimizations-around-locks'

elapsed time: 1534m

configs tested: 164
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              alldefconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                        nsim_700_defconfig    gcc-15.1.0
arc                     nsimosci_hs_defconfig    gcc-15.1.0
arc                   randconfig-001-20251105    gcc-8.5.0
arc                   randconfig-002-20251105    gcc-13.4.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                          gemini_defconfig    clang-20
arm                        multi_v7_defconfig    gcc-15.1.0
arm                         nhk8815_defconfig    clang-22
arm                          pxa168_defconfig    clang-19
arm                   randconfig-001-20251105    clang-22
arm                   randconfig-002-20251105    clang-22
arm                   randconfig-003-20251105    clang-22
arm                   randconfig-004-20251105    gcc-12.5.0
arm                         s5pv210_defconfig    gcc-15.1.0
arm                           sama7_defconfig    clang-22
arm                           stm32_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251105    clang-17
arm64                 randconfig-002-20251105    gcc-13.4.0
arm64                 randconfig-003-20251105    gcc-8.5.0
arm64                 randconfig-004-20251105    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251105    gcc-15.1.0
csky                  randconfig-002-20251105    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251105    clang-22
hexagon               randconfig-002-20251105    clang-20
i386                              allnoconfig    gcc-14
i386        buildonly-randconfig-001-20251105    gcc-14
i386        buildonly-randconfig-002-20251105    gcc-14
i386        buildonly-randconfig-003-20251105    clang-20
i386        buildonly-randconfig-004-20251105    gcc-14
i386        buildonly-randconfig-005-20251105    gcc-14
i386        buildonly-randconfig-006-20251105    clang-20
i386                  randconfig-001-20251105    clang-20
i386                  randconfig-002-20251105    gcc-14
i386                  randconfig-003-20251105    clang-20
i386                  randconfig-004-20251105    clang-20
i386                  randconfig-005-20251105    clang-20
i386                  randconfig-006-20251105    gcc-13
i386                  randconfig-007-20251105    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251105    clang-18
loongarch             randconfig-002-20251105    clang-20
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                         db1xxx_defconfig    clang-22
mips                           ip32_defconfig    clang-22
mips                      maltaaprp_defconfig    clang-22
nios2                         3c120_defconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251105    gcc-9.5.0
nios2                 randconfig-002-20251105    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251105    gcc-12.5.0
parisc                randconfig-002-20251105    gcc-10.5.0
parisc64                         alldefconfig    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                        cell_defconfig    gcc-15.1.0
powerpc                   currituck_defconfig    clang-22
powerpc                     kmeter1_defconfig    gcc-15.1.0
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc                         ps3_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251105    gcc-14.3.0
powerpc               randconfig-002-20251105    gcc-12.5.0
powerpc                  storcenter_defconfig    gcc-15.1.0
powerpc                         wii_defconfig    gcc-15.1.0
powerpc                 xes_mpc85xx_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20251105    clang-22
powerpc64             randconfig-002-20251105    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv             nommu_k210_sdcard_defconfig    gcc-15.1.0
riscv                 randconfig-001-20251105    gcc-8.5.0
riscv                 randconfig-002-20251105    clang-18
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251105    gcc-8.5.0
s390                  randconfig-002-20251105    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                               j2_defconfig    gcc-15.1.0
sh                          landisk_defconfig    gcc-15.1.0
sh                    randconfig-001-20251105    gcc-10.5.0
sh                    randconfig-002-20251105    gcc-11.5.0
sh                          rsk7269_defconfig    gcc-15.1.0
sh                           se7619_defconfig    gcc-15.1.0
sh                           se7705_defconfig    gcc-15.1.0
sh                           se7721_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                            alldefconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251105    gcc-12.5.0
sparc                 randconfig-002-20251105    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251105    clang-22
sparc64               randconfig-002-20251105    gcc-10.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251105    clang-22
um                    randconfig-002-20251105    gcc-14
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64      buildonly-randconfig-001-20251105    clang-20
x86_64      buildonly-randconfig-002-20251105    gcc-13
x86_64      buildonly-randconfig-003-20251105    gcc-14
x86_64      buildonly-randconfig-004-20251105    gcc-13
x86_64      buildonly-randconfig-005-20251105    gcc-14
x86_64      buildonly-randconfig-006-20251105    gcc-13
x86_64                              defconfig    gcc-14
x86_64                randconfig-011-20251105    clang-20
x86_64                randconfig-012-20251105    clang-20
x86_64                randconfig-013-20251105    clang-20
x86_64                randconfig-014-20251105    gcc-14
x86_64                randconfig-015-20251105    clang-20
x86_64                randconfig-016-20251105    gcc-14
xtensa                            allnoconfig    gcc-15.1.0
xtensa                generic_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20251105    gcc-11.5.0
xtensa                randconfig-002-20251105    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
