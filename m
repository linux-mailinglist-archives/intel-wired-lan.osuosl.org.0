Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A312C991B90
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Oct 2024 02:26:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA07A4037C;
	Sun,  6 Oct 2024 00:26:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yw5oIRGxRi3n; Sun,  6 Oct 2024 00:26:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E03D54040D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728174399;
	bh=1+CfCM65Ew0ogrDnY7ZdiMCaLdSfl4bMPt1qUm7BWOI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J9+G+sogMRcD1BdITMTuSP/mTdboe/gwobzCMJDqtPVQMqs+bBL5dqWfyDWJlz6UW
	 h1snydrgKoTkDpMjMI9cMEg6dqaTRuecuUkgxOiNthx/X2lwQo+F74cQ/YxEKafxla
	 oCDgTsGpxvFSwpCqigltqpIZPt9s5yXnBW77F91XheDnRjQggMQUJDfQLBc5/xRO8u
	 UvzzzhA3czwQ58ar1UmRVkdfLo5E/oJEINtbB5cb4KifgPNTdt2VEhKWqOimFepHTY
	 hR6CRvgXRkyP3TDxyipplqFP/wtw1f/00IR5g0Sv8YdnaBnnYHHou5WSwBTKM9mnHU
	 vx8n+XNLAvpcQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E03D54040D;
	Sun,  6 Oct 2024 00:26:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB6EE1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 00:26:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5A9D40376
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 00:26:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5MGv8doQZwYV for <intel-wired-lan@lists.osuosl.org>;
 Sun,  6 Oct 2024 00:26:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E71240291
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E71240291
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E71240291
 for <intel-wired-lan@lists.osuosl.org>; Sun,  6 Oct 2024 00:26:33 +0000 (UTC)
X-CSE-ConnectionGUID: DaLVe4GwQmeVLgLQr7sdJQ==
X-CSE-MsgGUID: vw96kQ9sT3KmJLX1tNa4+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11216"; a="38749338"
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="38749338"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2024 17:26:33 -0700
X-CSE-ConnectionGUID: rIK+nP8aQ9msiHv5CLdvyg==
X-CSE-MsgGUID: J5PjS/oxTWGhto8ESXKy0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,181,1725346800"; d="scan'208";a="79658035"
Received: from lkp-server01.sh.intel.com (HELO a48cf1aa22e8) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 05 Oct 2024 17:26:32 -0700
Received: from kbuild by a48cf1aa22e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sxF6T-0003U6-1S
 for intel-wired-lan@lists.osuosl.org; Sun, 06 Oct 2024 00:26:29 +0000
Date: Sun, 06 Oct 2024 08:25:41 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202410060833.DHJW1tsK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728174395; x=1759710395;
 h=date:from:to:subject:message-id;
 bh=85DTsn9Vgff1+q209AVmRKWijmvT/0Ak2jLaGDKzSSY=;
 b=I/4vJWiL9vngBY0x9ULt//kBWB3QzqXXJuAZrLQ6D7kFpOGq2T8o0qsX
 iSfMkTXH9e5aEQ81Pv4A9EGteczkEmeSM7izxzf3Rfh9vyOnFpX1MPlrL
 emND4jawAO4U6nF3UN38oIAoWEsfrIdTdE7FBZZwlVCVhUarOElsq5rgG
 ykIKVD3M+RLQGYf6jldsY8T9mhTEIjyy4I/dPtxDomtBKw5Q9OZZ+bhfU
 aiOb7exy+IQBlfNdZeKul/ZRjMC+3dSmGTy2qKq7MLyqS+VjPOrudlFn/
 GwLYJRBnFDZGa/mFXSSQdQYVQ39pk4KvwkJRMNxmoNZHmHVpbNS4dteyI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I/4vJWiL
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 5c2ab978f9c90384198000a032d10382f44c3530
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: 5c2ab978f9c90384198000a032d10382f44c3530  ethtool: rss: fix rss key initialization warning

elapsed time: 1645m

