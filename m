Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A0AABE6CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 00:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9740D807DE;
	Tue, 20 May 2025 22:15:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8og36I3Vzfa6; Tue, 20 May 2025 22:15:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FB8807C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747779344;
	bh=JZ/Iq6v8yMwm9Z1rMg2nfG4eaQ8v+0V6I5uCpgqanDU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=wwG9NWvgMX+l+BBDxOPk3KoJz1PK6nSBUGUlY9P0n11TtGDpJkDSR41tG6GHy+oBd
	 81NuYZGz+1nZ0TVbztnJR4vTtIqa9yHopkGuHnYMpdewIJwzKw8eN88ZQ4VhrrKMML
	 gzKVwLVkJP4aZA7bYq/m+DoFPxC+P4C7o932ilc6+mjbDS0wTBPCQs9PX1dva/fsEJ
	 Hc9ginC/mlifLxcb0FEY1ag7VG8iOcEa2v6D9E8ttsr1ii3I6GAfRe6JNat9EEKyWa
	 YX3lSOZDXxgrsnEd+tsaJkLhkkhy66jq8/XJvE3e3tHcgjnnqAtGjmTPiW8PPN1piX
	 rYODNDpHWS5mA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05FB8807C7;
	Tue, 20 May 2025 22:15:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2032011B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 22:15:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 122F0610DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 22:15:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SV5POfB07kJ5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 22:15:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0A058610DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A058610DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A058610DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 22:15:40 +0000 (UTC)
X-CSE-ConnectionGUID: e08kpag3Qcyvv26nS/iIWQ==
X-CSE-MsgGUID: 0iDXHCS0TKaf77+2fuJkjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="52362623"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="52362623"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 15:15:40 -0700
X-CSE-ConnectionGUID: Ruaq4WD7QpO7OAySOOtaQg==
X-CSE-MsgGUID: q6S2r7LhREKeFYLawR6tmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="163106621"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 20 May 2025 15:15:39 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uHVFJ-000Ncc-1t
 for intel-wired-lan@lists.osuosl.org; Tue, 20 May 2025 22:15:37 +0000
Date: Wed, 21 May 2025 06:15:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505210610.5lfEcYt8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747779341; x=1779315341;
 h=date:from:to:subject:message-id;
 bh=12142g9lEC0C6ryZwoKUcVM+zZeXxka/l6oZ5vgUblE=;
 b=NnTL36h65VfkxWhp/N8lph+D/Mil5bd1Y49OkV5qOyokgXHvRolyNFva
 x244gL3pw/1o4UQE7PY6WFvyFTXA6BAjLYpbFxfjd/qe3z4SaCcObqKeB
 hpvQcqgDeWMJDsD4uAAKHEjvNWvfzgrn9lpGrQhRjgiybvFWSzxgXCeIK
 V/rhrXtx80AYuRDatTjvCHSNQxwjIx5vyCTXRheECOjxIcPdoVtvMRieI
 YYcYt0x7pHe1OUon2NYxnT9kwu4VXCBmGf4RPq5pE/HIF/0i5R4/i9u5m
 kCognEjF+D4eOPK+YK+V1macRRndkYkLaIXSTYufMSGUQCdTPPWZKmJlJ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NnTL36h6
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 2dabe349f7882ff1407a784d54d8541909329088
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 2dabe349f7882ff1407a784d54d8541909329088  idpf: fix null-ptr-deref in idpf_features_check

elapsed time: 1459m

