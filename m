Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CC293D108
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 12:21:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC4EF408D2;
	Fri, 26 Jul 2024 10:21:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KlD-frOPEvkJ; Fri, 26 Jul 2024 10:21:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9EEA408EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721989312;
	bh=HqZJ8TtKFIMRGDfhQlm4ek6GDTaSvLJRiYBLc3YSucg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=a3ZCSd8VPcJhqYKA1QF5nU6kIPOWPweZ6Qh1n7D3QnRxako7mWESFTE0aE7GYZM2A
	 VEtpLzMs/lerD78IDe6IHIEutUknoeUFFuNbrrurYR97QMc+vggS4h8UeAsOous7Rx
	 271mXa0D1L0hyLYpYlaA9UMUCQrEkFkuVhcLzb6OKSj/1NCVD7/oIH8ENw3oZiVCAF
	 gurCgfVUO+D/fMTYTJFMS3gLMN6vkIjYo1DkMxBe5nyapxRB4ddnDoGjCA4SxJBRoP
	 cs9tljLvTl/G968fkRGo3ZzRlrIVZ9+ydpSkApSrpfYWWQEk++YElLsFOBh+SjoYc2
	 5njXIEOEYv3rA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D9EEA408EB;
	Fri, 26 Jul 2024 10:21:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E82751BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 10:21:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D43FC406E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 10:21:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NEPn2tr31_zq for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 10:21:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2D105406C8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D105406C8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2D105406C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 10:21:47 +0000 (UTC)
X-CSE-ConnectionGUID: OfvJ7CzwS8K4193Oje6tVg==
X-CSE-MsgGUID: pJ7NVQmoRv+IZ26snUKtYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="37291175"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="37291175"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 03:21:47 -0700
X-CSE-ConnectionGUID: qs4w5oWcRf6n8uM7Qd+Klw==
X-CSE-MsgGUID: zkYFNL+5TwOD7geXQsEbmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53451482"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 26 Jul 2024 03:21:46 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sXI52-000oyM-06
 for intel-wired-lan@lists.osuosl.org; Fri, 26 Jul 2024 10:21:44 +0000
Date: Fri, 26 Jul 2024 18:21:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202407261813.EcwUoKCy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721989308; x=1753525308;
 h=date:from:to:subject:message-id;
 bh=Q9elqtlx/omTC+4L0tOwYuj1FX8BGwQsxHDi4c0K7Mc=;
 b=gp4ASfuzoJzngLrEqXWYL0XyNQEJeNU6tbWelk/qyA1eMgetSUNubt5k
 /PjBm+BdqACJH/WEAzYMIHx1MxXcD5YlOwN7nwfQz61ZPforddxJ1VHE+
 QrAPq2NYwK8zy3drSjp9SqgoLgVWsDlza57zYDSn8qZ6yzH1Y1m9RkbJo
 CfEcLR6FoMVSSlLbeVDx/bukyKCOq0RFtFSHj8tH8MQ86k058pfJ+nkZM
 4TepN7Azs1jQIZcH71ydI8mWx1RzbgZPB992/uc1D6yw1iQQRdnIso6vB
 xeYut1tlUzDg4ZOTDcB/flMPxQ4KCfJHKaLHwuTv5pFqpxznEh4lKpdyC
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gp4ASfuz
Subject: [Intel-wired-lan] [tnguy-net-queue:200GbE] BUILD SUCCESS
 af65ea42bd1d28d818b74b9b3b4f8da7ada9f88b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 200GbE
branch HEAD: af65ea42bd1d28d818b74b9b3b4f8da7ada9f88b  Merge branch 'tap-tun-harden-by-dropping-short-frame'

elapsed time: 1132m

