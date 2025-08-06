Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDCCB1C489
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Aug 2025 12:50:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 35F2560FB5;
	Wed,  6 Aug 2025 10:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dn4OqFk7O7tt; Wed,  6 Aug 2025 10:50:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 173C461068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754477417;
	bh=Zu7GtIzTvc/qHehNwaMuX0lhtSlfXzX4JmPMb9mbzAM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gBTKqFx56eRWIMSAZ01Ep8IGfpAqJzIbXtoAEl2TrDZE1tzGu07BfJStVJd1swTPD
	 GCw0M29tgjlqE9tnaT0kwcnKUa1FjT0/BrS+Zhb9cdf8se9escGvZurLN2c8L9v4a+
	 PC2xqtQlbZyqW+Ez0x9lrocse/bQ4dfMC737F+4uGRwgky883+Dii24NZVvHtLI/D4
	 B8RRWeanb+ArPrFbn0h4H22NP5UwuPfwSbCh32w9mve3wwPhAbpC6ZiurmbMq5FpFG
	 afdkGz1DBum/nuuaZPUpJqUZTVHxAXBNSdV9/5seDGRGGFX7YkawqthNSI53MJ5I68
	 HoGydsVncoM7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 173C461068;
	Wed,  6 Aug 2025 10:50:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C5AA1D79
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 10:50:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABA588421F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 10:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PIJd7S2DDgtm for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Aug 2025 10:50:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7BBE1842B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BBE1842B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7BBE1842B7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Aug 2025 10:50:13 +0000 (UTC)
X-CSE-ConnectionGUID: uX93F9npQ0CJVNg6eo7ESA==
X-CSE-MsgGUID: DDm77iTfT6yWzC5mJxw53Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="44382014"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="44382014"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 03:50:12 -0700
X-CSE-ConnectionGUID: dSf/KgRnSoe3w5sd4ddAsg==
X-CSE-MsgGUID: eZ9PuEFyTNekARU8Rbc8RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165082539"
Received: from lkp-server02.sh.intel.com (HELO 4ea60e6ab079) ([10.239.97.151])
 by orviesa008.jf.intel.com with ESMTP; 06 Aug 2025 03:50:11 -0700
Received: from kbuild by 4ea60e6ab079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ujbij-0001a4-1D
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Aug 2025 10:50:09 +0000
Date: Wed, 06 Aug 2025 18:49:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202508061812.KTHCnSdB-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754477413; x=1786013413;
 h=date:from:to:subject:message-id;
 bh=IjMcaWh3Gym46lgtotv48f41cGfMHbj7wt54Za48qSY=;
 b=nzZpZ/70yes27qFCv4auNnPExdAfW2Q57nF+xj4um32zVy0KwmY6KaRN
 zlrDSE/F8m+eqTubhplHn9xbckNA8gdh0WjVkjKVUzIm5QCP6084Tw8iX
 9Ocd/KD/xwEJxKNcDcM7RFIMYv+5WhKOJmnkQpRBM5PplB+ccxRA+Gbzp
 sDwr7Q+AaIYTS6e7b3/PkWiuJijMpHhXsZTj081GklFpV9JHcW92QhKax
 TzPEWs8oHBIhR4x6wRfDRsWkr9/z65lw4nfYqXQgwlpVhw25TOp+SKfqI
 QoM0TWgrCpi9qUTQV5lnYrHh5VKLucNnmSfR/lzjuhTs2No8KN49/nSSF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nzZpZ/70
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0af56426e9a59084bca60a0d4dc1dc995e2808ee
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
branch HEAD: 0af56426e9a59084bca60a0d4dc1dc995e2808ee  ixgbe: fix ixgbe_orom_civd_info struct layout

elapsed time: 1064m

