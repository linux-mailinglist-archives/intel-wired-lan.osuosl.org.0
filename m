Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8508BB8D57
	for <lists+intel-wired-lan@lfdr.de>; Sat, 04 Oct 2025 14:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89AF560AA5;
	Sat,  4 Oct 2025 12:53:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GFR4ZXWPMsQT; Sat,  4 Oct 2025 12:53:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC8AA60AAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759582397;
	bh=PHrIouskCd1V9zqH+W03EzlIq8LvG4KbsC/2sCCd/eQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f2CJdgn9yBc/QoRR82PsVpS6s0ZLeD7ePJFJtJ+UA0d38ZLClGfjFZfGU2t/YGZk2
	 HSTUv3WiX8XpO498YofbtKb1llLGWMbe/HlNGKNgmkYJFSwINPDRPJ33hEBB1p3RnX
	 SId4sIJmuQfPC1vAPBMauHnsNu6jF84j4h4DMeFgxQ4m7Q6MggQV1xvz3na/NMkX6z
	 Inc4LtSUYYLnt8GpInDTZ2pC8WOYRRkYfOKKhtCOTHEQXayP8ds+4luqwg5v1nmGVJ
	 NqvlQOgWzqdIIBIMrXVJikBIOuoTYb3b/aRWa5qIEEyZbjVipXoPqwLiInfGqbJ0y9
	 3EKTcflyDJY0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC8AA60AAC;
	Sat,  4 Oct 2025 12:53:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C9C2226
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 12:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29DA340485
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 12:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XIkAr_rcC88V for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Oct 2025 12:53:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 098C540490
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 098C540490
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 098C540490
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Oct 2025 12:53:14 +0000 (UTC)
X-CSE-ConnectionGUID: ZPdy5k8RR/OjWyBk3s6P+A==
X-CSE-MsgGUID: KtckSsKaQUCb2tGyP6A7cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="61545840"
X-IronPort-AV: E=Sophos;i="6.18,315,1751266800"; d="scan'208";a="61545840"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2025 05:53:14 -0700
X-CSE-ConnectionGUID: 43bfv3YdR/i4hTJeLA51WA==
X-CSE-MsgGUID: Gg99fLYiQ1mx9tRm5eDFjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,315,1751266800"; d="scan'208";a="179422812"
Received: from lkp-server01.sh.intel.com (HELO 2f2a1232a4e4) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 04 Oct 2025 05:53:12 -0700
Received: from kbuild by 2f2a1232a4e4 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1v51l8-0005Gj-1t
 for intel-wired-lan@lists.osuosl.org; Sat, 04 Oct 2025 12:53:10 +0000
Date: Sat, 04 Oct 2025 20:52:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202510042035.IepmAp4Z-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759582395; x=1791118395;
 h=date:from:to:subject:message-id;
 bh=xuaFQ9PNnTl7GItPOBOD+tRqBNhNJZH2P/yBTevPn9w=;
 b=W+JwWAtML0iVk7lxqXrvbOKPf8pxibQAoEis3i2KYvIfTEYq6pRqIviT
 fCAsXfTAq1DETyiF2GG3f/jhLxW5ZyP8VkGG2PMnfIDdZtpI2NEr6hSEE
 6/mIPrn33xbYP/0X+QiYPR+Jryozd5sBf5aWi6yw53IZtxPVkeCSCXJGY
 PyPQZxfUKJIaiwB3peuY5qqgFh0o1DZp3n4oUMTBTw3NJXizpZb1vAcIF
 O0t9yqRs/eowvpWJZq+DaZhrB9s6fWloB2N6Tec+rJHKyyD42ttz7svxa
 pAAzu4GoiuUy3cYKSdiPhwTIPsKP5LToZqLu3haizqM52EXeNcTNmnsIv
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W+JwWAtM
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 1b54b0756f051c11f5a5d0fbc1581e0b9a18e2bc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 1b54b0756f051c11f5a5d0fbc1581e0b9a18e2bc  net: doc: Fix typos in docs

elapsed time: 1085m

