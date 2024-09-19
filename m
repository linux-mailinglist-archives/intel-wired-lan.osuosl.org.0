Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9374597CDF2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Sep 2024 21:03:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5249C84BD6;
	Thu, 19 Sep 2024 19:03:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D2FPldnKS7bS; Thu, 19 Sep 2024 19:03:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F62084BB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726772599;
	bh=ziEztQupFitvTtSpwtP1xa+AkWzOm8Kqf4MwZVTljbU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=WZcpQ2YhK3DJHnKRlFGHrQggRnFFhzItTxuBexAdDFwwvOLWAFaI7kSXLas3yINko
	 FFIdAvGi0OAqUO0kZWOBHlw/fcyRgd+Xbd2onKA8rfkw+R8M3ljkFoIDapJR6ilx4J
	 JMj9ApnDlwpjq1Xe50j3TOTNVyuR+y0LMz0FJZsXSM9XrmtOSIqzr0Z3MQ9f/zmUF3
	 HZ3ykTDX0FctXEvvWge5xgEJAOG2mAiWasjgA6fFa0UTVtTOl8iydI0dF+l7K8dFRz
	 eXs8Mmb0lA5smIs11hUMIXB128K05JtOHr4B5OdftxIMCo6sNVqYZ76qD00VQetnsj
	 U2wIO8JG9xfNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F62084BB3;
	Thu, 19 Sep 2024 19:03:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB451BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 19:03:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38B7C84BCB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 19:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vp_lUCwFC0nD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Sep 2024 19:03:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9856684BB3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9856684BB3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9856684BB3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Sep 2024 19:03:15 +0000 (UTC)
X-CSE-ConnectionGUID: Sj2pPxMBT9CU1yLv3UhOTQ==
X-CSE-MsgGUID: 1W8Nw1pEQwaRTDdyq7v5ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="37137364"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="37137364"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 12:03:15 -0700
X-CSE-ConnectionGUID: ZmO2EBPPRJKHJ9yPACHS7w==
X-CSE-MsgGUID: A+wKi99rQFyepq5ansl1GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="74815606"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 19 Sep 2024 12:03:14 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1srMQp-000DaO-2W
 for intel-wired-lan@lists.osuosl.org; Thu, 19 Sep 2024 19:03:11 +0000
Date: Fri, 20 Sep 2024 03:02:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409200351.sy39HHTJ-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726772595; x=1758308595;
 h=date:from:to:subject:message-id;
 bh=0O7G3TcS5EfRw68/Swd9D4l6vXg6mkgFyfXSrDqXJxA=;
 b=dORr7t728Re6HvElaVNeME6xdzPFu9fCTEYcRrK0WMl6V+bBlBv9Y3BO
 5O/fUsAtKGhhI2jOZpzs4SIYd/7Pv54itzvgrZgUhHgyHtR2OEV19Sgjy
 NUkvyY7JG9FZLeeiJ0TpngmGVZZL1UdpNGVCmGXtnvxK07YFCY8ANKXrd
 cNZoMoiig99fbXC+M+XwqPl2xYNORPpMYkNWIG5Tp45L/l/v2t6AeYbVm
 AFxMhC2hcr+vykfrSjIbrJ7R6eygVsg+NQieBBjj/7qb7AQlmjTV6SRjb
 qWvFP40ceHMOPzGHc0dapzDFjQF604qRomamPSUDcrqcI/x9WQKT1g0De
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dORr7t72
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2f0bdf7f38208cd8ddac5c4aa261829a8056c192
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
branch HEAD: 2f0bdf7f38208cd8ddac5c4aa261829a8056c192  ice: Implement PTP support for E830 devices

elapsed time: 2582m

