Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8021B9F969E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 17:32:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C461781AAB;
	Fri, 20 Dec 2024 16:32:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zsJxCP3C2h9U; Fri, 20 Dec 2024 16:32:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 909148194A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734712372;
	bh=Sa7GLFTWwxld+Zuv5SSAXmSC5ytoY2koxNiGPflH2ak=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=tzjAsFCCFooQJJVg8EwaMOlsnNX/e4JRoNx2I9belumHc/TIll6Iz6HU9xbl1uiXb
	 a4oXb0Uoh2X7/2+SclWfKC8e/hZP2q+tXofx915YI01o0JvEcjDaydOUxjcp4ed64N
	 Kfdkv9ZW8ywrNl3KKLGbv+rgkUywRhCsj2mVMHLc8ZJmv6QA/SXSapbkrFOqCtQ5cf
	 NneSoWdYEimjFi7tY+/qap03fxd8g+NhrsFxGG79WTeg3OylrsHiEEA+A4voHnvbc1
	 lUmwWAjuP5O4/MgawJyrryPGKFDppE+Q9zX//nPQe556UD13nhW37x3M3T0+Uj/SUA
	 h96RqXIDMla9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 909148194A;
	Fri, 20 Dec 2024 16:32:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 92A2C730
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 16:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 817FA818A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 16:32:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AzVXDNwjYkiG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 16:32:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E55928143E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E55928143E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E55928143E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 16:32:48 +0000 (UTC)
X-CSE-ConnectionGUID: XNMeKTozRWqPrN28svwrEg==
X-CSE-MsgGUID: C9qWYOPvSjuvAB4Pj6RgNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="39201288"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="39201288"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 08:32:48 -0800
X-CSE-ConnectionGUID: APWTnMFLQhu10PQf946qiA==
X-CSE-MsgGUID: eU+BZaROTKqlQd9DG8VIbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103539458"
Received: from lkp-server01.sh.intel.com (HELO a46f226878e0) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 20 Dec 2024 08:32:46 -0800
Received: from kbuild by a46f226878e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tOfvg-0001Pm-1F
 for intel-wired-lan@lists.osuosl.org; Fri, 20 Dec 2024 16:32:44 +0000
Date: Sat, 21 Dec 2024 00:32:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202412210014.77n2ymJy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734712369; x=1766248369;
 h=date:from:to:subject:message-id;
 bh=Vlgft/e4EJ2a4JpOywYTej9qaGQ3Fwoh8ZwaJNjYdJg=;
 b=msOfno9JSK5EdE6IAWB1sn59f1PoJqLIGdtPhJ/5rKDDnG9Zoai85WNI
 2U9xdQEgeMfUyhYSJwNgKi0Gsd7MPW8OEVwxpCWeP0L0y1D/ENIbNJZXS
 z9HQFLXq1kq0U472MRJvX4I+FUGkG7GQGbuGHWTdcnhgx34Qk5wwWOPza
 oXw90gaEU28Och6ST8NhLMvXBARv4xew0YAkJBDfvFFYI5kMviRqnHrU7
 R1Fw3ooVYuKWHsbBmlBH69+vpGKOkzMKR7RT1i2xym1/CtL8YVqnCapVn
 fmzzmuv5zHJUyECqlXBqy3nD4nVDQcAxbQxugMeppuC6dm6j2PH/GHM1A
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=msOfno9J
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 ce1219c3f76bb131d095e90521506d3c6ccfa086
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: ce1219c3f76bb131d095e90521506d3c6ccfa086  net: mctp: handle skb cleanup on sock_queue failures

elapsed time: 1773m

