Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 038A29707E0
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Sep 2024 15:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4018C40391;
	Sun,  8 Sep 2024 13:44:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JtUbzGevvamQ; Sun,  8 Sep 2024 13:44:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD1604038C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725803063;
	bh=8SaiQLZqW6DBS+z7/SUeTVfErjp6/12vPYTHV8CYeDg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WVmaMrR9q7RaRW5nhpQPgoRucszfzL4ddOQkPnJbqVgUQ4nexwTglDhUEapgPQHFg
	 g+gdU+9A2fm5OJOSegflVditcB2iJEfLSQcsOkaSbievc/fo6FA9Eg4XDMsrjeUmva
	 Pza9PDTMpS4l4E7hiXKcmdKiR1aoI2Dug/TjOGtBAJ4iHBswMydS8i9E4jfn/Dljd0
	 QKOPmBhGz7T0dhmIfAbCqgn6XnJg0hKOd3A9bdlzUk2eusq1tnisT1UILGkpCXoXqP
	 z99pTNXzjK+2H0cmHfIRWk3sMeQDPKQ49b5Le7nsuKG+yc+1JqcYztVZ8JvaI1skOg
	 tphOIkIrjZJow==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD1604038C;
	Sun,  8 Sep 2024 13:44:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AEDC1BF35A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 13:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 874AF605EA
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 13:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FVIReyFe0uTg for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Sep 2024 13:44:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69BB36058B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69BB36058B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69BB36058B
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Sep 2024 13:44:19 +0000 (UTC)
X-CSE-ConnectionGUID: YqxwJIjwQZuRp4Apv8rNfQ==
X-CSE-MsgGUID: cjCHzNeBQL+ZZ11jyW+IVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="28240122"
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; d="scan'208";a="28240122"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 06:44:19 -0700
X-CSE-ConnectionGUID: urMPyhTwTqWPpmzI3njc4A==
X-CSE-MsgGUID: T2RVxtwPTw+FjNVNA3Fbvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,212,1719903600"; d="scan'208";a="66395462"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 08 Sep 2024 06:44:17 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1snID9-000DaD-1p
 for intel-wired-lan@lists.osuosl.org; Sun, 08 Sep 2024 13:44:15 +0000
Date: Sun, 08 Sep 2024 21:43:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409082125.fxRumBa4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725803060; x=1757339060;
 h=date:from:to:subject:message-id;
 bh=ofiafqwneGaX7WnbOITvgRPaV4RihlksAsq/9N56cow=;
 b=K7jqacVP6wF8U5lsj8Gqhr7q755e/eAF6IHhga8ZXaum62/9t2oEjpjg
 cAKo3Zu4oY83+Rx06srvv7y2F7YljmeXYt34+3OGeIRoX5nNkRmRuJori
 71o7EWYCAnBMkSCe/Kz66Nt0t+27t/050htaCb0yUlzwuSwFKWx6neVxl
 jmO8E9k+Sw7t5NHzu9vxrDdCfMq3TVcTq10eg+SbcmE0T9E3AyzgPWZJ6
 WNhUEQzt7SL3GWIPGQ6gUTdWq01/6aZbAPgpviaWZRuU/Ub1RbfCFEq1P
 19DuFiimdky4t4se0BIv5MCRPCTyNIgyR2gGdWtyGGdJxFtpiG5KHiNM+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K7jqacVP
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7bb66c4760d45799164cd69d755e84dfb0232d18
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 7bb66c4760d45799164cd69d755e84dfb0232d18  idpf: enable WB_ON_ITR

elapsed time: 2211m

configs tested: 97
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.3.0
alpha                            allyesconfig   gcc-13.3.0
alpha                               defconfig   gcc-13.3.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                 nsimosci_hs_smp_defconfig   gcc-13.2.0
arc                   randconfig-001-20240908   gcc-13.2.0
arc                   randconfig-002-20240908   gcc-13.2.0
arm                               allnoconfig   clang-20
arm                            dove_defconfig   gcc-14.1.0
arm                   randconfig-001-20240908   gcc-14.1.0
arm                   randconfig-002-20240908   clang-20
arm                   randconfig-003-20240908   clang-17
arm                   randconfig-004-20240908   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                 randconfig-001-20240908   clang-20
arm64                 randconfig-002-20240908   gcc-14.1.0
arm64                 randconfig-003-20240908   clang-20
arm64                 randconfig-004-20240908   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                  randconfig-001-20240908   gcc-14.1.0
csky                  randconfig-002-20240908   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   clang-20
hexagon                          allyesconfig   clang-20
hexagon               randconfig-001-20240908   clang-14
hexagon               randconfig-002-20240908   clang-14
i386                             allmodconfig   gcc-12
i386                              allnoconfig   gcc-12
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240908   clang-18
i386         buildonly-randconfig-002-20240908   clang-18
i386         buildonly-randconfig-003-20240908   clang-18
i386         buildonly-randconfig-004-20240908   clang-18
i386         buildonly-randconfig-005-20240908   clang-18
i386         buildonly-randconfig-006-20240908   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240908   gcc-12
i386                  randconfig-002-20240908   clang-18
i386                  randconfig-003-20240908   clang-18
i386                  randconfig-004-20240908   clang-18
i386                  randconfig-005-20240908   clang-18
i386                  randconfig-006-20240908   clang-18
i386                  randconfig-011-20240908   clang-18
i386                  randconfig-012-20240908   gcc-12
i386                  randconfig-013-20240908   gcc-12
i386                  randconfig-014-20240908   clang-18
i386                  randconfig-015-20240908   gcc-12
i386                  randconfig-016-20240908   gcc-12
loongarch                         allnoconfig   gcc-14.1.0
loongarch             randconfig-001-20240908   gcc-14.1.0
loongarch             randconfig-002-20240908   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                 randconfig-001-20240908   gcc-14.1.0
nios2                 randconfig-002-20240908   gcc-14.1.0
openrisc                          allnoconfig   gcc-14.1.0
openrisc                            defconfig   gcc-14.1.0
parisc                            allnoconfig   gcc-14.1.0
parisc                              defconfig   gcc-14.1.0
parisc                randconfig-001-20240908   gcc-14.1.0
parisc                randconfig-002-20240908   gcc-14.1.0
powerpc                           allnoconfig   gcc-14.1.0
powerpc               randconfig-002-20240908   clang-20
riscv                             allnoconfig   gcc-14.1.0
riscv                               defconfig   clang-20
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   clang-20
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                                  defconfig   gcc-14.1.0
sparc64                             defconfig   gcc-14.1.0
um                               allmodconfig   clang-20
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-12
um                                  defconfig   clang-20
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240908   gcc-12
x86_64       buildonly-randconfig-002-20240908   gcc-12
x86_64       buildonly-randconfig-003-20240908   clang-18
x86_64       buildonly-randconfig-004-20240908   gcc-12
x86_64       buildonly-randconfig-005-20240908   clang-18
x86_64       buildonly-randconfig-006-20240908   clang-18
x86_64                              defconfig   gcc-11
x86_64                randconfig-001-20240908   gcc-12
x86_64                randconfig-002-20240908   gcc-12
x86_64                randconfig-003-20240908   gcc-11
x86_64                randconfig-004-20240908   gcc-12
x86_64                randconfig-006-20240908   clang-18
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
