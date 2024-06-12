Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 206E6905E80
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 00:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7637E60889;
	Wed, 12 Jun 2024 22:28:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ji-rfgrt1Y0K; Wed, 12 Jun 2024 22:28:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC7CB6088B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718231301;
	bh=0xOEdjLr5hACKMB8uZnWVUszchjQL03TZcoW4bx9F7k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IdBt1HAQgkDzp6RkRAOIERP4K+PHwIuEcJooYrrXugofaM4b0XvGADzFF+eBd4Ct1
	 GKe8QyhYUFrxhtZTy/xI7DKAenO17pcVwmvDsz14eXn7r/i0WnFp26m/ZUmXZUbms+
	 eATk2Udz91DZL2IIUrcJkUWygRlVVOBwZOrxc3+V7FemTjOQjtncqaSkN8eIeP1Xpn
	 1l/Q3Jhq+r5mYt70ePj9txzueU2Nsja6DwB1ni4WuxVd97PcbAPZ8cBoh34+xYZPNb
	 2qHLF7lC1J7NTEgxh6rhBuuHSK42Lhk4nzAA0xYedXLrUKUc6eoy2+L4f4lO8RGrOF
	 ywOOVS7OreP4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC7CB6088B;
	Wed, 12 Jun 2024 22:28:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF4F81BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 22:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ABB2681EF5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 22:28:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9Vlc-PVd1hY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 22:28:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6BE1381ECA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BE1381ECA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BE1381ECA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 22:28:17 +0000 (UTC)
X-CSE-ConnectionGUID: 1IG7XiI2RIGWFKdOwBrraw==
X-CSE-MsgGUID: WUipdoZLRwOcrpQa1y/pMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="25603491"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="25603491"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2024 15:28:17 -0700
X-CSE-ConnectionGUID: 1YVG+NQ5SYeuu/s5ibLkcg==
X-CSE-MsgGUID: grz3HHyZQfiCoCCtSovGJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="39820532"
Received: from lkp-server01.sh.intel.com (HELO 628d7d8b9fc6) ([10.239.97.150])
 by fmviesa006.fm.intel.com with ESMTP; 12 Jun 2024 15:28:15 -0700
Received: from kbuild by 628d7d8b9fc6 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sHWRx-0001xq-0c
 for intel-wired-lan@lists.osuosl.org; Wed, 12 Jun 2024 22:28:13 +0000
Date: Thu, 13 Jun 2024 06:28:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202406130606.OEeOZyUI-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718231298; x=1749767298;
 h=date:from:to:subject:message-id;
 bh=VuvYhPdvFttw6roq2qZrdXc+AP/Stbzl6WPLWnzVxNc=;
 b=gkVBRtzdkSg6U3x/l9cWbDoEiWy97icrdhxuoxed7MiFVSoKqQAjY7aG
 tL+5zcMHAMNgADi2fIIMf7D9Cb8AIxC9Yx2iw2kJlIXJAZV66K+JTmb1P
 FLusKFYFpsEy+RT+Q/LhUEdzfkZFKXn1WvQOX8NW2ZvCO0ZjAgpQ4OIgI
 3y5LIBawhgn7sWzmrSf3pdugeduFb4nxaesd29u/ww5+jZSIuM5zaDcGg
 61XtZ9MI6OJK6AUCrWnuCcVhIQbU/wPGaTLjskFZKKXiveoBPV9VTU9A3
 npPot/AW8CLzy5GWAgyNY5STXLe5kiorNbwBg0kLOOBuQxwTB5E70aeXM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gkVBRtzd
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9af9f19ba76127f423f1b2cbe41b3cc098f0f5d4
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
branch HEAD: 9af9f19ba76127f423f1b2cbe41b3cc098f0f5d4  igb: Add MII write support

elapsed time: 1618m

configs tested: 101
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arc                   randconfig-001-20240612   gcc-13.2.0
arc                   randconfig-002-20240612   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm                   randconfig-001-20240612   gcc-13.2.0
arm                   randconfig-002-20240612   gcc-13.2.0
arm                   randconfig-003-20240612   clang-19
arm                   randconfig-004-20240612   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
arm64                 randconfig-001-20240612   gcc-13.2.0
arm64                 randconfig-002-20240612   gcc-13.2.0
arm64                 randconfig-003-20240612   gcc-13.2.0
arm64                 randconfig-004-20240612   clang-19
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
csky                  randconfig-001-20240612   gcc-13.2.0
csky                  randconfig-002-20240612   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
hexagon               randconfig-001-20240612   clang-19
hexagon               randconfig-002-20240612   clang-19
i386         buildonly-randconfig-001-20240612   gcc-13
i386         buildonly-randconfig-002-20240612   gcc-8
i386         buildonly-randconfig-003-20240612   gcc-13
i386         buildonly-randconfig-004-20240612   clang-18
i386         buildonly-randconfig-005-20240612   gcc-13
i386         buildonly-randconfig-006-20240612   clang-18
i386                  randconfig-001-20240612   gcc-8
i386                  randconfig-002-20240612   clang-18
i386                  randconfig-003-20240612   clang-18
i386                  randconfig-004-20240612   clang-18
i386                  randconfig-005-20240612   gcc-13
i386                  randconfig-006-20240612   clang-18
i386                  randconfig-011-20240612   clang-18
i386                  randconfig-012-20240612   clang-18
i386                  randconfig-013-20240612   clang-18
i386                  randconfig-014-20240612   gcc-7
i386                  randconfig-015-20240612   gcc-13
i386                  randconfig-016-20240612   gcc-7
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
loongarch             randconfig-001-20240612   gcc-13.2.0
loongarch             randconfig-002-20240612   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
nios2                 randconfig-001-20240612   gcc-13.2.0
nios2                 randconfig-002-20240612   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc                randconfig-001-20240612   gcc-13.2.0
parisc                randconfig-002-20240612   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-001-20240612   gcc-13.2.0
powerpc               randconfig-002-20240612   gcc-13.2.0
powerpc               randconfig-003-20240612   clang-19
powerpc64             randconfig-001-20240612   gcc-13.2.0
powerpc64             randconfig-002-20240612   gcc-13.2.0
powerpc64             randconfig-003-20240612   clang-14
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
riscv                 randconfig-001-20240612   gcc-13.2.0
riscv                 randconfig-002-20240612   gcc-13.2.0
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
s390                  randconfig-001-20240612   clang-19
s390                  randconfig-002-20240612   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sh                    randconfig-001-20240612   gcc-13.2.0
sh                    randconfig-002-20240612   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
sparc64               randconfig-001-20240612   gcc-13.2.0
sparc64               randconfig-002-20240612   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                    randconfig-001-20240612   gcc-13
um                    randconfig-002-20240612   clang-16
um                           x86_64_defconfig   clang-15
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-002-20240612   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