configs tested: 148
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241006    gcc-13.2.0
arc                   randconfig-002-20241006    gcc-13.2.0
arc                           tb10x_defconfig    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                            dove_defconfig    gcc-14.1.0
arm                        neponset_defconfig    gcc-14.1.0
arm                          pxa168_defconfig    clang-20
arm                          pxa910_defconfig    gcc-14.1.0
arm                   randconfig-001-20241006    gcc-14.1.0
arm                   randconfig-002-20241006    clang-14
arm                   randconfig-003-20241006    gcc-14.1.0
arm                   randconfig-004-20241006    gcc-14.1.0
arm                             rpc_defconfig    clang-20
arm                        spear3xx_defconfig    clang-16
arm                           u8500_defconfig    gcc-14.1.0
arm                        vexpress_defconfig    gcc-14.1.0
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20241006    gcc-14.1.0
arm64                 randconfig-002-20241006    gcc-14.1.0
arm64                 randconfig-003-20241006    gcc-14.1.0
arm64                 randconfig-004-20241006    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20241006    gcc-14.1.0
csky                  randconfig-002-20241006    gcc-14.1.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    clang-20
hexagon                          allyesconfig    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20241005    clang-18
i386        buildonly-randconfig-001-20241006    clang-18
i386        buildonly-randconfig-002-20241005    clang-18
i386        buildonly-randconfig-002-20241006    gcc-12
i386        buildonly-randconfig-003-20241005    clang-18
i386        buildonly-randconfig-003-20241006    clang-18
i386        buildonly-randconfig-004-20241005    clang-18
i386        buildonly-randconfig-004-20241006    clang-18
i386        buildonly-randconfig-005-20241005    gcc-12
i386        buildonly-randconfig-005-20241006    gcc-12
i386        buildonly-randconfig-006-20241005    gcc-12
i386        buildonly-randconfig-006-20241006    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20241005    gcc-11
i386                  randconfig-001-20241006    clang-18
i386                  randconfig-002-20241005    clang-18
i386                  randconfig-002-20241006    gcc-12
i386                  randconfig-003-20241005    gcc-12
i386                  randconfig-003-20241006    gcc-12
i386                  randconfig-004-20241005    clang-18
i386                  randconfig-004-20241006    clang-18
i386                  randconfig-005-20241005    clang-18
i386                  randconfig-005-20241006    gcc-12
i386                  randconfig-006-20241005    clang-18
i386                  randconfig-006-20241006    clang-18
i386                  randconfig-011-20241005    gcc-12
i386                  randconfig-011-20241006    clang-18
i386                  randconfig-012-20241005    clang-18
i386                  randconfig-012-20241006    clang-18
i386                  randconfig-013-20241005    clang-18
i386                  randconfig-013-20241006    clang-18
i386                  randconfig-014-20241005    gcc-12
i386                  randconfig-014-20241006    gcc-12
i386                  randconfig-015-20241005    gcc-12
i386                  randconfig-015-20241006    clang-18
i386                  randconfig-016-20241005    gcc-12
i386                  randconfig-016-20241006    gcc-12
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                       allmodconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
microblaze                       allyesconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                       bmips_be_defconfig    gcc-14.1.0
mips                           jazz_defconfig    clang-20
nios2                             allnoconfig    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
openrisc                            defconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                              defconfig    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
riscv                            allyesconfig    clang-20
riscv                               defconfig    clang-20
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                                defconfig    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                                  defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
sparc64                             defconfig    gcc-14.1.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-17
um                               allyesconfig    gcc-12
um                                  defconfig    clang-20
um                             i386_defconfig    gcc-12
um                           x86_64_defconfig    clang-15
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64      buildonly-randconfig-001-20241006    clang-18
x86_64      buildonly-randconfig-002-20241006    gcc-12
x86_64      buildonly-randconfig-003-20241006    gcc-12
x86_64      buildonly-randconfig-004-20241006    clang-18
x86_64      buildonly-randconfig-005-20241006    gcc-12
x86_64      buildonly-randconfig-006-20241006    gcc-12
x86_64                              defconfig    gcc-11
x86_64                                  kexec    clang-18
x86_64                randconfig-001-20241006    clang-18
x86_64                randconfig-002-20241006    gcc-12
x86_64                randconfig-003-20241006    gcc-12
x86_64                randconfig-004-20241006    clang-18
x86_64                randconfig-005-20241006    clang-18
x86_64                randconfig-006-20241006    gcc-12
x86_64                randconfig-011-20241006    gcc-12
x86_64                randconfig-012-20241006    gcc-12
x86_64                randconfig-013-20241006    clang-18
x86_64                randconfig-014-20241006    clang-18
x86_64                randconfig-015-20241006    clang-18
x86_64                randconfig-016-20241006    gcc-12
x86_64                randconfig-071-20241006    clang-18
x86_64                randconfig-072-20241006    gcc-12
x86_64                randconfig-073-20241006    gcc-12
x86_64                randconfig-074-20241006    clang-18
x86_64                randconfig-075-20241006    clang-18
x86_64                randconfig-076-20241006    gcc-12
x86_64                               rhel-8.3    gcc-12
x86_64                    rhel-8.3-kselftests    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
