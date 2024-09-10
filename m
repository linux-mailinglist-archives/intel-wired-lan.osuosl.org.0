Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4CD9744FD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 23:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76EE78059A;
	Tue, 10 Sep 2024 21:46:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fxPshS5_MQnU; Tue, 10 Sep 2024 21:46:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A4C0805A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726004777;
	bh=diiWRo6POrGw09uixTgjb7AXD3qksQ3qTvG9vJJnlDg=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XNg1socbTlT1jcRv40krbJC00sGLkocxgm4Gibs0ZkztL0/w4oARM6uE1Qqwdszb7
	 m/64Y2OhJuylT7licXzR0LtKgV3iIxjtFknhdR8gYs3o2OOzXAO/IXqdiqj3Blfdl+
	 +fNV5Iijk1RXLZp0cAd7bHn4V5dS/IV7w8k+jbSFTNmw17qcjh2yKRerYpBO3O+fpW
	 ajKaL0A497K80AQZHLY2yt2e/h34+C9jD7Y7BfmPW1N++sJ9+oluBn8htge8VCDScO
	 LYP4f6T0nblwYIhD25vzcolvRWKhvocUzBFh61ot9HkSa5xW5MAEqzzUGz7viUNUQU
	 pAqlVW+X1D1ig==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A4C0805A9;
	Tue, 10 Sep 2024 21:46:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D21EF1BF359
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:46:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF99B80588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vOZhdVS-wU0r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 21:46:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 93C9180573
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93C9180573
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 93C9180573
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 21:46:14 +0000 (UTC)
X-CSE-ConnectionGUID: Em21WVUyQ1+eXCBvRmZAcQ==
X-CSE-MsgGUID: f9aTS9ABSSiluaBFT2/zfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24941028"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="24941028"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 14:46:14 -0700
X-CSE-ConnectionGUID: P5VPkkukS5muyYqcyHhTZA==
X-CSE-MsgGUID: UlhfbE5WSTGzFRgPozLxWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="67114351"
Received: from lkp-server01.sh.intel.com (HELO 53e96f405c61) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 10 Sep 2024 14:46:12 -0700
Received: from kbuild by 53e96f405c61 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1so8gc-0002kU-0w
 for intel-wired-lan@lists.osuosl.org; Tue, 10 Sep 2024 21:46:10 +0000
Date: Wed, 11 Sep 2024 05:45:49 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409110547.Dve5pOCG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726004775; x=1757540775;
 h=date:from:to:subject:message-id;
 bh=AGc4ctIcvDQeP1gxTbxfbGWPGELsFt+vWrq0NMbtaHg=;
 b=K2s9BHny2hWtPuybgKQf80roni0otDAHwLZmqJ+KUIvyeLGY3+Ok5F0k
 LECIYL29WEDWZ/POVWcxUAjzAEuYVENqmAgb6U6NbAzRDGPA7h71rtRx8
 AlOxctrbIdFGzk4Hlf9bsESU+Vakh4YxG3DeaBY93PDv1WoSKAZjyrD88
 0C0XavxkPGpziSEwvOmnQ1jtmKfZBdVp96MUGPMEi40o3grTvZq8X9n99
 sSVdDuR2zYQIENeZnnNCAYhitSzncNMPqn6j44o9SyYLmLNDk9+yjiVAs
 U2L7uZOfxIFzEK+KpzQeZg5u/heJsSLo/NLLRNMhuzRnX7gMmG700n523
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K2s9BHny
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 27717f8b17c098c4373ddb8fe89e1a1899c7779d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 27717f8b17c098c4373ddb8fe89e1a1899c7779d  igb: Always call igb_xdp_ring_update_tail() under Tx lock

elapsed time: 1464m

