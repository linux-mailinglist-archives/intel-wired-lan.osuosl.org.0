Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F7E930613
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Jul 2024 17:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66D114009B;
	Sat, 13 Jul 2024 15:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bQO_mY6_5c6f; Sat, 13 Jul 2024 15:03:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32BED40327
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720883014;
	bh=5Trs3ML3dJBebWeyazY9b1BLcnKmHE37uZmKVrDhdLU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f2n9U4XPRUJxYn7GwGDpQb3S5UioyJI8ZANupGCwcO2pYkgsOhTq67AWlxam4Hkq0
	 oart2v48wffNhOYnt+/ixW+8d9R5PQMzKVqCJmsgnK4fvknThrkzZehW7ft6N1fVBC
	 8XjFn65sgwdqAxcx38k+4crHamL3Q+CacuJwHI7J4elWmGgOdWnw05vfh63djzLGaa
	 +Rc6boxKjotJtPvSBZIlxhpKjsYUTo3azUTJwv24esxUuJ4OatOxV08NWSsdQmgaWW
	 S/+sGbBUbCXh6YiMwrH5MwN/Z4j6L/i1rAkVKuUaDRKm0UwgfIB/S1SdcZwvWYDVsy
	 hYnuSJc8bFuUg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 32BED40327;
	Sat, 13 Jul 2024 15:03:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 879531BF41B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jul 2024 15:03:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FC4382020
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jul 2024 15:03:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qcgfbz4PrhDJ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Jul 2024 15:03:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B3268208B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B3268208B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B3268208B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Jul 2024 15:03:29 +0000 (UTC)
X-CSE-ConnectionGUID: MahS4K71SVyQfbLsvVpx8Q==
X-CSE-MsgGUID: jULicyxPQj+ucZxe8yqqAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="18266300"
X-IronPort-AV: E=Sophos;i="6.09,206,1716274800"; d="scan'208";a="18266300"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2024 08:03:29 -0700
X-CSE-ConnectionGUID: QyCv7bXgTXuYaBu54WYpYw==
X-CSE-MsgGUID: SSrgn6O/TFC0hMKJnrol4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,206,1716274800"; d="scan'208";a="49575112"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 13 Jul 2024 08:03:28 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sSeHV-000cIi-2h
 for intel-wired-lan@lists.osuosl.org; Sat, 13 Jul 2024 15:03:25 +0000
Date: Sat, 13 Jul 2024 23:03:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407132313.DYIWCpy4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720883010; x=1752419010;
 h=date:from:to:subject:message-id;
 bh=1qh5t/Lm0QysgQZayiFoHBQOCe9CL3defsFK0t60Svg=;
 b=m23pH1Fa4hAObn+Surzd6h+cfGbXsK56E5zKKO1dHBUiWdNRSeygAyDp
 H67jbOzrXI/wBGIEoIGCCp5r2guIoJocE3QG4uFY/NjH7sb3GGZEeLVNK
 zhKuskVCYlKFABRUSdhFZXShZ+8hBXmh3p9fI0JkPoFOusRcDYKEpMd7V
 jY/X2n8PbWrYC+LVsDR7nL3i0ovMohud/IVWAdwwJEg4yuxN6cV3OJoAb
 S5/flg1HGOuAJfGxQJgnJK5210B0Ccem/bavKXGY2bn/i6UrsXynJE9sK
 SmeK9lVVkzjbeDZ61jO/bth/ziMGhRteySFx0D7ZdTU9dU2LNTd/IK++2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m23pH1Fa
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 cce79b04e2ef3898051db1ee0494597391d638a1
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
branch HEAD: cce79b04e2ef3898051db1ee0494597391d638a1  ice: Fix recipe read procedure

elapsed time: 1452m