configs tested: 126
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-15.1.0
alpha                            allyesconfig    gcc-15.1.0
arc                              allmodconfig    gcc-15.1.0
arc                               allnoconfig    gcc-15.1.0
arc                              allyesconfig    gcc-15.1.0
arc                   randconfig-001-20250806    gcc-12.5.0
arc                   randconfig-002-20250806    gcc-11.5.0
arm                              allmodconfig    gcc-15.1.0
arm                               allnoconfig    clang-22
arm                              allyesconfig    gcc-15.1.0
arm                            hisi_defconfig    gcc-15.1.0
arm                       multi_v4t_defconfig    clang-16
arm                       omap2plus_defconfig    gcc-15.1.0
arm                   randconfig-001-20250806    gcc-10.5.0
arm                   randconfig-002-20250806    gcc-13.4.0
arm                   randconfig-003-20250806    gcc-10.5.0
arm                   randconfig-004-20250806    clang-22
arm64                            allmodconfig    clang-19
arm64                             allnoconfig    gcc-15.1.0
arm64                 randconfig-001-20250806    clang-20
arm64                 randconfig-002-20250806    clang-22
arm64                 randconfig-003-20250806    gcc-9.5.0
arm64                 randconfig-004-20250806    clang-17
csky                              allnoconfig    gcc-15.1.0
csky                  randconfig-001-20250806    gcc-10.5.0
csky                  randconfig-002-20250806    gcc-14.3.0
hexagon                          allmodconfig    clang-17
hexagon                           allnoconfig    clang-22
hexagon                          allyesconfig    clang-22
hexagon               randconfig-001-20250806    clang-18
hexagon               randconfig-002-20250806    clang-22
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20250806    clang-20
i386        buildonly-randconfig-002-20250806    gcc-11
i386        buildonly-randconfig-003-20250806    clang-20
i386        buildonly-randconfig-004-20250806    gcc-12
i386        buildonly-randconfig-005-20250806    gcc-12
i386        buildonly-randconfig-006-20250806    clang-20
i386                                defconfig    clang-20
loongarch                        allmodconfig    clang-19
loongarch                         allnoconfig    clang-22
loongarch             randconfig-001-20250806    clang-18
loongarch             randconfig-002-20250806    clang-22
m68k                             allmodconfig    gcc-15.1.0
m68k                              allnoconfig    gcc-15.1.0
m68k                             allyesconfig    gcc-15.1.0
m68k                        m5407c3_defconfig    gcc-15.1.0
microblaze                       allmodconfig    gcc-15.1.0
microblaze                        allnoconfig    gcc-15.1.0
microblaze                       allyesconfig    gcc-15.1.0
microblaze                          defconfig    gcc-15.1.0
mips                              allnoconfig    gcc-15.1.0
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20250806    gcc-10.5.0
nios2                 randconfig-002-20250806    gcc-11.5.0
openrisc                          allnoconfig    gcc-15.1.0
openrisc                         allyesconfig    gcc-15.1.0
openrisc                            defconfig    gcc-15.1.0
parisc                           allmodconfig    gcc-15.1.0
parisc                            allnoconfig    gcc-15.1.0
parisc                           allyesconfig    gcc-15.1.0
parisc                              defconfig    gcc-15.1.0
parisc                randconfig-001-20250806    gcc-15.1.0
parisc                randconfig-002-20250806    gcc-8.5.0
parisc64                            defconfig    gcc-15.1.0
powerpc                          allmodconfig    gcc-15.1.0
powerpc                           allnoconfig    gcc-15.1.0
powerpc                          allyesconfig    clang-22
powerpc               randconfig-001-20250806    clang-22
powerpc               randconfig-002-20250806    gcc-14.3.0
powerpc               randconfig-003-20250806    clang-22
powerpc                 xes_mpc85xx_defconfig    gcc-15.1.0
powerpc64             randconfig-001-20250806    gcc-15.1.0
powerpc64             randconfig-002-20250806    gcc-10.5.0
powerpc64             randconfig-003-20250806    clang-18
riscv                            allmodconfig    clang-22
riscv                             allnoconfig    gcc-15.1.0
riscv                            allyesconfig    clang-16
riscv                               defconfig    clang-22
riscv                 randconfig-001-20250806    clang-20
riscv                 randconfig-002-20250806    clang-22
s390                             allmodconfig    clang-18
s390                              allnoconfig    clang-22
s390                             allyesconfig    gcc-15.1.0
s390                                defconfig    clang-22
s390                  randconfig-001-20250806    gcc-14.3.0
s390                  randconfig-002-20250806    gcc-14.3.0
sh                               allmodconfig    gcc-15.1.0
sh                                allnoconfig    gcc-15.1.0
sh                               allyesconfig    gcc-15.1.0
sh                                  defconfig    gcc-15.1.0
sh                    randconfig-001-20250806    gcc-15.1.0
sh                    randconfig-002-20250806    gcc-10.5.0
sh                        sh7763rdp_defconfig    gcc-15.1.0
sparc                            allmodconfig    gcc-15.1.0
sparc                             allnoconfig    gcc-15.1.0
sparc                               defconfig    gcc-15.1.0
sparc                 randconfig-001-20250806    gcc-11.5.0
sparc                 randconfig-002-20250806    gcc-13.4.0
sparc64                             defconfig    clang-20
sparc64               randconfig-001-20250806    gcc-8.5.0
sparc64               randconfig-002-20250806    gcc-8.5.0
um                               allmodconfig    clang-19
um                                allnoconfig    clang-22
um                               allyesconfig    gcc-12
um                                  defconfig    clang-22
um                             i386_defconfig    gcc-12
um                    randconfig-001-20250806    clang-16
um                    randconfig-002-20250806    gcc-12
um                           x86_64_defconfig    clang-22
x86_64                            allnoconfig    clang-20
x86_64                           allyesconfig    clang-20
x86_64      buildonly-randconfig-001-20250806    gcc-12
x86_64      buildonly-randconfig-002-20250806    clang-20
x86_64      buildonly-randconfig-003-20250806    gcc-12
x86_64      buildonly-randconfig-004-20250806    gcc-12
x86_64      buildonly-randconfig-005-20250806    clang-20
x86_64      buildonly-randconfig-006-20250806    clang-20
x86_64                              defconfig    gcc-11
x86_64                          rhel-9.4-rust    clang-20
xtensa                            allnoconfig    gcc-15.1.0
xtensa                randconfig-001-20250806    gcc-13.4.0
xtensa                randconfig-002-20250806    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