configs tested: 158
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-14.1.0
alpha                            allyesconfig   clang-20
alpha                               defconfig   gcc-14.1.0
arc                              allmodconfig   clang-20
arc                               allnoconfig   gcc-14.1.0
arc                              allyesconfig   clang-20
arc                                 defconfig   gcc-14.1.0
arc                     haps_hs_smp_defconfig   gcc-14.1.0
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                         orion5x_defconfig   gcc-14.1.0
arm                        spear3xx_defconfig   gcc-14.1.0
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                             allmodconfig   gcc-12
i386                              allnoconfig   clang-18
i386                              allnoconfig   gcc-12
i386                             allyesconfig   clang-18
i386                             allyesconfig   gcc-12
i386         buildonly-randconfig-001-20240910   clang-18
i386         buildonly-randconfig-001-20240911   gcc-12
i386         buildonly-randconfig-002-20240910   clang-18
i386         buildonly-randconfig-002-20240911   gcc-12
i386         buildonly-randconfig-003-20240910   clang-18
i386         buildonly-randconfig-003-20240911   gcc-12
i386         buildonly-randconfig-004-20240910   clang-18
i386         buildonly-randconfig-004-20240911   gcc-12
i386         buildonly-randconfig-005-20240910   clang-18
i386         buildonly-randconfig-005-20240911   gcc-12
i386         buildonly-randconfig-006-20240910   clang-18
i386         buildonly-randconfig-006-20240911   gcc-12
i386                                defconfig   clang-18
i386                  randconfig-001-20240910   clang-18
i386                  randconfig-001-20240911   gcc-12
i386                  randconfig-002-20240910   clang-18
i386                  randconfig-002-20240911   gcc-12
i386                  randconfig-003-20240910   clang-18
i386                  randconfig-003-20240911   gcc-12
i386                  randconfig-004-20240910   clang-18
i386                  randconfig-004-20240911   gcc-12
i386                  randconfig-005-20240910   clang-18
i386                  randconfig-005-20240911   gcc-12
i386                  randconfig-006-20240910   clang-18
i386                  randconfig-006-20240911   gcc-12
i386                  randconfig-011-20240910   clang-18
i386                  randconfig-011-20240911   gcc-12
i386                  randconfig-012-20240910   clang-18
i386                  randconfig-012-20240911   gcc-12
i386                  randconfig-013-20240910   clang-18
i386                  randconfig-013-20240911   gcc-12
i386                  randconfig-014-20240910   clang-18
i386                  randconfig-014-20240911   gcc-12
i386                  randconfig-015-20240910   clang-18
i386                  randconfig-015-20240911   gcc-12
i386                  randconfig-016-20240910   clang-18
i386                  randconfig-016-20240911   gcc-12
loongarch                        allmodconfig   gcc-14.1.0
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                             allmodconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                             allyesconfig   gcc-14.1.0
m68k                       bvme6000_defconfig   gcc-14.1.0
m68k                                defconfig   gcc-14.1.0
m68k                       m5275evb_defconfig   gcc-14.1.0
m68k                            mac_defconfig   gcc-14.1.0
microblaze                       allmodconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                       allyesconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                      loongson3_defconfig   gcc-14.1.0
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                         allyesconfig   gcc-14.1.0
openrisc                            defconfig   gcc-12
parisc                           allmodconfig   gcc-14.1.0
parisc                            allnoconfig   clang-20
parisc                           allyesconfig   gcc-14.1.0
parisc                              defconfig   gcc-12
parisc64                         alldefconfig   gcc-14.1.0
parisc64                            defconfig   gcc-14.1.0
powerpc                          allmodconfig   gcc-14.1.0
powerpc                           allnoconfig   clang-20
powerpc                          allyesconfig   gcc-14.1.0
powerpc                     ep8248e_defconfig   gcc-14.1.0
powerpc                     mpc5200_defconfig   gcc-14.1.0
powerpc                 mpc832x_rdb_defconfig   gcc-14.1.0
powerpc               mpc834x_itxgp_defconfig   gcc-14.1.0
riscv                            allmodconfig   gcc-14.1.0
riscv                             allnoconfig   clang-20
riscv                            allyesconfig   gcc-14.1.0
riscv                               defconfig   gcc-12
s390                             allmodconfig   clang-20
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                          rsk7264_defconfig   gcc-14.1.0
sh                           se7721_defconfig   gcc-14.1.0
sh                   sh7770_generic_defconfig   gcc-14.1.0
sh                            titan_defconfig   gcc-14.1.0
sparc                            allmodconfig   gcc-14.1.0
sparc64                             defconfig   gcc-12
um                               allmodconfig   clang-20
um                                allnoconfig   clang-20
um                               allyesconfig   clang-20
um                                  defconfig   gcc-12
um                             i386_defconfig   gcc-12
um                           x86_64_defconfig   gcc-12
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64       buildonly-randconfig-001-20240910   gcc-12
x86_64       buildonly-randconfig-002-20240910   gcc-12
x86_64       buildonly-randconfig-003-20240910   gcc-12
x86_64       buildonly-randconfig-004-20240910   gcc-12
x86_64       buildonly-randconfig-005-20240910   gcc-12
x86_64       buildonly-randconfig-006-20240910   gcc-12
x86_64                              defconfig   clang-18
x86_64                              defconfig   gcc-11
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240910   gcc-12
x86_64                randconfig-002-20240910   gcc-12
x86_64                randconfig-003-20240910   gcc-12
x86_64                randconfig-004-20240910   gcc-12
x86_64                randconfig-005-20240910   gcc-12
x86_64                randconfig-006-20240910   gcc-12
x86_64                randconfig-011-20240910   gcc-12
x86_64                randconfig-012-20240910   gcc-12
x86_64                randconfig-013-20240910   gcc-12
x86_64                randconfig-014-20240910   gcc-12
x86_64                randconfig-015-20240910   gcc-12
x86_64                randconfig-016-20240910   gcc-12
x86_64                randconfig-071-20240910   gcc-12
x86_64                randconfig-072-20240910   gcc-12
x86_64                randconfig-073-20240910   gcc-12
x86_64                randconfig-074-20240910   gcc-12
x86_64                randconfig-075-20240910   gcc-12
x86_64                randconfig-076-20240910   gcc-12
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0
xtensa                  audio_kc705_defconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
