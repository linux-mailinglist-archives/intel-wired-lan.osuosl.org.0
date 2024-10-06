Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4FF991BF3
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 04:06:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56FCB606E7;
	Sun,  6 Oct 2024 02:06:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WofViSgJy8oZ; Sun,  6 Oct 2024 02:06:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1758E606D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728180400;
	bh=uQ/yj2ZwfHN72IhKkE+GxA+QrWIgfJMbooyCLcOLtQo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CfEEKxQp8i51qIiFl8MzjzfoIxNrU8ryoY+4+Rlx3qSOQi+UaXVysVKDpXCvU9g0c
	 28IviL0ebX7r3pTAXfkUbtXqxWeOaSuo/RRrbU122yC3INyBAdAMIXgdQlOfHHN1AR
	 jDK3iuW1Yn0Ak4/+kU3UitEtBRGwpuc6BZGZbxP9DXvmI83v4c2TCONVBHwPl8PXgI
	 hNMjWliLG9EjlVutuLIt+uAsua1Xy4Oo+gtIqTljID9e6ZCWrSStPon8H72GUay9Gm
	 kFygI1OTElkdLykTkuhTRjbQBP/sKW4YbSulV6+/IDDoK58BSDZq7tgLEAwxEeu/op
	 Ni4MWvlWzDqAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1758E606D9;
	Sun,  6 Oct 2024 02:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94A051BF42D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 02:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83CCA80A6D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 02:06:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FnHqHdAMnLxQ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Oct 2024 02:06:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 54E2A80A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 54E2A80A6A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 54E2A80A6A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 02:06:37 +0000 (UTC)
X-CSE-ConnectionGUID: HVU2yKqFTk6dtjSHioYqbA==
X-CSE-MsgGUID: 2/8FHr0lTOqozNAYUlpeqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11216"; a="27506133"
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="27506133"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2024 19:06:37 -0700
X-CSE-ConnectionGUID: MWPoszr3RGevP5sGQPq/XA==
X-CSE-MsgGUID: khC0642cRveKAkM/k0VHng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="105850906"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 05 Oct 2024 19:06:35 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sxGfJ-0003XU-2U
 for intel-wired-lan@lists.osuosl.org; Sun, 06 Oct 2024 02:06:33 +0000
Date: Sun, 06 Oct 2024 10:06:33 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410061025.mSDfjmHO-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728180397; x=1759716397;
 h=date:from:to:subject:message-id;
 bh=yWvbQC0szl1UCL0ydBNf4gSISlmkIF61AMRhUG/7e+0=;
 b=cBsBkY2uYA9SyViFqhaxVxYSKpQlQalh3AUrnYZeFeBaQdosBYIfy/ct
 p1TN6a/p2DVMapWL2pDTanwpFmrsRwc0X/0eY7sQE4zmSSgVPIFOdktk0
 GTwpE5dGge1143559erbpMbIwC/Zg1s0hBBw6T0gxLrfgxIG/13VQFatw
 VKsGPAktXg5tWrtehBKZdLdxejiNHBnyjpjnEmq2bLRcYVrCZhyN1qB5g
 uzVlWx9+O6Ej/DD8bDTLVU7FryMsUWgNMY2OF1XAiZSu29ZgTyWMLiP3B
 vpz2uDYHAa2VNf8jFv5tbLOn8obw+Xn4/woSu5+LuqzA35XzPjm0YLvhZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cBsBkY2u
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 06e9036982bb7a11d7fcc90c2fa214c69b6f31dc
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
branch HEAD: 06e9036982bb7a11d7fcc90c2fa214c69b6f31dc  e1000e: Remove Meteor Lake SMBUS workarounds

elapsed time: 1599m

configs tested: 113
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    clang-20
alpha                            allyesconfig    gcc-13.3.0
alpha                               defconfig    gcc-14.1.0
arc                              allmodconfig    clang-20
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    clang-20
arc                                 defconfig    gcc-14.1.0
arm                              allmodconfig    clang-20
arm                               allnoconfig    clang-20
arm                              allyesconfig    clang-20
arm                       aspeed_g5_defconfig    clang-20
arm                                 defconfig    gcc-14.1.0
arm                            mmp2_defconfig    clang-20
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                               defconfig    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                                defconfig    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
hexagon                             defconfig    gcc-14.1.0
i386                             allmodconfig    clang-18
i386                             allmodconfig    gcc-12
i386                              allnoconfig    clang-18
i386                              allnoconfig    gcc-12
i386                             allyesconfig    clang-18
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241006    clang-18
i386        buildonly-randconfig-002-20241006    clang-18
i386        buildonly-randconfig-003-20241006    clang-18
i386        buildonly-randconfig-004-20241006    clang-18
i386        buildonly-randconfig-005-20241006    clang-18
i386        buildonly-randconfig-006-20241006    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241006    clang-18
i386                  randconfig-002-20241006    clang-18
i386                  randconfig-003-20241006    clang-18
i386                  randconfig-004-20241006    clang-18
i386                  randconfig-005-20241006    clang-18
i386                  randconfig-006-20241006    clang-18
i386                  randconfig-011-20241006    clang-18
i386                  randconfig-012-20241006    clang-18
i386                  randconfig-013-20241006    clang-18
i386                  randconfig-014-20241006    clang-18
i386                  randconfig-015-20241006    clang-18
i386                  randconfig-016-20241006    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch                           defconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
m68k                                defconfig    gcc-14.1.0
m68k                          hp300_defconfig    clang-20
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
microblaze                          defconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                      bmips_stb_defconfig    clang-20
mips                     cu1000-neo_defconfig    clang-20
mips                           jazz_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
nios2                               defconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-12
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-12
parisc64                            defconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                      chrp32_defconfig    clang-20
powerpc                      mgcoge_defconfig    clang-20
powerpc                   motionpro_defconfig    clang-20
powerpc               mpc834x_itxgp_defconfig    clang-20
powerpc                     tqm8548_defconfig    clang-20
powerpc                     tqm8560_defconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                               defconfig    gcc-12
s390                             allmodconfig    gcc-14.1.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    gcc-12
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-12
sh                           se7343_defconfig    clang-20
sh                           se7619_defconfig    clang-20
sh                        sh7763rdp_defconfig    clang-20
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-12
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    clang-20
um                               allyesconfig    gcc-12
um                                  defconfig    gcc-12
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    gcc-12
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                                  kexec    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                  audio_kc705_defconfig    clang-20

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