configs tested: 326
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-19
alpha                            allyesconfig    gcc-14.2.0
alpha                               defconfig    gcc-14.2.0
arc                              allmodconfig    clang-19
arc                              allmodconfig    gcc-14.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-19
arc                              allyesconfig    gcc-14.2.0
arc                          axs101_defconfig    gcc-14.2.0
arc                                 defconfig    gcc-14.2.0
arc                   randconfig-001-20250520    gcc-11.5.0
arc                   randconfig-001-20250520    gcc-8.5.0
arc                   randconfig-001-20250521    clang-21
arc                   randconfig-002-20250520    gcc-14.2.0
arc                   randconfig-002-20250520    gcc-8.5.0
arc                   randconfig-002-20250521    clang-21
arm                              allmodconfig    clang-19
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    clang-21
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-19
arm                              allyesconfig    gcc-14.2.0
arm                        clps711x_defconfig    clang-21
arm                                 defconfig    gcc-14.2.0
arm                          gemini_defconfig    clang-21
arm                            hisi_defconfig    gcc-14.2.0
arm                       multi_v4t_defconfig    gcc-14.2.0
arm                        mvebu_v5_defconfig    gcc-14.2.0
arm                        mvebu_v7_defconfig    gcc-14.2.0
arm                        neponset_defconfig    gcc-14.2.0
arm                   randconfig-001-20250520    gcc-6.5.0
arm                   randconfig-001-20250520    gcc-8.5.0
arm                   randconfig-001-20250521    clang-21
arm                   randconfig-002-20250520    gcc-10.5.0
arm                   randconfig-002-20250520    gcc-8.5.0
arm                   randconfig-002-20250521    clang-21
arm                   randconfig-003-20250520    clang-19
arm                   randconfig-003-20250520    gcc-8.5.0
arm                   randconfig-003-20250521    clang-21
arm                   randconfig-004-20250520    gcc-7.5.0
arm                   randconfig-004-20250520    gcc-8.5.0
arm                   randconfig-004-20250521    clang-21
arm                         s5pv210_defconfig    gcc-14.2.0
arm                           stm32_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-14.2.0
arm64                               defconfig    gcc-14.2.0
arm64                 randconfig-001-20250520    clang-21
arm64                 randconfig-001-20250520    gcc-8.5.0
arm64                 randconfig-001-20250521    clang-21
arm64                 randconfig-002-20250520    gcc-8.5.0
arm64                 randconfig-002-20250520    gcc-9.5.0
arm64                 randconfig-002-20250521    clang-21
arm64                 randconfig-003-20250520    clang-18
arm64                 randconfig-003-20250520    gcc-8.5.0
arm64                 randconfig-003-20250521    clang-21
arm64                 randconfig-004-20250520    gcc-8.5.0
arm64                 randconfig-004-20250520    gcc-9.5.0
arm64                 randconfig-004-20250521    clang-21
csky                              allnoconfig    gcc-14.2.0
csky                                defconfig    gcc-14.2.0
csky                  randconfig-001-20250520    gcc-14.2.0
csky                  randconfig-001-20250520    gcc-9.3.0
csky                  randconfig-001-20250521    gcc-14.2.0
csky                  randconfig-002-20250520    gcc-9.3.0
csky                  randconfig-002-20250521    gcc-14.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    clang-19
hexagon                           allnoconfig    clang-21
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-19
hexagon                          allyesconfig    clang-21
hexagon                             defconfig    gcc-14.2.0
hexagon               randconfig-001-20250520    clang-21
hexagon               randconfig-001-20250520    gcc-9.3.0
hexagon               randconfig-001-20250521    gcc-14.2.0
hexagon               randconfig-002-20250520    clang-21
hexagon               randconfig-002-20250520    gcc-9.3.0
hexagon               randconfig-002-20250521    gcc-14.2.0
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-20
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250520    gcc-12
i386        buildonly-randconfig-001-20250521    clang-20
i386        buildonly-randconfig-002-20250520    gcc-12
i386        buildonly-randconfig-002-20250521    clang-20
i386        buildonly-randconfig-003-20250520    clang-20
i386        buildonly-randconfig-003-20250520    gcc-12
i386        buildonly-randconfig-003-20250521    clang-20
i386        buildonly-randconfig-004-20250520    gcc-12
i386        buildonly-randconfig-004-20250521    clang-20
i386        buildonly-randconfig-005-20250520    clang-20
i386        buildonly-randconfig-005-20250520    gcc-12
i386        buildonly-randconfig-005-20250521    clang-20
i386        buildonly-randconfig-006-20250520    gcc-12
i386        buildonly-randconfig-006-20250521    clang-20
i386                                defconfig    clang-20
i386                  randconfig-001-20250520    gcc-12
i386                  randconfig-001-20250521    clang-20
i386                  randconfig-002-20250520    gcc-12
i386                  randconfig-002-20250521    clang-20
i386                  randconfig-003-20250520    gcc-12
i386                  randconfig-003-20250521    clang-20
i386                  randconfig-004-20250520    gcc-12
i386                  randconfig-004-20250521    clang-20
i386                  randconfig-005-20250520    gcc-12
i386                  randconfig-005-20250521    clang-20
i386                  randconfig-006-20250520    gcc-12
i386                  randconfig-006-20250521    clang-20
i386                  randconfig-007-20250520    gcc-12
i386                  randconfig-007-20250521    clang-20
i386                  randconfig-011-20250520    gcc-12
i386                  randconfig-011-20250521    gcc-12
i386                  randconfig-012-20250520    gcc-12
i386                  randconfig-012-20250521    gcc-12
i386                  randconfig-013-20250520    gcc-12
i386                  randconfig-013-20250521    gcc-12
i386                  randconfig-014-20250520    gcc-12
i386                  randconfig-014-20250521    gcc-12
i386                  randconfig-015-20250520    gcc-12
i386                  randconfig-015-20250521    gcc-12
i386                  randconfig-016-20250520    gcc-12
i386                  randconfig-016-20250521    gcc-12
i386                  randconfig-017-20250520    gcc-12
i386                  randconfig-017-20250521    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch                           defconfig    gcc-14.2.0
loongarch             randconfig-001-20250520    gcc-14.2.0
loongarch             randconfig-001-20250520    gcc-9.3.0
loongarch             randconfig-001-20250521    gcc-14.2.0
loongarch             randconfig-002-20250520    gcc-14.2.0
loongarch             randconfig-002-20250520    gcc-9.3.0
loongarch             randconfig-002-20250521    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                                defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
microblaze                          defconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                         db1xxx_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                               defconfig    gcc-14.2.0
nios2                 randconfig-001-20250520    gcc-9.3.0
nios2                 randconfig-001-20250521    gcc-14.2.0
nios2                 randconfig-002-20250520    gcc-13.3.0
nios2                 randconfig-002-20250520    gcc-9.3.0
nios2                 randconfig-002-20250521    gcc-14.2.0
openrisc                          allnoconfig    clang-21
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    clang-21
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                              defconfig    gcc-12
parisc                randconfig-001-20250520    gcc-10.5.0
parisc                randconfig-001-20250520    gcc-9.3.0
parisc                randconfig-001-20250521    gcc-14.2.0
parisc                randconfig-002-20250520    gcc-14.2.0
parisc                randconfig-002-20250520    gcc-9.3.0
parisc                randconfig-002-20250521    gcc-14.2.0
parisc64                            defconfig    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    clang-21
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-21
powerpc                          allyesconfig    gcc-14.2.0
powerpc                      chrp32_defconfig    gcc-14.2.0
powerpc                       ebony_defconfig    clang-21
powerpc                        icon_defconfig    gcc-14.2.0
powerpc                      katmai_defconfig    clang-21
powerpc                      katmai_defconfig    gcc-14.2.0
powerpc                   motionpro_defconfig    gcc-14.2.0
powerpc                 mpc8313_rdb_defconfig    clang-21
powerpc                 mpc8313_rdb_defconfig    gcc-14.2.0
powerpc                     mpc83xx_defconfig    clang-21
powerpc                     ppa8548_defconfig    gcc-14.2.0
powerpc                     rainier_defconfig    gcc-14.2.0
powerpc               randconfig-001-20250520    gcc-5.5.0
powerpc               randconfig-001-20250520    gcc-9.3.0
powerpc               randconfig-001-20250521    gcc-14.2.0
powerpc               randconfig-002-20250520    clang-17
powerpc               randconfig-002-20250520    gcc-9.3.0
powerpc               randconfig-002-20250521    gcc-14.2.0
powerpc               randconfig-003-20250520    gcc-7.5.0
powerpc               randconfig-003-20250520    gcc-9.3.0
powerpc               randconfig-003-20250521    gcc-14.2.0
powerpc                     redwood_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20250520    clang-21
powerpc64             randconfig-001-20250520    gcc-9.3.0
powerpc64             randconfig-001-20250521    gcc-14.2.0
powerpc64             randconfig-002-20250520    gcc-7.5.0
powerpc64             randconfig-002-20250520    gcc-9.3.0
powerpc64             randconfig-002-20250521    gcc-14.2.0
powerpc64             randconfig-003-20250520    gcc-5.5.0
powerpc64             randconfig-003-20250521    gcc-14.2.0
riscv                            alldefconfig    gcc-14.2.0
riscv                            allmodconfig    clang-21
riscv                            allmodconfig    gcc-14.2.0
riscv                             allnoconfig    clang-21
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-16
riscv                            allyesconfig    gcc-14.2.0
riscv                               defconfig    gcc-12
riscv                               defconfig    gcc-14.2.0
riscv                 randconfig-001-20250520    gcc-12.4.0
riscv                 randconfig-001-20250520    gcc-9.3.0
riscv                 randconfig-002-20250520    clang-21
riscv                 randconfig-002-20250520    gcc-12.4.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-14.2.0
s390                          debug_defconfig    gcc-14.2.0
s390                                defconfig    gcc-12
s390                  randconfig-001-20250520    clang-21
s390                  randconfig-001-20250520    gcc-12.4.0
s390                  randconfig-002-20250520    clang-21
s390                  randconfig-002-20250520    gcc-12.4.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                         apsh4a3a_defconfig    gcc-14.2.0
sh                                  defconfig    gcc-12
sh                        dreamcast_defconfig    gcc-14.2.0
sh                         ecovec24_defconfig    gcc-14.2.0
sh                             espt_defconfig    gcc-14.2.0
sh                     magicpanelr2_defconfig    gcc-14.2.0
sh                    randconfig-001-20250520    gcc-12.4.0
sh                    randconfig-001-20250520    gcc-9.3.0
sh                    randconfig-002-20250520    gcc-12.4.0
sh                    randconfig-002-20250520    gcc-9.3.0
sh                          rsk7201_defconfig    clang-21
sh                        sh7763rdp_defconfig    gcc-14.2.0
sh                          urquell_defconfig    gcc-14.2.0
sparc                            alldefconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250520    gcc-12.4.0
sparc                 randconfig-001-20250520    gcc-8.5.0
sparc                 randconfig-002-20250520    gcc-12.4.0
sparc64                             defconfig    gcc-12
sparc64               randconfig-001-20250520    gcc-12.4.0
sparc64               randconfig-001-20250520    gcc-8.5.0
sparc64               randconfig-002-20250520    gcc-12.4.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    clang-19
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250520    clang-21
um                    randconfig-001-20250520    gcc-12.4.0
um                    randconfig-002-20250520    clang-21
um                    randconfig-002-20250520    gcc-12.4.0
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250520    gcc-12
x86_64      buildonly-randconfig-001-20250521    clang-20
x86_64      buildonly-randconfig-002-20250520    gcc-12
x86_64      buildonly-randconfig-002-20250521    clang-20
x86_64      buildonly-randconfig-003-20250520    gcc-12
x86_64      buildonly-randconfig-003-20250521    clang-20
x86_64      buildonly-randconfig-004-20250520    gcc-12
x86_64      buildonly-randconfig-004-20250521    clang-20
x86_64      buildonly-randconfig-005-20250520    gcc-12
x86_64      buildonly-randconfig-005-20250521    clang-20
x86_64      buildonly-randconfig-006-20250520    gcc-12
x86_64      buildonly-randconfig-006-20250521    clang-20
x86_64                              defconfig    clang-20
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20250520    gcc-12
x86_64                randconfig-001-20250521    gcc-12
x86_64                randconfig-002-20250520    gcc-12
x86_64                randconfig-002-20250521    gcc-12
x86_64                randconfig-003-20250520    gcc-12
x86_64                randconfig-003-20250521    gcc-12
x86_64                randconfig-004-20250520    gcc-12
x86_64                randconfig-004-20250521    gcc-12
x86_64                randconfig-005-20250520    gcc-12
x86_64                randconfig-005-20250521    gcc-12
x86_64                randconfig-006-20250520    gcc-12
x86_64                randconfig-006-20250521    gcc-12
x86_64                randconfig-007-20250520    gcc-12
x86_64                randconfig-007-20250521    gcc-12
x86_64                randconfig-008-20250520    gcc-12
x86_64                randconfig-008-20250521    gcc-12
x86_64                randconfig-071-20250520    gcc-12
x86_64                randconfig-071-20250521    clang-20
x86_64                randconfig-072-20250520    gcc-12
x86_64                randconfig-072-20250521    clang-20
x86_64                randconfig-073-20250520    gcc-12
x86_64                randconfig-073-20250521    clang-20
x86_64                randconfig-074-20250520    gcc-12
x86_64                randconfig-074-20250521    clang-20
x86_64                randconfig-075-20250520    gcc-12
x86_64                randconfig-075-20250521    clang-20
x86_64                randconfig-076-20250520    gcc-12
x86_64                randconfig-076-20250521    clang-20
x86_64                randconfig-077-20250520    gcc-12
x86_64                randconfig-077-20250521    clang-20
x86_64                randconfig-078-20250520    gcc-12
x86_64                randconfig-078-20250521    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-12
x86_64                         rhel-9.4-kunit    gcc-12
x86_64                           rhel-9.4-ltp    gcc-12
x86_64                          rhel-9.4-rust    clang-18
x86_64                          rhel-9.4-rust    clang-20
xtensa                           alldefconfig    gcc-14.2.0
xtensa                            allnoconfig    gcc-14.2.0
xtensa                       common_defconfig    gcc-14.2.0
xtensa                randconfig-001-20250520    gcc-12.4.0
xtensa                randconfig-001-20250520    gcc-6.5.0
xtensa                randconfig-002-20250520    gcc-12.4.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
