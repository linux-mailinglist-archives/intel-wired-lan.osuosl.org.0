Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F355AC373F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 19:06:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA0F1612B6;
	Wed,  5 Nov 2025 18:06:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 818SZ5LuA2NZ; Wed,  5 Nov 2025 18:06:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E927A612AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762365989;
	bh=kM6GgjmGQL7XPnzxXs1UT/jTUxBZTM0oiBsnJau8Dvw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=39V+fZy+CbjyZvTnf6mD3ogrAuWsizl+HtPbbXGZbfaTr47JyLxdmnPP/Mx5GKUF1
	 H4IU3oLo0B1sYupX5k/RQAGiZYx18do2t53DN64iyTDitg4bpzkVLfVPKKH32BZzq5
	 amodSTjmzhfXFWMQbTPIevgwm/4m9DsdUbkEyabkH3KePr7giaxaEBAIEPOFTstBQW
	 IX9RsgHuqz22CKh23vKmA6eUBCexpm9QMhX0HRxjf4nxu9DDirHgVIP8WDB8ewYVNG
	 7T4JyY202WNuqBo1wZ9zb05fmwsJvN5bx+pyB5sSr724RIy9jxf6qQUIME3O+uypjt
	 NHgxBDOoOFcdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E927A612AE;
	Wed,  5 Nov 2025 18:06:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DA134C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 18:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 495EE60F90
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 18:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2U6gJbPXdYPw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 18:06:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5FF5060BDA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF5060BDA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FF5060BDA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 18:06:25 +0000 (UTC)
X-CSE-ConnectionGUID: 4ny1hQkcSMWGU8vU9xT9+w==
X-CSE-MsgGUID: Zngc/JT8ReKTHZODSBifbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64372266"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64372266"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 10:06:24 -0800
X-CSE-ConnectionGUID: cTDgfVW2TI2wzLmmjSmo6A==
X-CSE-MsgGUID: st/obwgySxC/IiYLu5XDXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187973914"
Received: from lkp-server02.sh.intel.com (HELO 66d7546c76b2) ([10.239.97.151])
 by fmviesa009.fm.intel.com with ESMTP; 05 Nov 2025 10:06:24 -0800
Received: from kbuild by 66d7546c76b2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1vGhsW-000Sxm-1l
 for intel-wired-lan@lists.osuosl.org; Wed, 05 Nov 2025 18:05:37 +0000
Date: Thu, 06 Nov 2025 01:56:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202511060120.wK25zMVB-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762365985; x=1793901985;
 h=date:from:to:subject:message-id;
 bh=zgG29qoX1P0zMxIW8LgJlke5hcGXEODGZY4O6YluEZ4=;
 b=RIrD6db4hYI7WXkDtJsPVJU236aWzAzTDXKpei70SIXVhWx9hP19yOE1
 L08/ebSXRWZrA5PFRi6b4AbtJgqHPsrt0ELSO68aub8taYtzZBUz8rlyd
 NjCx61pogw1W/gA6IFoCspxQn0R7lAQzOOFNiyF8AK3T8VdX6v9bHfoLl
 fxFkXelL/JM37MQjha+3su2fGuQxTeaWoN+j2rJsqSgAoggBS5zzXBvcw
 rK3vcECTzppmCOoUQ5con6/tEUgz++Mb3BKoGnxrwxRicpnvBsVsX2YKV
 DaH7VzNdI2xGPyb024LOuUHX7jY4jkkFQan3rmO5LGsMFkGLicbNGyeps
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RIrD6db4
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ca9734e4f7c600661588534e82b3b1b6c6b6ea86
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
branch HEAD: ca9734e4f7c600661588534e82b3b1b6c6b6ea86  iavf: fix off-by-one issues in iavf_config_rss_reg()

elapsed time: 1467m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                          axs103_defconfig    gcc-15.1.0
arc                   randconfig-001-20251105    gcc-8.5.0
arc                   randconfig-002-20251105    gcc-13.4.0
arm                               allnoconfig    clang-22
arm                          gemini_defconfig    clang-20
arm                   randconfig-001-20251105    clang-22
arm                   randconfig-002-20251105    clang-22
arm                   randconfig-003-20251105    clang-22
arm                   randconfig-004-20251105    gcc-12.5.0
arm                         s5pv210_defconfig    gcc-15.1.0
arm                           sama7_defconfig    clang-22
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20251105    clang-17
arm64                 randconfig-002-20251105    gcc-13.4.0
arm64                 randconfig-003-20251105    gcc-8.5.0
arm64                 randconfig-004-20251105    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20251105    gcc-15.1.0
csky                  randconfig-002-20251105    gcc-15.1.0
hexagon                           allnoconfig    clang-22
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
loongarch                         allnoconfig    clang-22
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20251105    clang-18
loongarch             randconfig-002-20251105    clang-20
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                                defconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20251105    gcc-9.5.0
nios2                 randconfig-002-20251105    gcc-8.5.0
openrisc                          allnoconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20251105    gcc-12.5.0
parisc                randconfig-002-20251105    gcc-10.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                     ppa8548_defconfig    gcc-15.1.0
powerpc               randconfig-001-20251105    gcc-14.3.0
powerpc               randconfig-002-20251105    gcc-12.5.0
powerpc64             randconfig-001-20251105    clang-22
powerpc64             randconfig-002-20251105    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20251105    gcc-8.5.0
riscv                 randconfig-002-20251105    clang-18
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20251105    gcc-8.5.0
s390                  randconfig-002-20251105    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20251105    gcc-10.5.0
sh                    randconfig-002-20251105    gcc-11.5.0
sh                          rsk7269_defconfig    gcc-15.1.0
sh                           se7705_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20251105    gcc-12.5.0
sparc                 randconfig-002-20251105    gcc-15.1.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20251105    clang-22
sparc64               randconfig-002-20251105    gcc-10.5.0
um                                allnoconfig    clang-22
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
xtensa                randconfig-001-20251105    gcc-11.5.0
xtensa                randconfig-002-20251105    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