configs tested: 105
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig    gcc-13.3.0
alpha                            allyesconfig    gcc-13.3.0
arc                              allmodconfig    gcc-13.2.0
arc                               allnoconfig    gcc-13.2.0
arc                              allyesconfig    gcc-13.2.0
arc                   randconfig-001-20240919    gcc-13.2.0
arc                   randconfig-002-20240919    gcc-13.2.0
arm                              allmodconfig    gcc-14.1.0
arm                               allnoconfig    clang-20
arm                              allyesconfig    gcc-14.1.0
arm                          exynos_defconfig    clang-17
arm                   randconfig-001-20240919    clang-20
arm                   randconfig-002-20240919    clang-20
arm                   randconfig-003-20240919    clang-20
arm                   randconfig-004-20240919    clang-20
arm                         wpcm450_defconfig    gcc-14.1.0
arm64                            allmodconfig    clang-20
arm64                             allnoconfig    gcc-14.1.0
arm64                 randconfig-001-20240919    gcc-14.1.0
arm64                 randconfig-002-20240919    clang-15
arm64                 randconfig-003-20240919    clang-20
arm64                 randconfig-004-20240919    gcc-14.1.0
csky                              allnoconfig    gcc-14.1.0
csky                  randconfig-001-20240919    gcc-14.1.0
csky                  randconfig-002-20240919    gcc-14.1.0
hexagon                           allnoconfig    clang-20
hexagon               randconfig-001-20240919    clang-20
hexagon               randconfig-002-20240919    clang-20
i386                             allmodconfig    gcc-12
i386                              allnoconfig    gcc-12
i386                             allyesconfig    gcc-12
i386        buildonly-randconfig-001-20240919    clang-18
i386        buildonly-randconfig-002-20240919    gcc-12
i386        buildonly-randconfig-003-20240919    clang-18
i386        buildonly-randconfig-004-20240919    gcc-12
i386        buildonly-randconfig-005-20240919    clang-18
i386        buildonly-randconfig-006-20240919    clang-18
i386                                defconfig    clang-18
i386                  randconfig-001-20240919    clang-18
i386                  randconfig-002-20240919    clang-18
i386                  randconfig-003-20240919    gcc-12
i386                  randconfig-004-20240919    clang-18
i386                  randconfig-005-20240919    clang-18
i386                  randconfig-006-20240919    clang-18
i386                  randconfig-011-20240919    gcc-12
i386                  randconfig-012-20240919    gcc-12
i386                  randconfig-013-20240919    clang-18
i386                  randconfig-014-20240919    gcc-12
i386                  randconfig-015-20240919    gcc-11
i386                  randconfig-016-20240919    clang-18
loongarch                        allmodconfig    gcc-14.1.0
loongarch                         allnoconfig    gcc-14.1.0
loongarch             randconfig-001-20240919    gcc-14.1.0
loongarch             randconfig-002-20240919    gcc-14.1.0
m68k                             allmodconfig    gcc-14.1.0
m68k                              allnoconfig    gcc-14.1.0
m68k                             allyesconfig    gcc-14.1.0
microblaze                        allnoconfig    gcc-14.1.0
mips                              allnoconfig    gcc-14.1.0
mips                           ip22_defconfig    gcc-14.1.0
mips                     loongson2k_defconfig    gcc-13.2.0
mips                      maltaaprp_defconfig    clang-14
nios2                             allnoconfig    gcc-14.1.0
nios2                 randconfig-001-20240919    gcc-14.1.0
nios2                 randconfig-002-20240919    gcc-14.1.0
openrisc                          allnoconfig    gcc-14.1.0
openrisc                         allyesconfig    gcc-14.1.0
parisc                           alldefconfig    gcc-14.1.0
parisc                           allmodconfig    gcc-14.1.0
parisc                            allnoconfig    gcc-14.1.0
parisc                           allyesconfig    gcc-14.1.0
parisc                randconfig-001-20240919    gcc-14.1.0
parisc                randconfig-002-20240919    gcc-14.1.0
powerpc                          allmodconfig    gcc-14.1.0
powerpc                           allnoconfig    gcc-14.1.0
powerpc                          allyesconfig    clang-20
powerpc                      arches_defconfig    gcc-14.1.0
powerpc                         ps3_defconfig    gcc-14.1.0
powerpc               randconfig-001-20240919    gcc-14.1.0
powerpc                     stx_gp3_defconfig    clang-20
riscv                            allmodconfig    clang-20
riscv                             allnoconfig    gcc-14.1.0
s390                             allmodconfig    clang-20
s390                              allnoconfig    clang-20
s390                             allyesconfig    gcc-14.1.0
s390                       zfcpdump_defconfig    clang-20
sh                               allmodconfig    gcc-14.1.0
sh                                allnoconfig    gcc-14.1.0
sh                               allyesconfig    gcc-14.1.0
sh                        dreamcast_defconfig    gcc-14.1.0
sh                          kfr2r09_defconfig    gcc-14.1.0
sh                      rts7751r2d1_defconfig    gcc-14.1.0
sh                           se7751_defconfig    gcc-14.1.0
sh                              ul2_defconfig    gcc-14.1.0
sparc                            allmodconfig    gcc-14.1.0
um                                allnoconfig    clang-17
x86_64                            allnoconfig    clang-18
x86_64                           allyesconfig    clang-18
x86_64                              defconfig    gcc-11
x86_64                           rhel-8.3-bpf    gcc-12
x86_64                         rhel-8.3-kunit    gcc-12
x86_64                           rhel-8.3-ltp    gcc-12
x86_64                          rhel-8.3-rust    clang-18
xtensa                            allnoconfig    gcc-14.1.0
xtensa                       common_defconfig    gcc-14.1.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