configs tested: 218
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.2.0
arc                              alldefconfig   gcc-13.2.0
arc                              allmodconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                              allyesconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                         haps_hs_defconfig   gcc-13.2.0
arc                   randconfig-001-20240726   gcc-13.2.0
arc                   randconfig-002-20240726   gcc-13.2.0
arm                              allmodconfig   gcc-13.2.0
arm                              allmodconfig   gcc-14.1.0
arm                               allnoconfig   clang-20
arm                               allnoconfig   gcc-13.2.0
arm                              allyesconfig   gcc-13.2.0
arm                              allyesconfig   gcc-14.1.0
arm                     am200epdkit_defconfig   gcc-13.2.0
arm                         bcm2835_defconfig   gcc-13.2.0
arm                        clps711x_defconfig   gcc-13.2.0
arm                                 defconfig   gcc-13.2.0
arm                   randconfig-001-20240726   gcc-14.1.0
arm                   randconfig-002-20240726   gcc-14.1.0
arm                   randconfig-003-20240726   clang-20
arm                   randconfig-004-20240726   clang-20
arm                           sama7_defconfig   gcc-13.2.0
arm                           sunxi_defconfig   gcc-13.2.0
arm                       versatile_defconfig   gcc-13.2.0
arm                    vt8500_v6_v7_defconfig   gcc-13.2.0
arm                         wpcm450_defconfig   gcc-13.2.0
arm64                            allmodconfig   clang-20
arm64                            allmodconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240726   clang-15
arm64                 randconfig-002-20240726   gcc-14.1.0
arm64                 randconfig-003-20240726   gcc-14.1.0
arm64                 randconfig-004-20240726   clang-20
csky                              allnoconfig   gcc-13.2.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240726   gcc-14.1.0
csky                  randconfig-002-20240726   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240726   clang-20
hexagon               randconfig-002-20240726   clang-20
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-13
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-13
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240726   gcc-13
i386         buildonly-randconfig-002-20240726   clang-18
i386         buildonly-randconfig-002-20240726   gcc-13
i386         buildonly-randconfig-003-20240726   gcc-13
i386         buildonly-randconfig-004-20240726   clang-18
i386         buildonly-randconfig-004-20240726   gcc-13
i386         buildonly-randconfig-005-20240726   gcc-13
i386         buildonly-randconfig-005-20240726   gcc-7
i386         buildonly-randconfig-006-20240726   clang-18
i386         buildonly-randconfig-006-20240726   gcc-13
i386                                defconfig   clang-18
i386                  randconfig-001-20240726   gcc-13
i386                  randconfig-002-20240726   gcc-13
i386                  randconfig-003-20240726   clang-18
i386                  randconfig-003-20240726   gcc-13
i386                  randconfig-004-20240726   gcc-13
i386                  randconfig-005-20240726   clang-18
i386                  randconfig-005-20240726   gcc-13
i386                  randconfig-006-20240726   clang-18
i386                  randconfig-006-20240726   gcc-13
i386                  randconfig-011-20240726   gcc-13
i386                  randconfig-012-20240726   gcc-13
i386                  randconfig-012-20240726   gcc-8
i386                  randconfig-013-20240726   gcc-10
i386                  randconfig-013-20240726   gcc-13
i386                  randconfig-014-20240726   gcc-13
i386                  randconfig-015-20240726   clang-18
i386                  randconfig-015-20240726   gcc-13
i386                  randconfig-016-20240726   gcc-13
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-13.2.0
loongarch                 loongson3_defconfig   gcc-13.2.0
loongarch             randconfig-001-20240726   gcc-14.1.0
loongarch             randconfig-002-20240726   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                         apollo_defconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
m68k                        m5272c3_defconfig   gcc-13.2.0
m68k                        mvme147_defconfig   gcc-13.2.0
m68k                           sun3_defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-14.1.0
mips                        bcm63xx_defconfig   gcc-13.2.0
mips                      bmips_stb_defconfig   gcc-13.2.0
mips                           ip27_defconfig   gcc-13.2.0
mips                           ip28_defconfig   gcc-13.2.0
nios2                         3c120_defconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240726   gcc-14.1.0
nios2                 randconfig-002-20240726   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
openrisc                  or1klitex_defconfig   gcc-13.2.0
openrisc                       virt_defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240726   gcc-14.1.0
parisc                randconfig-002-20240726   gcc-14.1.0
parisc64                            defconfig   gcc-13.2.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc                          allyesconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                    amigaone_defconfig   gcc-13.2.0
powerpc                      ep88xc_defconfig   gcc-13.2.0
powerpc                    ge_imp3a_defconfig   gcc-13.2.0
powerpc                      katmai_defconfig   gcc-13.2.0
powerpc                 mpc8315_rdb_defconfig   gcc-13.2.0
powerpc               randconfig-001-20240726   clang-20
powerpc               randconfig-002-20240726   gcc-14.1.0
powerpc               randconfig-003-20240726   gcc-14.1.0
powerpc64             randconfig-001-20240726   clang-20
powerpc64             randconfig-002-20240726   clang-20
powerpc64             randconfig-003-20240726   clang-20
riscv                            allmodconfig   clang-20
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   gcc-14.1.0
riscv                            allyesconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-14.1.0
riscv                 randconfig-001-20240726   gcc-14.1.0
riscv                 randconfig-002-20240726   gcc-14.1.0
s390                             allmodconfig   clang-20
s390                              allnoconfig   clang-20
s390                              allnoconfig   gcc-14.1.0
s390                             allyesconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-14.1.0
s390                  randconfig-001-20240726   gcc-14.1.0
s390                  randconfig-002-20240726   clang-16
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-13.2.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                         apsh4a3a_defconfig   gcc-13.2.0
sh                        apsh4ad0a_defconfig   gcc-13.2.0
sh                                  defconfig   gcc-14.1.0
sh                    randconfig-001-20240726   gcc-14.1.0
sh                    randconfig-002-20240726   gcc-14.1.0
sh                          rsk7201_defconfig   gcc-13.2.0
sh                     sh7710voipgw_defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
sparc64               randconfig-001-20240726   gcc-14.1.0
sparc64               randconfig-002-20240726   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                                allnoconfig   gcc-14.1.0
um                               allyesconfig   gcc-13
um                                  defconfig   gcc-14.1.0
um                             i386_defconfig   gcc-14.1.0
um                    randconfig-001-20240726   gcc-7
um                    randconfig-002-20240726   clang-15
um                           x86_64_defconfig   gcc-14.1.0
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240726   gcc-13
x86_64       buildonly-randconfig-002-20240726   gcc-13
x86_64       buildonly-randconfig-003-20240726   gcc-13
x86_64       buildonly-randconfig-004-20240726   gcc-13
x86_64       buildonly-randconfig-005-20240726   gcc-13
x86_64       buildonly-randconfig-006-20240726   gcc-13
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                randconfig-001-20240726   gcc-13
x86_64                randconfig-002-20240726   gcc-13
x86_64                randconfig-003-20240726   gcc-13
x86_64                randconfig-004-20240726   gcc-13
x86_64                randconfig-005-20240726   gcc-13
x86_64                randconfig-006-20240726   gcc-13
x86_64                randconfig-011-20240726   gcc-13
x86_64                randconfig-012-20240726   gcc-13
x86_64                randconfig-013-20240726   gcc-13
x86_64                randconfig-014-20240726   gcc-13
x86_64                randconfig-015-20240726   gcc-13
x86_64                randconfig-016-20240726   gcc-13
x86_64                randconfig-071-20240726   gcc-13
x86_64                randconfig-072-20240726   gcc-13
x86_64                randconfig-073-20240726   gcc-13
x86_64                randconfig-074-20240726   gcc-13
x86_64                randconfig-075-20240726   gcc-13
x86_64                randconfig-076-20240726   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0
xtensa                            allnoconfig   gcc-14.1.0
xtensa                randconfig-001-20240726   gcc-14.1.0
xtensa                randconfig-002-20240726   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
