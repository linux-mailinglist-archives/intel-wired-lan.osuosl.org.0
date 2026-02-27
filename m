Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APlzGpyBoWkUtgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 12:35:56 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B70941B6A4D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 12:35:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DD8D40A62;
	Fri, 27 Feb 2026 11:35:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WQjv8ZxH-z21; Fri, 27 Feb 2026 11:35:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 25B0740A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772192153;
	bh=Zr0ID+H9qXR9ap4vQLYL8GfxVxreGpaFUB392yCTCj4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=l4IqgOV0kHhxYgsgYui55vpxAxfF72SKWqiIbL/4lRszDW+i/K/DC/hL85dRIQMOI
	 Y3DF69/XH5EI9xYl2lu4dYe4XlWmSX8JMtIbyg6ZewhtqVBlcE1lW6N7+CI0oiexd+
	 ING0UwdZYtnf/ENGHYCoIr+FG4X0w6XR0qmBz1QikijHbjcN3si3U/KnPq7P5IQjds
	 9Fn5CtB6BAylBbycVj5rrWQw8C1tqH5s+W6nda5o5yPu5RYDRsVG5SrVIHL5blx/GE
	 c7iFmk/JhMBL8enhEDoFrbxFWmK7Cavb59M7Uu7lh6nSTD0Q8Pn+I0o5kDkxDvTgXl
	 8FmsOe4jco4bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25B0740A58;
	Fri, 27 Feb 2026 11:35:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C150131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 11:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 53C3081E30
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 11:35:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XAA64EUFGTv6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 11:35:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1BCAA81E2F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BCAA81E2F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1BCAA81E2F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 11:35:48 +0000 (UTC)
X-CSE-ConnectionGUID: wyWrynotReeGnT2/Xw0yqA==
X-CSE-MsgGUID: /uSCGw5FTdKiRgruTLA0Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="72976553"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="72976553"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:35:48 -0800
X-CSE-ConnectionGUID: nwxnJU6XT/eWumMnzZKjLw==
X-CSE-MsgGUID: iS2d8MzdSEqT+Bhv02/Bsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="214308286"
Received: from lkp-server02.sh.intel.com (HELO a3936d6a266d) ([10.239.97.151])
 by fmviesa006.fm.intel.com with ESMTP; 27 Feb 2026 03:35:46 -0800
Received: from kbuild by a3936d6a266d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vvw8G-00000000AWM-2LEO;
 Fri, 27 Feb 2026 11:35:44 +0000
Date: Fri, 27 Feb 2026 19:31:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202602271905.ttqoC9Uf-lkp@intel.com>
User-Agent: s-nail v14.9.25
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772192150; x=1803728150;
 h=date:from:to:subject:message-id;
 bh=vBIQMuhMqQh7SBVYwdfCRrOeKI4AO/nV5FGaRZaMvqs=;
 b=UCD1mnTG5VrIpQQQTpy8yLr+jglBpLG6Kr/KU8bAEvjkJfZTswv6SBt1
 oXpjyHTql3lEpfGwglYhjXau/6c7dABhkjUVwkmx6r9Jgf+8V8H3DNDSm
 /8d0hol/8Ipy5qtGquGZrhuKQL2zKmfn8SUhstPVaft1rAGAYZZExAoJB
 0QKDMkzZGpIc34kxuoEfsX2qMFQQDSVjlFat1BWgdFwp2Jyp5q4dhatlN
 CgRBI7MnW7A8BpdS5tmVGGUjN72IhqFDbuH8gbKLGQ/KXAvbJrv17538k
 +IiYAWTS/QbCEFw52QZzhkhpBpWb4lbLXxqhdP6kmG2IK1seVi39X4mRH
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UCD1mnTG
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 e0857e9320ce0f6c7f74eb6a55ec0e13707ca5ea
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+]
X-Rspamd-Queue-Id: B70941B6A4D
X-Rspamd-Action: no action

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: e0857e9320ce0f6c7f74eb6a55ec0e13707ca5ea  e1000/e1000e: Fix leak in DMA error cleanup

elapsed time: 738m