configs tested: 154
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20251004    gcc-8.5.0
arc                   randconfig-002-20251004    gcc-10.5.0
arc                        vdk_hs38_defconfig    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                       aspeed_g5_defconfig    gcc-15.1.0
arm                     davinci_all_defconfig    clang-19
arm                          gemini_defconfig    clang-20
arm                            mps2_defconfig    clang-22
arm                   randconfig-001-20251004    gcc-8.5.0
arm                   randconfig-002-20251004    gcc-15.1.0
arm                   randconfig-003-20251004    gcc-12.5.0
arm                   randconfig-004-20251004    gcc-11.5.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251004    clang-20
arm64                 randconfig-002-20251004    gcc-8.5.0
arm64                 randconfig-003-20251004    clang-22
arm64                 randconfig-004-20251004    gcc-15.1.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251004    gcc-15.1.0
csky                  randconfig-002-20251004    gcc-10.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20251004    clang-22
hexagon               randconfig-002-20251004    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20251004    gcc-13
i386        buildonly-randconfig-002-20251004    clang-20
i386        buildonly-randconfig-003-20251004    clang-20
i386        buildonly-randconfig-004-20251004    clang-20
i386        buildonly-randconfig-005-20251004    clang-20
i386        buildonly-randconfig-006-20251004    clang-20
i386                                defconfig    clang-20
i386                  randconfig-011-20251004    gcc-14
i386                  randconfig-012-20251004    gcc-14
i386                  randconfig-013-20251004    gcc-14
i386                  randconfig-014-20251004    gcc-14
i386                  randconfig-015-20251004    gcc-14
i386                  randconfig-016-20251004    gcc-14
i386                  randconfig-017-20251004    gcc-14
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch                 loongson3_defconfig    clang-22
loongarch             randconfig-001-20251004    gcc-15.1.0
loongarch             randconfig-002-20251004    clang-22
m68k                             alldefconfig    gcc-15.1.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5407c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                  cavium_octeon_defconfig    gcc-15.1.0
mips                        qi_lb60_defconfig    clang-22
mips                   sb1250_swarm_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                             allnoconfig    gcc-15.1.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251004    gcc-10.5.0
nios2                 randconfig-002-20251004    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20251004    gcc-8.5.0
parisc                randconfig-002-20251004    gcc-13.4.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc                       ebony_defconfig    clang-22
powerpc                      ep88xc_defconfig    gcc-15.1.0
powerpc                 mpc834x_itx_defconfig    clang-16
powerpc                  mpc866_ads_defconfig    clang-22
powerpc                      pasemi_defconfig    clang-22
powerpc               randconfig-001-20251004    clang-22
powerpc               randconfig-002-20251004    gcc-8.5.0
powerpc               randconfig-003-20251004    clang-22
powerpc64                        alldefconfig    clang-22
powerpc64             randconfig-001-20251004    gcc-14.3.0
powerpc64             randconfig-002-20251004    clang-22
powerpc64             randconfig-003-20251004    clang-22
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20251004    clang-22
riscv                 randconfig-002-20251004    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20251004    gcc-8.5.0
s390                  randconfig-002-20251004    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                        edosk7705_defconfig    gcc-15.1.0
sh                          lboxre2_defconfig    gcc-15.1.0
sh                    randconfig-001-20251004    gcc-15.1.0
sh                    randconfig-002-20251004    gcc-15.1.0
sh                          rsk7201_defconfig    gcc-15.1.0
sh                           se7206_defconfig    gcc-15.1.0
sh                           sh2007_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20251004    gcc-8.5.0
sparc                 randconfig-002-20251004    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251004    gcc-14.3.0
sparc64               randconfig-002-20251004    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-14
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-14
um                    randconfig-001-20251004    clang-18
um                    randconfig-002-20251004    clang-22
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20251004    gcc-14
x86_64      buildonly-randconfig-002-20251004    clang-20
x86_64      buildonly-randconfig-003-20251004    clang-20
x86_64      buildonly-randconfig-004-20251004    clang-20
x86_64      buildonly-randconfig-005-20251004    gcc-14
x86_64      buildonly-randconfig-006-20251004    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                               rhel-9.4    clang-20
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20251004    gcc-13.4.0
xtensa                randconfig-002-20251004    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