configs tested: 192
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240713   gcc-13.2.0
arc                   randconfig-002-20240713   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                         at91_dt_defconfig   clang-19
arm                                 defconfig   gcc-13.2.0
arm                       omap2plus_defconfig   gcc-14.1.0
arm                   randconfig-001-20240713   gcc-13.2.0
arm                   randconfig-002-20240713   gcc-13.2.0
arm                   randconfig-003-20240713   gcc-13.2.0
arm                   randconfig-004-20240713   gcc-13.2.0
arm                        realview_defconfig   clang-19
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240713   gcc-13.2.0
arm64                 randconfig-002-20240713   gcc-13.2.0
arm64                 randconfig-003-20240713   gcc-13.2.0
arm64                 randconfig-004-20240713   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240713   gcc-13.2.0
csky                  randconfig-002-20240713   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                          allyesconfig   clang-19
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386         buildonly-randconfig-001-20240713   clang-18
i386         buildonly-randconfig-002-20240713   clang-18
i386         buildonly-randconfig-003-20240713   clang-18
i386         buildonly-randconfig-003-20240713   gcc-8
i386         buildonly-randconfig-004-20240713   clang-18
i386         buildonly-randconfig-005-20240713   clang-18
i386         buildonly-randconfig-005-20240713   gcc-13
i386         buildonly-randconfig-006-20240713   clang-18
i386                                defconfig   clang-18
i386                  randconfig-001-20240713   clang-18
i386                  randconfig-001-20240713   gcc-10
i386                  randconfig-002-20240713   clang-18
i386                  randconfig-002-20240713   gcc-13
i386                  randconfig-003-20240713   clang-18
i386                  randconfig-003-20240713   gcc-13
i386                  randconfig-004-20240713   clang-18
i386                  randconfig-005-20240713   clang-18
i386                  randconfig-005-20240713   gcc-10
i386                  randconfig-006-20240713   clang-18
i386                  randconfig-006-20240713   gcc-12
i386                  randconfig-011-20240713   clang-18
i386                  randconfig-012-20240713   clang-18
i386                  randconfig-012-20240713   gcc-7
i386                  randconfig-013-20240713   clang-18
i386                  randconfig-013-20240713   gcc-13
i386                  randconfig-014-20240713   clang-18
i386                  randconfig-014-20240713   gcc-13
i386                  randconfig-015-20240713   clang-18
i386                  randconfig-015-20240713   gcc-11
i386                  randconfig-016-20240713   clang-18
loongarch                        alldefconfig   gcc-14.1.0
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240713   gcc-13.2.0
loongarch             randconfig-002-20240713   gcc-13.2.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-14.1.0
m68k                       bvme6000_defconfig   gcc-14.1.0
m68k                                defconfig   gcc-13.2.0
m68k                           sun3_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                     loongson1b_defconfig   gcc-14.1.0
mips                      loongson3_defconfig   clang-19
mips                      malta_kvm_defconfig   gcc-14.1.0
mips                malta_qemu_32r6_defconfig   clang-19
mips                      maltasmvp_defconfig   gcc-14.1.0
mips                        maltaup_defconfig   clang-19
mips                           rs90_defconfig   clang-19
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240713   gcc-13.2.0
nios2                 randconfig-002-20240713   gcc-13.2.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240713   gcc-13.2.0
parisc                randconfig-002-20240713   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                     akebono_defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   gcc-14.1.0
powerpc                     asp8347_defconfig   clang-19
powerpc                 canyonlands_defconfig   clang-19
powerpc                       eiger_defconfig   clang-19
powerpc                   motionpro_defconfig   gcc-14.1.0
powerpc                     mpc512x_defconfig   clang-19
powerpc                     mpc5200_defconfig   gcc-14.1.0
powerpc                      ppc44x_defconfig   clang-19
powerpc               randconfig-001-20240713   gcc-13.2.0
powerpc               randconfig-002-20240713   gcc-13.2.0
powerpc               randconfig-003-20240713   gcc-13.2.0
powerpc                     tqm8555_defconfig   clang-19
powerpc64             randconfig-001-20240713   gcc-13.2.0
powerpc64             randconfig-002-20240713   gcc-13.2.0
powerpc64             randconfig-003-20240713   gcc-13.2.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                    nommu_k210_defconfig   gcc-14.1.0
riscv                 randconfig-001-20240713   gcc-13.2.0
riscv                 randconfig-002-20240713   gcc-13.2.0
s390                             allmodconfig   clang-19
s390                              allnoconfig   clang-19
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-19
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240713   gcc-13.2.0
s390                  randconfig-002-20240713   gcc-13.2.0
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-14.1.0
sh                         ap325rxa_defconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sh                ecovec24-romimage_defconfig   gcc-14.1.0
sh                    randconfig-001-20240713   gcc-13.2.0
sh                    randconfig-002-20240713   gcc-13.2.0
sh                             shx3_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240713   gcc-13.2.0
sparc64               randconfig-002-20240713   gcc-13.2.0
um                               allmodconfig   gcc-13.3.0
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                               allyesconfig   gcc-13.3.0
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240713   gcc-13.2.0
um                    randconfig-002-20240713   gcc-13.2.0
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240713   clang-18
x86_64       buildonly-randconfig-002-20240713   clang-18
x86_64       buildonly-randconfig-003-20240713   clang-18
x86_64       buildonly-randconfig-004-20240713   clang-18
x86_64       buildonly-randconfig-005-20240713   clang-18
x86_64       buildonly-randconfig-006-20240713   clang-18
x86_64                              defconfig   clang-18
x86_64                randconfig-001-20240713   clang-18
x86_64                randconfig-002-20240713   clang-18
x86_64                randconfig-003-20240713   clang-18
x86_64                randconfig-004-20240713   clang-18
x86_64                randconfig-005-20240713   clang-18
x86_64                randconfig-006-20240713   clang-18
x86_64                randconfig-011-20240713   clang-18
x86_64                randconfig-012-20240713   clang-18
x86_64                randconfig-013-20240713   clang-18
x86_64                randconfig-014-20240713   clang-18
x86_64                randconfig-015-20240713   clang-18
x86_64                randconfig-016-20240713   clang-18
x86_64                randconfig-071-20240713   clang-18
x86_64                randconfig-072-20240713   clang-18
x86_64                randconfig-073-20240713   clang-18
x86_64                randconfig-074-20240713   clang-18
x86_64                randconfig-075-20240713   clang-18
x86_64                randconfig-076-20240713   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240713   gcc-13.2.0
xtensa                randconfig-002-20240713   gcc-13.2.0
xtensa                    xip_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