configs tested: 276
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            alldefconfig    gcc-15.2.0
alpha                             allnoconfig    gcc-15.2.0
alpha                            allyesconfig    gcc-15.2.0
alpha                               defconfig    gcc-15.2.0
arc                              allmodconfig    clang-16
arc                              allmodconfig    gcc-15.2.0
arc                               allnoconfig    gcc-15.2.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-15.2.0
arc                                 defconfig    gcc-15.2.0
arc                     nsimosci_hs_defconfig    gcc-15.2.0
arc                   randconfig-001-20260227    gcc-8.5.0
arc                   randconfig-002-20260227    gcc-8.5.0
arm                               allnoconfig    clang-23
arm                               allnoconfig    gcc-15.2.0
arm                              allyesconfig    clang-16
arm                              allyesconfig    gcc-15.2.0
arm                       aspeed_g5_defconfig    gcc-15.2.0
arm                                 defconfig    gcc-15.2.0
arm                           h3600_defconfig    gcc-15.2.0
arm                          ixp4xx_defconfig    gcc-15.2.0
arm                      jornada720_defconfig    clang-23
arm                        multi_v7_defconfig    gcc-15.2.0
arm                        neponset_defconfig    gcc-15.2.0
arm                   randconfig-001-20260227    gcc-14.3.0
arm                   randconfig-001-20260227    gcc-8.5.0
arm                   randconfig-002-20260227    clang-23
arm                   randconfig-002-20260227    gcc-8.5.0
arm                   randconfig-003-20260227    gcc-15.2.0
arm                   randconfig-003-20260227    gcc-8.5.0
arm                   randconfig-004-20260227    clang-23
arm                   randconfig-004-20260227    gcc-8.5.0
arm                         s3c6400_defconfig    gcc-15.2.0
arm                           sama7_defconfig    gcc-15.2.0
arm                         socfpga_defconfig    gcc-15.2.0
arm                         wpcm450_defconfig    gcc-15.2.0
arm64                            allmodconfig    clang-19
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-15.2.0
arm64                               defconfig    gcc-15.2.0
arm64                 randconfig-001-20260227    clang-23
arm64                 randconfig-002-20260227    clang-23
arm64                 randconfig-002-20260227    gcc-15.2.0
arm64                 randconfig-003-20260227    clang-23
arm64                 randconfig-004-20260227    clang-23
arm64                 randconfig-004-20260227    gcc-8.5.0
csky                             allmodconfig    gcc-15.2.0
csky                              allnoconfig    gcc-15.2.0
csky                                defconfig    gcc-15.2.0
csky                  randconfig-001-20260227    clang-23
csky                  randconfig-001-20260227    gcc-15.2.0
csky                  randconfig-002-20260227    clang-23
csky                  randconfig-002-20260227    gcc-10.5.0
hexagon                          alldefconfig    gcc-15.2.0
hexagon                          allmodconfig    clang-17
hexagon                          allmodconfig    gcc-15.2.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-15.2.0
hexagon                             defconfig    gcc-15.2.0
hexagon               randconfig-001-20260227    clang-23
hexagon               randconfig-002-20260227    clang-23
i386                             allmodconfig    clang-20
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-15.2.0
i386                             allyesconfig    clang-20
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260227    clang-20
i386        buildonly-randconfig-002-20260227    clang-20
i386        buildonly-randconfig-003-20260227    clang-20
i386        buildonly-randconfig-004-20260227    clang-20
i386        buildonly-randconfig-005-20260227    clang-20
i386        buildonly-randconfig-006-20260227    clang-20
i386                                defconfig    gcc-15.2.0
i386                  randconfig-001-20260227    clang-20
i386                  randconfig-002-20260227    clang-20
i386                  randconfig-003-20260227    clang-20
i386                  randconfig-003-20260227    gcc-14
i386                  randconfig-004-20260227    clang-20
i386                  randconfig-004-20260227    gcc-14
i386                  randconfig-005-20260227    clang-20
i386                  randconfig-005-20260227    gcc-12
i386                  randconfig-006-20260227    clang-20
i386                  randconfig-006-20260227    gcc-14
i386                  randconfig-007-20260227    clang-20
i386                  randconfig-011-20260227    clang-20
i386                  randconfig-011-20260227    gcc-14
i386                  randconfig-012-20260227    gcc-14
i386                  randconfig-013-20260227    clang-20
i386                  randconfig-013-20260227    gcc-14
i386                  randconfig-014-20260227    gcc-14
i386                  randconfig-015-20260227    gcc-13
i386                  randconfig-015-20260227    gcc-14
i386                  randconfig-016-20260227    clang-20
i386                  randconfig-016-20260227    gcc-14
i386                  randconfig-017-20260227    gcc-14
loongarch                        alldefconfig    gcc-15.2.0
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-23
loongarch                         allnoconfig    gcc-15.2.0
loongarch                           defconfig    clang-19
loongarch             randconfig-001-20260227    clang-23
loongarch             randconfig-002-20260227    clang-23
m68k                             alldefconfig    gcc-15.2.0
m68k                             allmodconfig    gcc-15.2.0
m68k                              allnoconfig    gcc-15.2.0
m68k                             allyesconfig    clang-16
m68k                             allyesconfig    gcc-15.2.0
m68k                          amiga_defconfig    gcc-15.2.0
m68k                       bvme6000_defconfig    gcc-15.2.0
m68k                                defconfig    clang-19
m68k                          hp300_defconfig    gcc-15.2.0
m68k                        m5272c3_defconfig    gcc-15.2.0
m68k                       m5275evb_defconfig    gcc-15.2.0
microblaze                        allnoconfig    gcc-15.2.0
microblaze                       allyesconfig    gcc-15.2.0
microblaze                          defconfig    clang-19
mips                             allmodconfig    gcc-15.2.0
mips                              allnoconfig    gcc-15.2.0
mips                             allyesconfig    gcc-15.2.0
mips                       bmips_be_defconfig    clang-23
mips                malta_qemu_32r6_defconfig    gcc-15.2.0
mips                          rb532_defconfig    gcc-15.2.0
mips                       rbtx49xx_defconfig    gcc-15.2.0
mips                   sb1250_swarm_defconfig    gcc-15.2.0
nios2                            allmodconfig    clang-23
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-19
nios2                 randconfig-001-20260227    clang-23
nios2                 randconfig-002-20260227    clang-23
openrisc                         allmodconfig    clang-23
openrisc                         allmodconfig    gcc-15.2.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-15.2.0
openrisc                   de0_nano_defconfig    gcc-15.2.0
openrisc                            defconfig    gcc-15.2.0
openrisc                 simple_smp_defconfig    clang-23
openrisc                       virt_defconfig    gcc-15.2.0
parisc                           allmodconfig    gcc-15.2.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-15.2.0
parisc                           allyesconfig    clang-19
parisc                           allyesconfig    gcc-15.2.0
parisc                              defconfig    gcc-15.2.0
parisc                randconfig-001-20260227    clang-17
parisc                randconfig-001-20260227    gcc-8.5.0
parisc                randconfig-002-20260227    clang-17
parisc                randconfig-002-20260227    gcc-8.5.0
parisc64                            defconfig    clang-19
powerpc                    adder875_defconfig    gcc-15.2.0
powerpc                          allmodconfig    gcc-15.2.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-15.2.0
powerpc                 canyonlands_defconfig    gcc-15.2.0
powerpc                        icon_defconfig    gcc-15.2.0
powerpc                  iss476-smp_defconfig    gcc-15.2.0
powerpc                     kmeter1_defconfig    gcc-15.2.0
powerpc                  mpc866_ads_defconfig    clang-23
powerpc                  mpc866_ads_defconfig    gcc-15.2.0
powerpc                      pasemi_defconfig    gcc-15.2.0
powerpc               randconfig-001-20260227    clang-17
powerpc               randconfig-001-20260227    gcc-11.5.0
powerpc               randconfig-002-20260227    clang-17
powerpc                     stx_gp3_defconfig    gcc-15.2.0
powerpc                     taishan_defconfig    gcc-15.2.0
powerpc                     tqm5200_defconfig    gcc-15.2.0
powerpc64             randconfig-001-20260227    clang-17
powerpc64             randconfig-001-20260227    gcc-10.5.0
powerpc64             randconfig-002-20260227    clang-17
powerpc64             randconfig-002-20260227    gcc-14.3.0
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-15.2.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-15.2.0
riscv                 randconfig-001-20260227    gcc-12.5.0
riscv                 randconfig-002-20260227    gcc-12.5.0
s390                             allmodconfig    clang-18
s390                             allmodconfig    clang-19
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-15.2.0
s390                                defconfig    clang-23
s390                                defconfig    gcc-15.2.0
s390                  randconfig-001-20260227    gcc-12.5.0
s390                  randconfig-002-20260227    gcc-12.5.0
sh                               allmodconfig    gcc-15.2.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-15.2.0
sh                               allyesconfig    clang-19
sh                               allyesconfig    gcc-15.2.0
sh                                  defconfig    gcc-14
sh                          kfr2r09_defconfig    gcc-15.2.0
sh                          lboxre2_defconfig    gcc-15.2.0
sh                          r7780mp_defconfig    gcc-15.2.0
sh                    randconfig-001-20260227    gcc-12.5.0
sh                    randconfig-002-20260227    gcc-12.5.0
sh                          sdk7786_defconfig    gcc-15.2.0
sh                           se7343_defconfig    clang-23
sh                           se7750_defconfig    gcc-15.2.0
sh                   secureedge5410_defconfig    gcc-15.2.0
sh                           sh2007_defconfig    clang-23
sh                     sh7710voipgw_defconfig    clang-23
sh                   sh7724_generic_defconfig    clang-23
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-15.2.0
sparc                               defconfig    gcc-15.2.0
sparc                 randconfig-001-20260227    clang-23
sparc                 randconfig-002-20260227    clang-23
sparc64                          allmodconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260227    clang-23
sparc64               randconfig-002-20260227    clang-23
um                               allmodconfig    clang-19
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-15.2.0
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260227    clang-23
um                    randconfig-002-20260227    clang-23
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-20
x86_64                            allnoconfig    clang-20
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20260227    gcc-14
x86_64      buildonly-randconfig-002-20260227    gcc-14
x86_64      buildonly-randconfig-003-20260227    gcc-14
x86_64      buildonly-randconfig-004-20260227    gcc-14
x86_64      buildonly-randconfig-005-20260227    gcc-14
x86_64      buildonly-randconfig-006-20260227    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-20
x86_64                randconfig-001-20260227    clang-20
x86_64                randconfig-001-20260227    gcc-13
x86_64                randconfig-002-20260227    clang-20
x86_64                randconfig-002-20260227    gcc-13
x86_64                randconfig-003-20260227    gcc-13
x86_64                randconfig-003-20260227    gcc-14
x86_64                randconfig-004-20260227    gcc-13
x86_64                randconfig-005-20260227    gcc-13
x86_64                randconfig-005-20260227    gcc-14
x86_64                randconfig-006-20260227    gcc-13
x86_64                randconfig-006-20260227    gcc-14
x86_64                randconfig-011-20260227    gcc-14
x86_64                randconfig-012-20260227    gcc-14
x86_64                randconfig-013-20260227    gcc-14
x86_64                randconfig-014-20260227    gcc-14
x86_64                randconfig-015-20260227    gcc-14
x86_64                randconfig-016-20260227    gcc-14
x86_64                randconfig-071-20260227    gcc-14
x86_64                randconfig-072-20260227    gcc-14
x86_64                randconfig-073-20260227    gcc-14
x86_64                randconfig-074-20260227    gcc-14
x86_64                randconfig-075-20260227    gcc-14
x86_64                randconfig-076-20260227    gcc-14
x86_64                               rhel-9.4    clang-20
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-20
x86_64                    rhel-9.4-kselftests    clang-20
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-15.2.0
xtensa                           allyesconfig    clang-23
xtensa                  audio_kc705_defconfig    gcc-15.2.0
xtensa                  cadence_csp_defconfig    gcc-15.2.0
xtensa                generic_kc705_defconfig    gcc-15.2.0
xtensa                randconfig-001-20260227    clang-23
xtensa                randconfig-002-20260227    clang-23

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
