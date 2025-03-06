Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8453A5549F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 19:17:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6763481138;
	Thu,  6 Mar 2025 18:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N_fP9zP6F_KF; Thu,  6 Mar 2025 18:17:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2462981111
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741285035;
	bh=Bxp/dH/dIruHpxTC7L+vIJpVeBs8HJGxDEwIKQJ6fkk=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VIygExgjWuFW6HjfLwqitXKXsNWSfuWJBrlVUpgkHBDoe/05baKlrSjhrC2UVIqyM
	 2I7NPviefxacPU5RNbo8lp+L2Hi5YZYXeowk9INtPPnTLr8tifpb3GOllry6lTNDem
	 gy/3VhvDvmS3HdpY3iv8nxBct+ejqHFt+ddLGSQSwBHnBVc3mFTNwVtvv4WeHbQ1lD
	 k97i+4IkTlSVXFiXJcfMcMQBU/QKkZPNdU+JsO+xTVgQCHFZyWQvfUCMD8WvMuoGyX
	 Zi8zcLpDptjgv2wlQL+nB7Bbmuj5i5FkaRDighqxsLeK+8F8xoO2l9mV/q8fI5M2ZS
	 rphR0E3sYxKkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2462981111;
	Thu,  6 Mar 2025 18:17:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E65A695F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 18:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D599D61003
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 18:17:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gyqlcZ6NRhnh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 18:17:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C793160FAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C793160FAF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C793160FAF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 18:17:11 +0000 (UTC)
X-CSE-ConnectionGUID: XkasARWuTZmDzSMKDY1e4w==
X-CSE-MsgGUID: AEdvuDC6QdCZi3wPqrFVAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="59721932"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="59721932"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 10:17:11 -0800
X-CSE-ConnectionGUID: aAoVZMBBRPCmpMFwpTCYQg==
X-CSE-MsgGUID: nwdWgE00QR2c7iJfEV+LWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124309846"
Received: from lkp-server02.sh.intel.com (HELO 76cde6cc1f07) ([10.239.97.151])
 by orviesa005.jf.intel.com with ESMTP; 06 Mar 2025 10:17:10 -0800
Received: from kbuild by 76cde6cc1f07 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tqFlJ-000NRY-1e
 for intel-wired-lan@lists.osuosl.org; Thu, 06 Mar 2025 18:16:27 +0000
Date: Fri, 07 Mar 2025 02:13:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202503070212.7SzRoOLZ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741285032; x=1772821032;
 h=date:from:to:subject:message-id;
 bh=EdegggXlfaJDhAh/K2sfrV8lGRf8mQjQvJYI45saEZc=;
 b=boV11VgJXA4OnHoHQxzq1XsUqWM16drxFg/eC22mmkV2xuqIG+dPDRNO
 SA48mNFKbhzCh8bYl/UJcl1Tl364BxWlnx1jukHH1/cGuv//Kh/kGZTz6
 X8xTZvamb9Fi5fEFxJwvUuUAnslhk9AYIzIDAaOEJjVIkYzk/WjSThKsp
 X9c5N6DAtAsof+ur+xreyVRs2Wa2ZcQlS9FTLyYxO0exEbJjjbwDAgcR/
 MuEovRTxspGMwOQFq9QwmSTJH2fzidsJZ/+egxSzQMK/hNRCx23AXVc7c
 6xVvfj5eiotM+Jl7a3CTTr+OjjUYK8q5DtOXXFaT/6J9Ah096D2K46YBg
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=boV11VgJ
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 2a3e89a14864090ee4804fcec655ffc15fabf45c
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
branch HEAD: 2a3e89a14864090ee4804fcec655ffc15fabf45c  ice: register devlink prior to creating health reporters

elapsed time: 1454m