configs tested: 153
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-14.2.0
alpha                            allyesconfig    clang-20
arc                              allmodconfig    clang-18
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-14.2.0
arc                              allyesconfig    clang-18
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20241220    gcc-13.2.0
arc                   randconfig-002-20241220    gcc-13.2.0
arm                              allmodconfig    clang-18
arm                              allmodconfig    gcc-14.2.0
arm                               allnoconfig    gcc-14.2.0
arm                              allyesconfig    clang-18
arm                              allyesconfig    gcc-14.2.0
arm                          moxart_defconfig    gcc-14.2.0
arm                   randconfig-001-20241220    clang-19
arm                   randconfig-002-20241220    gcc-14.2.0
arm                   randconfig-003-20241220    gcc-14.2.0
arm                   randconfig-004-20241220    clang-20
arm                        spear3xx_defconfig    gcc-14.2.0
arm64                            allmodconfig    clang-18
arm64                             allnoconfig    gcc-14.2.0
arm64                 randconfig-001-20241220    clang-17
arm64                 randconfig-002-20241220    clang-19
arm64                 randconfig-003-20241220    clang-20
arm64                 randconfig-004-20241220    clang-19
csky                              allnoconfig    gcc-14.2.0
csky                  randconfig-001-20241220    gcc-14.2.0
csky                  randconfig-002-20241220    gcc-14.2.0
hexagon                          allmodconfig    clang-20
hexagon                           allnoconfig    gcc-14.2.0
hexagon                          allyesconfig    clang-20
hexagon               randconfig-001-20241220    clang-20
hexagon               randconfig-002-20241220    clang-20
i386                             allmodconfig    clang-19
i386                              allnoconfig    clang-19
i386                             allyesconfig    clang-19
i386        buildonly-randconfig-001-20241220    gcc-12
i386        buildonly-randconfig-002-20241220    gcc-12
i386        buildonly-randconfig-003-20241220    gcc-12
i386        buildonly-randconfig-004-20241220    clang-19
i386        buildonly-randconfig-005-20241220    gcc-12
i386        buildonly-randconfig-006-20241220    gcc-12
i386                                defconfig    clang-19
i386                  randconfig-001-20241220    clang-19
i386                  randconfig-002-20241220    clang-19
i386                  randconfig-003-20241220    clang-19
i386                  randconfig-004-20241220    clang-19
i386                  randconfig-005-20241220    clang-19
i386                  randconfig-006-20241220    clang-19
i386                  randconfig-007-20241220    clang-19
i386                  randconfig-011-20241220    gcc-12
i386                  randconfig-012-20241220    gcc-12
i386                  randconfig-013-20241220    gcc-12
i386                  randconfig-014-20241220    gcc-12
i386                  randconfig-015-20241220    gcc-12
i386                  randconfig-016-20241220    gcc-12
i386                  randconfig-017-20241220    gcc-12
loongarch                        allmodconfig    gcc-14.2.0
loongarch                         allnoconfig    gcc-14.2.0
loongarch             randconfig-001-20241220    gcc-14.2.0
loongarch             randconfig-002-20241220    gcc-14.2.0
m68k                             allmodconfig    gcc-14.2.0
m68k                              allnoconfig    gcc-14.2.0
m68k                             allyesconfig    gcc-14.2.0
m68k                          atari_defconfig    gcc-14.2.0
m68k                       m5249evb_defconfig    gcc-14.2.0
m68k                       m5275evb_defconfig    gcc-14.2.0
m68k                        m5407c3_defconfig    gcc-14.2.0
microblaze                       allmodconfig    gcc-14.2.0
microblaze                        allnoconfig    gcc-14.2.0
microblaze                       allyesconfig    gcc-14.2.0
mips                              allnoconfig    gcc-14.2.0
mips                           gcw0_defconfig    gcc-14.2.0
nios2                             allnoconfig    gcc-14.2.0
nios2                 randconfig-001-20241220    gcc-14.2.0
nios2                 randconfig-002-20241220    gcc-14.2.0
openrisc                          allnoconfig    gcc-14.2.0
openrisc                         allyesconfig    gcc-14.2.0
parisc                           allmodconfig    gcc-14.2.0
parisc                            allnoconfig    gcc-14.2.0
parisc                           allyesconfig    gcc-14.2.0
parisc                randconfig-001-20241220    gcc-14.2.0
parisc                randconfig-002-20241220    gcc-14.2.0
powerpc                          allmodconfig    gcc-14.2.0
powerpc                           allnoconfig    gcc-14.2.0
powerpc                          allyesconfig    clang-16
powerpc                     ep8248e_defconfig    gcc-14.2.0
powerpc                          g5_defconfig    gcc-14.2.0
powerpc               randconfig-001-20241220    clang-15
powerpc               randconfig-002-20241220    gcc-14.2.0
powerpc               randconfig-003-20241220    gcc-14.2.0
powerpc                     tqm8541_defconfig    gcc-14.2.0
powerpc64             randconfig-001-20241220    gcc-14.2.0
powerpc64             randconfig-002-20241220    clang-19
powerpc64             randconfig-003-20241220    gcc-14.2.0
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.2.0
riscv                            allyesconfig    clang-20
riscv                 randconfig-001-20241220    gcc-14.2.0
riscv                 randconfig-002-20241220    clang-19
s390                             allmodconfig    clang-19
s390                             allmodconfig    gcc-14.2.0
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.2.0
s390                  randconfig-001-20241220    gcc-14.2.0
s390                  randconfig-002-20241220    gcc-14.2.0
sh                               allmodconfig    gcc-14.2.0
sh                                allnoconfig    gcc-14.2.0
sh                               allyesconfig    gcc-14.2.0
sh                ecovec24-romimage_defconfig    gcc-14.2.0
sh                    randconfig-001-20241220    gcc-14.2.0
sh                    randconfig-002-20241220    gcc-14.2.0
sh                           se7712_defconfig    gcc-14.2.0
sparc                            allmodconfig    gcc-14.2.0
sparc                             allnoconfig    gcc-14.2.0
sparc                 randconfig-001-20241220    gcc-14.2.0
sparc                 randconfig-002-20241220    gcc-14.2.0
sparc64               randconfig-001-20241220    gcc-14.2.0
sparc64               randconfig-002-20241220    gcc-14.2.0
um                               allmodconfig    clang-20
um                                allnoconfig    clang-18
um                               allyesconfig    clang-20
um                    randconfig-001-20241220    clang-20
um                    randconfig-002-20241220    clang-20
x86_64                           alldefconfig    gcc-14.2.0
x86_64                            allnoconfig    clang-19
x86_64                           allyesconfig    clang-19
x86_64      buildonly-randconfig-001-20241220    clang-19
x86_64      buildonly-randconfig-001-20241220    gcc-12
x86_64      buildonly-randconfig-002-20241220    clang-19
x86_64      buildonly-randconfig-003-20241220    clang-19
x86_64      buildonly-randconfig-003-20241220    gcc-12
x86_64      buildonly-randconfig-004-20241220    clang-19
x86_64      buildonly-randconfig-004-20241220    gcc-12
x86_64      buildonly-randconfig-005-20241220    clang-19
x86_64      buildonly-randconfig-006-20241220    clang-19
x86_64      buildonly-randconfig-006-20241220    gcc-12
x86_64                              defconfig    clang-19
x86_64                                  kexec    clang-19
x86_64                randconfig-001-20241220    gcc-11
x86_64                randconfig-002-20241220    gcc-11
x86_64                randconfig-003-20241220    gcc-11
x86_64                randconfig-004-20241220    gcc-11
x86_64                randconfig-005-20241220    gcc-11
x86_64                randconfig-006-20241220    gcc-11
x86_64                randconfig-007-20241220    gcc-11
x86_64                randconfig-008-20241220    gcc-11
x86_64                               rhel-9.4    clang-19
xtensa                            allnoconfig    gcc-14.2.0
xtensa                randconfig-001-20241220    gcc-14.2.0
xtensa                randconfig-002-20241220    gcc-14.2.0
xtensa                    xip_kc705_defconfig    gcc-14.2.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
