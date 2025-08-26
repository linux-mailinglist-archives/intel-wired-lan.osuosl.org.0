Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAB1B37143
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 19:22:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE5776069C;
	Tue, 26 Aug 2025 17:22:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qHXRzKtYLAs8; Tue, 26 Aug 2025 17:22:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A3C48606A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756228957;
	bh=JxfcI2x/y6xANpBww940K38VkFAqOyscaEi5Vr+kpdM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Nyck8H3i5snU0nwoJp6fGvhrKx76zujTveF9GgKc2bpK+4SS99otVFlkuwL3ytmy5
	 tkpc45ydqatzrv1m/57HEvsyDKA8rhDPPbaPXRdRnM+qa2I66Y/g2MwpXgEon90ZBA
	 lamZO92aBuXDM0/3Gw33XydR9zWXDKtWinPLtO6yIBQHw19O6dJoNmVRedx+2mh3EH
	 1Gh+JMrFeaKYk0uMlSK4edl8kfjJaOSXHLARlRYbBLqmG10aSKflI+FFjus6KbYxW+
	 QdIQILpe0lvRvxDQx8MkBNyJB4SELUDjiQf+E9/jYSnLm1yAKA2nkBE/SPeRjQ6llh
	 Czd9CE/NTGJkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3C48606A5;
	Tue, 26 Aug 2025 17:22:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 18BDCB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 17:22:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0A6DF4062C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 17:22:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id brG-1IGTmABb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 17:22:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1D62A40638
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D62A40638
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D62A40638
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 17:22:34 +0000 (UTC)
X-CSE-ConnectionGUID: xFLufkBbQ8GWCZV17GSBWg==
X-CSE-MsgGUID: cMbWd6VZQXy3WmpWpw91cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58416520"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58416520"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 10:22:34 -0700
X-CSE-ConnectionGUID: Rgg65PDWTDOsXk/0wAU70w==
X-CSE-MsgGUID: SSGM+5GwTt+iH2q+mU1bGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169561916"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 26 Aug 2025 10:22:33 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uqxNO-000SG1-01
 for intel-wired-lan@lists.osuosl.org; Tue, 26 Aug 2025 17:22:30 +0000
Date: Wed, 27 Aug 2025 01:21:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508270120.v5r99fIb-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756228955; x=1787764955;
 h=date:from:to:subject:message-id;
 bh=1ehb36cEetjY4JmUwsGdBSLC+MxeVfW3R4CHA9w0ZGc=;
 b=l1l4LwiQFMfHSAYYZYYn7G3YABKrse9G7llzlUOTajpsXFQPJRqtQg43
 02u5jBq3kCN5jDL6RyS/uP6LWFmiCoEMlnm//9Ljd/6j2P8e3V5wvVLUG
 IfQaX9AsV7WaGKk6ZLzPGRPM8j9a6ytBWy/7387sDgn7kAjn8GZOKnCss
 f0fN2UiHfewsml4MUa/1AtoGlER57JkZEdDVVOf3mHg5u71E+mJvUywJa
 CWj7AcfS0Y5ajuFja/a8rSqCRQ81fZzs7ElV1iPFqWRo+XLE0480ZRV02
 FZiR1X2Dvny+64gsWkEPQtrVRdsvyibJ2BtiWVpYHjR1b1kb5QHBZJsX8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l1l4LwiQ
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 ed913b343dcf9f623e7436fa1a153c89b22d109b
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
branch HEAD: ed913b343dcf9f623e7436fa1a153c89b22d109b  ixgbe: fix ixgbe_orom_civd_info struct layout

elapsed time: 1362m

configs tested: 130
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
alpha                               defconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                      axs103_smp_defconfig    gcc-15.1.0
arc                                 defconfig    gcc-15.1.0
arc                   randconfig-001-20250826    gcc-11.5.0
arc                   randconfig-002-20250826    gcc-8.5.0
arm                              alldefconfig    gcc-15.1.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                   milbeaut_m10v_defconfig    clang-19
arm                   randconfig-001-20250826    gcc-12.5.0
arm                   randconfig-002-20250826    gcc-13.4.0
arm                   randconfig-003-20250826    gcc-8.5.0
arm                   randconfig-004-20250826    gcc-10.5.0
arm                       versatile_defconfig    gcc-15.1.0
arm                        vexpress_defconfig    gcc-15.1.0
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250826    clang-22
arm64                 randconfig-002-20250826    gcc-8.5.0
arm64                 randconfig-003-20250826    clang-22
arm64                 randconfig-004-20250826    gcc-8.5.0
csky                              allnoconfig    gcc-15.1.0
csky                                defconfig    gcc-15.1.0
csky                  randconfig-001-20250826    gcc-15.1.0
csky                  randconfig-002-20250826    gcc-11.5.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250826    clang-19
hexagon               randconfig-002-20250826    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250826    gcc-12
i386        buildonly-randconfig-002-20250826    gcc-12
i386        buildonly-randconfig-003-20250826    clang-20
i386        buildonly-randconfig-004-20250826    gcc-12
i386        buildonly-randconfig-005-20250826    clang-20
i386        buildonly-randconfig-006-20250826    gcc-12
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250826    gcc-14.3.0
loongarch             randconfig-002-20250826    gcc-14.3.0
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           ip30_defconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250826    gcc-8.5.0
nios2                 randconfig-002-20250826    gcc-10.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250826    gcc-8.5.0
parisc                randconfig-002-20250826    gcc-15.1.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250826    gcc-8.5.0
powerpc               randconfig-002-20250826    clang-22
powerpc               randconfig-003-20250826    gcc-13.4.0
powerpc                      tqm8xx_defconfig    clang-19
powerpc64             randconfig-001-20250826    gcc-10.5.0
powerpc64             randconfig-002-20250826    gcc-11.5.0
powerpc64             randconfig-003-20250826    gcc-14.3.0
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250826    gcc-8.5.0
riscv                 randconfig-002-20250826    gcc-11.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250826    clang-22
s390                  randconfig-002-20250826    clang-18
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250826    gcc-11.5.0
sh                    randconfig-002-20250826    gcc-9.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250826    gcc-13.4.0
sparc                 randconfig-002-20250826    gcc-8.5.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250826    gcc-8.5.0
sparc64               randconfig-002-20250826    clang-22
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250826    gcc-12
um                    randconfig-002-20250826    clang-17
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250826    clang-20
x86_64      buildonly-randconfig-002-20250826    clang-20
x86_64      buildonly-randconfig-003-20250826    gcc-12
x86_64      buildonly-randconfig-004-20250826    clang-20
x86_64      buildonly-randconfig-005-20250826    gcc-12
x86_64      buildonly-randconfig-006-20250826    gcc-12
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250826    gcc-11.5.0
xtensa                randconfig-002-20250826    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