configs tested: 108
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig    gcc-14.2.0
arc                              allmodconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20250306    gcc-13.2.0
arc                   randconfig-002-20250306    gcc-13.2.0
arm                              allmodconfig    gcc-14.2.0
arm                              allyesconfig    gcc-14.2.0
arm                   randconfig-001-20250306    gcc-14.2.0
arm                   randconfig-002-20250306    gcc-14.2.0
arm                   randconfig-003-20250306    gcc-14.2.0
arm                   randconfig-004-20250306    clang-18
arm64                 randconfig-001-20250306    gcc-14.2.0
arm64                 randconfig-002-20250306    gcc-14.2.0
arm64                 randconfig-003-20250306    gcc-14.2.0
arm64                 randconfig-004-20250306    gcc-14.2.0
csky                  randconfig-001-20250306    gcc-14.2.0
csky                  randconfig-002-20250306    gcc-14.2.0
hexagon                          allmodconfig    clang-21
hexagon                          allyesconfig    clang-18
hexagon               randconfig-001-20250306    clang-21
hexagon               randconfig-002-20250306    clang-19
i386        buildonly-randconfig-001-20250306    clang-19
i386        buildonly-randconfig-001-20250307    clang-19
i386        buildonly-randconfig-002-20250306    clang-19
i386        buildonly-randconfig-002-20250307    clang-19
i386        buildonly-randconfig-003-20250306    clang-19
i386        buildonly-randconfig-003-20250307    clang-19
i386        buildonly-randconfig-004-20250306    gcc-12
i386        buildonly-randconfig-004-20250307    clang-19
i386        buildonly-randconfig-005-20250306    gcc-12
i386        buildonly-randconfig-005-20250307    clang-19
i386        buildonly-randconfig-006-20250306    clang-19
i386        buildonly-randconfig-006-20250307    clang-19
i386                  randconfig-011-20250307    gcc-11
i386                  randconfig-012-20250307    gcc-11
i386                  randconfig-013-20250307    gcc-11
i386                  randconfig-014-20250307    gcc-11
i386                  randconfig-015-20250307    gcc-11
i386                  randconfig-016-20250307    gcc-11
i386                  randconfig-017-20250307    gcc-11
loongarch             randconfig-001-20250306    gcc-14.2.0
loongarch             randconfig-002-20250306    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20250306    gcc-14.2.0
nios2                 randconfig-002-20250306    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                randconfig-001-20250306    gcc-14.2.0
parisc                randconfig-002-20250306    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc               randconfig-001-20250306    clang-21
powerpc               randconfig-002-20250306    clang-18
powerpc               randconfig-003-20250306    gcc-14.2.0
powerpc64             randconfig-001-20250306    clang-18
powerpc64             randconfig-002-20250306    clang-21
powerpc64             randconfig-003-20250306    clang-18
riscv                             allnoconfig    gcc-14.2.0
riscv                 randconfig-001-20250306    clang-18
riscv                 randconfig-002-20250306    gcc-14.2.0
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-15
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20250306    gcc-14.2.0
s390                  randconfig-002-20250306    clang-19
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                    randconfig-001-20250306    gcc-14.2.0
sh                    randconfig-002-20250306    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20250306    gcc-14.2.0
sparc                 randconfig-002-20250306    gcc-14.2.0
sparc64               randconfig-001-20250306    gcc-14.2.0
sparc64               randconfig-002-20250306    gcc-14.2.0
um                               allmodconfig    clang-21
um                                allnoconfig    clang-18
um                               allyesconfig    gcc-12
um                    randconfig-001-20250306    gcc-12
um                    randconfig-002-20250306    clang-16
x86_64      buildonly-randconfig-001-20250306    gcc-11
x86_64      buildonly-randconfig-001-20250307    clang-19
x86_64      buildonly-randconfig-002-20250306    clang-19
x86_64      buildonly-randconfig-002-20250307    clang-19
x86_64      buildonly-randconfig-003-20250306    clang-19
x86_64      buildonly-randconfig-003-20250307    clang-19
x86_64      buildonly-randconfig-004-20250306    clang-19
x86_64      buildonly-randconfig-004-20250307    clang-19
x86_64      buildonly-randconfig-005-20250306    clang-19
x86_64      buildonly-randconfig-005-20250307    clang-19
x86_64      buildonly-randconfig-006-20250306    gcc-12
x86_64      buildonly-randconfig-006-20250307    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20250307    clang-19
x86_64                randconfig-002-20250307    clang-19
x86_64                randconfig-003-20250307    clang-19
x86_64                randconfig-004-20250307    clang-19
x86_64                randconfig-005-20250307    clang-19
x86_64                randconfig-006-20250307    clang-19
x86_64                randconfig-007-20250307    clang-19
x86_64                randconfig-008-20250307    clang-19
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20250306    gcc-14.2.0
xtensa                randconfig-002-20250306    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
