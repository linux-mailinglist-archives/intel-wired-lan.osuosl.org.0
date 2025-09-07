Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0629AB4799A
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 10:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC11C42015;
	Sun,  7 Sep 2025 08:29:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3hhpzQ0n-U7J; Sun,  7 Sep 2025 08:29:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B9D041FAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757233776;
	bh=fzgfekUABxtCSkmQwwkOe2knL6acSDV9OCx15hKYrRs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zhopvm9Q1HVw0ktencOM43O5YHcImOYLsYAX+RCh7mjh/dazd3NaaoWtXMwoFtGm0
	 TQgtE7l/TTLOW/wpJfIFTVkYnZg17zbV0AIw7GHZPjslYO6RkaPR0soS7noXyNpo8f
	 J6M7KA2PgMpcA4j/hilHVuslfIFTBEdl6dGhHnpwof9/0W8E0DUpZ65jSB8FDWfSck
	 gfaokPYPyK+t71yArTopjs0OF4sr7fq53QtAox86XVCP8mX3Ta7WBFZZCHlF0mvMTw
	 pubdK0kJDPToZOzwkZTwe3jMjgavt/EsCQrFnxE/x6SgL0aux8FkWRm39+i9Aimq3H
	 ds1FEvP2KLM/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B9D041FAB;
	Sun,  7 Sep 2025 08:29:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 387DE273
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 08:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1A32741F78
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 08:29:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fB9037KR3v0d for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 08:29:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 28C6841F77
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28C6841F77
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28C6841F77
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 08:29:33 +0000 (UTC)
X-CSE-ConnectionGUID: Ppy/I++mQfOqQhZxUkPpkg==
X-CSE-MsgGUID: 2xz0ZFVgSq+I02GxhYC8aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11545"; a="70946882"
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="70946882"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2025 01:29:33 -0700
X-CSE-ConnectionGUID: GCrjnHrbTsaISQWtPjDsWQ==
X-CSE-MsgGUID: BwD0x8iOS8O7b+N5Olq9+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,246,1751266800"; d="scan'208";a="171711431"
Received: from lkp-server01.sh.intel.com (HELO 114d98da2b6c) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 07 Sep 2025 01:29:32 -0700
Received: from kbuild by 114d98da2b6c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1uvAm9-00028T-12
 for intel-wired-lan@lists.osuosl.org; Sun, 07 Sep 2025 08:29:29 +0000
Date: Sun, 07 Sep 2025 16:28:32 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202509071626.OX7KnPa5-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757233774; x=1788769774;
 h=date:from:to:subject:message-id;
 bh=0CAr8Gn03Axbb/15EPDn6Wb3f7vK2M1/f3aoIsBa8iQ=;
 b=AWoQCxgus31q+3XILOqLygb762iIy2+2d0lwq+9JJYENXk8eU+HM9Oos
 TWqTI+UsMfXbZ3y3cYZMPHpz84C1RAxEjca5cG5ke7E1fYYbQUF+XcoN0
 2xS2SgITw0AxolLlx0q5lWSQvSvAI3ao/5IiIvlWMSMBFc8Sb5tgbi1/5
 Cy3QjA0Zw4JAKEfAP1BwvVIBQggjY8kew5iGvvaGq7UTVsSbRMcC6l2lX
 SC1LfnZjWt+TZLfBhpUPqMAgDPdv0FeOnY9pf3mgqOSyh6jt7oE22WPLF
 gZxEgVXQ6WbAbBLRTzeqMjodrw+68CLrq0/rG6ocd4OMeqiB/ShiFMDhj
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AWoQCxgu
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 52c42b1f8fa50cfb1631bb1762b170d825686281
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
branch HEAD: 52c42b1f8fa50cfb1631bb1762b170d825686281  ixgbe: fwlog support for e610

elapsed time: 2053m

configs tested: 97
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                   randconfig-001-20250906    gcc-14.3.0
arc                   randconfig-002-20250906    gcc-10.5.0
arm                               allnoconfig    clang-22
arm                   randconfig-001-20250906    clang-22
arm                   randconfig-002-20250906    clang-22
arm                   randconfig-003-20250906    gcc-13.4.0
arm                   randconfig-004-20250906    gcc-10.5.0
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250906    gcc-8.5.0
arm64                 randconfig-002-20250906    gcc-12.5.0
arm64                 randconfig-003-20250906    clang-22
arm64                 randconfig-004-20250906    gcc-9.5.0
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250906    gcc-15.1.0
csky                  randconfig-002-20250906    gcc-15.1.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250906    clang-20
hexagon               randconfig-002-20250906    clang-22
i386                             allmodconfig    gcc-13
i386                              allnoconfig    gcc-13
i386                             allyesconfig    gcc-13
i386        buildonly-randconfig-001-20250906    clang-20
i386        buildonly-randconfig-002-20250906    gcc-11
i386        buildonly-randconfig-003-20250906    gcc-13
i386        buildonly-randconfig-004-20250906    gcc-13
i386        buildonly-randconfig-005-20250906    clang-20
i386        buildonly-randconfig-006-20250906    clang-20
i386                                defconfig    clang-20
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250906    clang-22
loongarch             randconfig-002-20250906    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
mips                           gcw0_defconfig    clang-22
mips                           jazz_defconfig    clang-17
nios2                             allnoconfig    gcc-11.5.0
nios2                 randconfig-001-20250906    gcc-11.5.0
nios2                 randconfig-002-20250906    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                    or1ksim_defconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                randconfig-001-20250906    gcc-11.5.0
parisc                randconfig-002-20250906    gcc-8.5.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                      mgcoge_defconfig    clang-22
powerpc               randconfig-001-20250906    gcc-14.3.0
powerpc               randconfig-002-20250906    clang-20
powerpc               randconfig-003-20250906    clang-22
powerpc                     tqm8548_defconfig    clang-22
powerpc64             randconfig-001-20250906    gcc-13.4.0
powerpc64             randconfig-002-20250906    gcc-10.5.0
powerpc64             randconfig-003-20250906    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                 randconfig-001-20250906    gcc-13.4.0
riscv                 randconfig-002-20250906    gcc-8.5.0
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                  randconfig-001-20250906    gcc-10.5.0
s390                  randconfig-002-20250906    clang-22
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                    randconfig-001-20250906    gcc-15.1.0
sh                    randconfig-002-20250906    gcc-12.5.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                 randconfig-001-20250906    gcc-8.5.0
sparc                 randconfig-002-20250906    gcc-13.4.0
sparc64               randconfig-001-20250906    clang-22
sparc64               randconfig-002-20250906    gcc-14.3.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-13
um                    randconfig-001-20250906    gcc-12
um                    randconfig-002-20250906    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250906    clang-20
x86_64      buildonly-randconfig-002-20250906    gcc-13
x86_64      buildonly-randconfig-003-20250906    gcc-13
x86_64      buildonly-randconfig-004-20250906    clang-20
x86_64      buildonly-randconfig-005-20250906    gcc-13
x86_64      buildonly-randconfig-006-20250906    gcc-13
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                  audio_kc705_defconfig    gcc-15.1.0
xtensa                randconfig-001-20250906    gcc-12.5.0
xtensa                randconfig-002-20250906    gcc-10.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
