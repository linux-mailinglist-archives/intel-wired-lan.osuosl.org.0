Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35106AC89B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 May 2025 10:07:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83A3561C45;
	Fri, 30 May 2025 08:07:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GTIL-1ND4l4y; Fri, 30 May 2025 08:07:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9064061C37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748592476;
	bh=j0KDn7ytseDKaAHse6RisGOKzyF0lYhCbiizr5k79zw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VYqzFsLraLvuVXjGeJr0BGFDTtDy3gA8haGOX9EmfZIsNLeBS5ACxwaEnWD3LNkEw
	 nQ8d1m6WX3XHAysdkqfY1jEW368O3ygllPt4KSRMelzLPnYQnm7nP20Y7b+FbwouFU
	 xng7H/zKwov7vbu4ZsEb49CGHAU2fsON/J/NmBmhWc4b59GZ8LtUUm4eV1hN+jFpXk
	 Px1QgjELNFJOeRE+jCuRSG+uK14ZCWwofwRiHODvtywt2/Kzf1YXeBQ4FCMdvhfsC6
	 nzaQF5tUyczmG19rbwZW/XXgJY+31C0yROSVHfxWkSnOX++B/hLiHSyPfVBTDXfyTM
	 w3q+WoWuQmEdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9064061C37;
	Fri, 30 May 2025 08:07:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 77F81234
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 08:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 69B4041C37
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 08:07:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lR9i5fYPfcX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 May 2025 08:07:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6CD8E41C31
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CD8E41C31
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CD8E41C31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 May 2025 08:07:53 +0000 (UTC)
X-CSE-ConnectionGUID: 2Jy41UGNRRan2paVr2PKqQ==
X-CSE-MsgGUID: LZoOs9M1SIG40BCMP1o8/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="50681157"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="50681157"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 01:07:53 -0700
X-CSE-ConnectionGUID: LgtZcvjMQwq1pWcqK4WMxg==
X-CSE-MsgGUID: Ti3MzD2tRNeWdGw/sPJm7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="181027135"
Received: from lkp-server01.sh.intel.com (HELO 1992f890471c) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 30 May 2025 01:07:52 -0700
Received: from kbuild by 1992f890471c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uKumL-000XSS-2w
 for intel-wired-lan@lists.osuosl.org; Fri, 30 May 2025 08:07:49 +0000
Date: Fri, 30 May 2025 16:07:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202505301651.LXfl4TDa-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748592473; x=1780128473;
 h=date:from:to:subject:message-id;
 bh=k4MJe37p95i3Cqf7icWo4uXnMRq0RDg0nq5akD5Be8M=;
 b=Vdlxhe0XZAYUAtYEQ/PtKscgbP5jlCrijXw80DzGFBQUhR4/4B4r/QQb
 pZWOt1i/p896DhKbGDSoe/JF4r80j40ljcOIadVeZWp0kFNgo6nvNshhk
 WlVhOD0UTZqQBbSBNWc7EIAy4uLQuNSTZUpDK0sfxOIOJ02d9hM6LEDIa
 L8mYsW3dHD6ckYboMvak6AtnpIkk0rhgBkD3xfGtX2LSzmxxaz15vCCfq
 pLuUcuKPadlkdtOrQjsMn3POLPfzti7IT9NHX8/FanqoH7zrd4oXq/su2
 +IzNzmEvfsclD4BNwhsS5J7iJHeGG3z81KOOdKsGq7dFuZ//wqwEhDcdY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Vdlxhe0X
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 01b9c401743574e83570bef20de0f833a8ceee62
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
branch HEAD: 01b9c401743574e83570bef20de0f833a8ceee62  idpf: return 0 size for RSS key if not supported

elapsed time: 958m

configs tested: 128
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250530    gcc-15.1.0
arc                   randconfig-002-20250530    gcc-10.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-21
arm                              allyesconfig    gcc-15.1.0
arm                       imx_v6_v7_defconfig    clang-16
arm                   randconfig-001-20250530    gcc-15.1.0
arm                   randconfig-002-20250530    gcc-14.3.0
arm                   randconfig-003-20250530    clang-21
arm                   randconfig-004-20250530    clang-21
arm                           sama5_defconfig    gcc-15.1.0
arm                           sunxi_defconfig    gcc-15.1.0
arm                       versatile_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250530    gcc-12.3.0
arm64                 randconfig-002-20250530    gcc-5.5.0
arm64                 randconfig-003-20250530    gcc-7.5.0
arm64                 randconfig-004-20250530    clang-21
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250530    gcc-15.1.0
csky                  randconfig-002-20250530    gcc-9.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-21
hexagon                          allyesconfig    clang-21
hexagon               randconfig-001-20250530    clang-21
hexagon               randconfig-002-20250530    clang-21
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250530    clang-20
i386        buildonly-randconfig-002-20250530    clang-20
i386        buildonly-randconfig-003-20250530    clang-20
i386        buildonly-randconfig-004-20250530    clang-20
i386        buildonly-randconfig-005-20250530    clang-20
i386        buildonly-randconfig-006-20250530    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    gcc-15.1.0
loongarch                         allnoconfig    gcc-15.1.0
loongarch             randconfig-001-20250530    gcc-15.1.0
loongarch             randconfig-002-20250530    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5307c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                          ath25_defconfig    clang-21
mips                  cavium_octeon_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250530    gcc-5.5.0
nios2                 randconfig-002-20250530    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           alldefconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250530    gcc-12.4.0
parisc                randconfig-002-20250530    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-21
powerpc                   bluestone_defconfig    clang-21
powerpc               randconfig-001-20250530    gcc-14.3.0
powerpc               randconfig-002-20250530    clang-21
powerpc               randconfig-003-20250530    gcc-8.5.0
powerpc                    sam440ep_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250530    gcc-14.3.0
powerpc64             randconfig-002-20250530    clang-21
powerpc64             randconfig-003-20250530    gcc-15.1.0
riscv                            allmodconfig    clang-21
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-21
riscv                 randconfig-001-20250530    gcc-15.1.0
riscv                 randconfig-002-20250530    gcc-10.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-21
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-21
s390                  randconfig-001-20250530    clang-20
s390                  randconfig-002-20250530    clang-21
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                 kfr2r09-romimage_defconfig    gcc-15.1.0
sh                    randconfig-001-20250530    gcc-14.3.0
sh                    randconfig-002-20250530    gcc-15.1.0
sh                           se7751_defconfig    gcc-15.1.0
sh                  sh7785lcr_32bit_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250530    gcc-8.5.0
sparc                 randconfig-002-20250530    gcc-10.3.0
sparc64                             defconfig    gcc-15.1.0
sparc64               randconfig-001-20250530    gcc-8.5.0
sparc64               randconfig-002-20250530    gcc-15.1.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-21
um                               allyesconfig    gcc-12
um                                  defconfig    clang-21
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250530    gcc-11
um                    randconfig-002-20250530    clang-21
um                           x86_64_defconfig    clang-21
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250530    clang-20
x86_64      buildonly-randconfig-002-20250530    clang-20
x86_64      buildonly-randconfig-003-20250530    gcc-12
x86_64      buildonly-randconfig-004-20250530    gcc-11
x86_64      buildonly-randconfig-005-20250530    clang-20
x86_64      buildonly-randconfig-006-20250530    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-18
xtensa                           alldefconfig    gcc-15.1.0
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250530    gcc-15.1.0
xtensa                randconfig-002-20250530    gcc-14.3.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
