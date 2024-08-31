Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 455A396730A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 31 Aug 2024 20:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11E64419A8;
	Sat, 31 Aug 2024 18:49:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LBYD2muUGqCB; Sat, 31 Aug 2024 18:49:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8915419A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725130160;
	bh=ChYC5kgjhURUYWMhcnyi3yykxLTUj0TtuzgyVpRM1/k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4f9+oGIdpwIyIUESlojVFpHLyimY9K69QCkW61r9IdyohSjjcIJoaBK2t9pfRQiCm
	 arYk4jHxP5EMLHoJpUIAR89D9vBxVB2H4pnhRUPi2GHiiDeWElS2SoJdzlpaFlA2aD
	 9BOtYTsW9bkPDaCa/yAUxkhUiorTBJtaOu6L2AD05vJs4eVt9mIYi9PDExSCDCEoH7
	 2Npg+J/otxxWzDLSOdarZyymY0/7UhEl+Gr1EkDzbtSpvp/PZyDl/vlDqqwA27Zcey
	 LGYKv0FH+xebYAEw3/qfC9TxjHSI4OdTTgWPwWUaQkM9wVA3WSjHW8hzc65o8BGIZy
	 36WLaPSI0sJpg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8915419A9;
	Sat, 31 Aug 2024 18:49:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE51C1BF316
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Aug 2024 18:49:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA7F5419A6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Aug 2024 18:49:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4sHGbHxsznlj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 31 Aug 2024 18:49:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 59538419A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 59538419A3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 59538419A3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 31 Aug 2024 18:49:17 +0000 (UTC)
X-CSE-ConnectionGUID: JPFyDoMIRC6aSudXzF3eGA==
X-CSE-MsgGUID: i+0nM61jT0K7sfnHKg9Gyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11181"; a="23269449"
X-IronPort-AV: E=Sophos;i="6.10,192,1719903600"; d="scan'208";a="23269449"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2024 11:49:16 -0700
X-CSE-ConnectionGUID: t+jQWAniRmufvV0/tupjCQ==
X-CSE-MsgGUID: SrUQYwbpTMSVUryX89+sGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,192,1719903600"; d="scan'208";a="101675849"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 31 Aug 2024 11:49:16 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1skT9t-00030s-1a
 for intel-wired-lan@lists.osuosl.org; Sat, 31 Aug 2024 18:49:13 +0000
Date: Sun, 01 Sep 2024 02:48:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202409010241.yuFVoQi9-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725130157; x=1756666157;
 h=date:from:to:subject:message-id;
 bh=Y27iLe5P12pHNscJBOronU7c1/i53AWFSeP0LGo8XLc=;
 b=Gzl5m6teL+oZ04hCc6NtmYUOgX1PCpyEiW03QxRIGpUwHZiNw3K2hgz4
 6gWTASEOgysHQmaWZCPPl6QI1YmqEAUgamf5s3DeQwRymxuTxX/5ure4i
 iIwLGTt/l45i+85GIa938vVrnE1q4nJV41PLuAq35PTsq4VjNiHz42Ese
 ZPfD8+SagMh2TIee5v/1VJlwJ+zj5Olk8dOuYPULw/UgSBzmjuFJ3oCJX
 5y9bzhXIrLNd8JQDqoKAhdkq/YcTsFt4itMoGWsvH8HBUh6fxG2hEb6kO
 KJWFPD137auOqKCfCPpyzjaEwthpCnKD/n9BNEGPnB0uvGJNu/uw8Nrhb
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Gzl5m6te
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 8d1cd4c8c3ead3e13b963d1342514ff1c137685d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 8d1cd4c8c3ead3e13b963d1342514ff1c137685d  ice: do not bring the VSI up, if it was down before the XDP setup

elapsed time: 1700m

configs tested: 105
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
arm                              allmodconfig   clang-20
arm                               allnoconfig   gcc-14.1.0
arm                              allyesconfig   clang-20
arm                                 defconfig   gcc-14.1.0
arm                          ep93xx_defconfig   clang-20
arm                        realview_defconfig   clang-20
arm64                            allmodconfig   clang-20
arm64                             allnoconfig   gcc-14.1.0
arm64                               defconfig   clang-20
arm64                               defconfig   gcc-14.1.0
csky                              allnoconfig   gcc-14.1.0
csky                                defconfig   gcc-14.1.0
hexagon                          allmodconfig   clang-20
hexagon                           allnoconfig   gcc-14.1.0
hexagon                          allyesconfig   clang-20
hexagon                             defconfig   gcc-14.1.0
i386                             allmodconfig   clang-18
i386                              allnoconfig   clang-18
i386                             allyesconfig   clang-18
i386                                defconfig   clang-18
loongarch                         allnoconfig   gcc-14.1.0
loongarch                           defconfig   gcc-14.1.0
m68k                              allnoconfig   gcc-14.1.0
m68k                          amiga_defconfig   clang-20
m68k                                defconfig   gcc-14.1.0
microblaze                        allnoconfig   gcc-14.1.0
microblaze                          defconfig   gcc-14.1.0
mips                              allnoconfig   gcc-14.1.0
mips                            gpr_defconfig   clang-20
mips                      malta_kvm_defconfig   clang-20
mips                         rt305x_defconfig   clang-20
nios2                            alldefconfig   clang-20
nios2                             allnoconfig   gcc-14.1.0
nios2                               defconfig   gcc-14.1.0
openrisc                          allnoconfig   clang-20
openrisc                            defconfig   gcc-12
openrisc                  or1klitex_defconfig   clang-20
parisc                            allnoconfig   clang-20
parisc                              defconfig   gcc-12
parisc                generic-64bit_defconfig   clang-20
parisc64                            defconfig   gcc-14.1.0
powerpc                    adder875_defconfig   clang-20
powerpc                           allnoconfig   clang-20
powerpc                    gamecube_defconfig   clang-20
powerpc                       maple_defconfig   clang-20
powerpc                 mpc834x_itx_defconfig   clang-20
riscv                             allnoconfig   clang-20
riscv                               defconfig   gcc-12
riscv                    nommu_k210_defconfig   clang-20
s390                             allmodconfig   gcc-14.1.0
s390                              allnoconfig   clang-20
s390                             allyesconfig   gcc-14.1.0
s390                                defconfig   gcc-12
sh                               allmodconfig   gcc-14.1.0
sh                                allnoconfig   gcc-14.1.0
sh                               allyesconfig   gcc-14.1.0
sh                                  defconfig   gcc-12
sh                           se7780_defconfig   clang-20
sh                   secureedge5410_defconfig   clang-20
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
x86_64       buildonly-randconfig-001-20240831   clang-18
x86_64       buildonly-randconfig-002-20240831   clang-18
x86_64       buildonly-randconfig-003-20240831   clang-18
x86_64       buildonly-randconfig-004-20240831   clang-18
x86_64       buildonly-randconfig-005-20240831   clang-18
x86_64       buildonly-randconfig-006-20240831   clang-18
x86_64                              defconfig   clang-18
x86_64                                  kexec   gcc-12
x86_64                randconfig-001-20240831   clang-18
x86_64                randconfig-002-20240831   clang-18
x86_64                randconfig-003-20240831   clang-18
x86_64                randconfig-004-20240831   clang-18
x86_64                randconfig-005-20240831   clang-18
x86_64                randconfig-006-20240831   clang-18
x86_64                randconfig-011-20240831   clang-18
x86_64                randconfig-012-20240831   clang-18
x86_64                randconfig-013-20240831   clang-18
x86_64                randconfig-014-20240831   clang-18
x86_64                randconfig-015-20240831   clang-18
x86_64                randconfig-016-20240831   clang-18
x86_64                randconfig-071-20240831   clang-18
x86_64                randconfig-072-20240831   clang-18
x86_64                randconfig-073-20240831   clang-18
x86_64                randconfig-074-20240831   clang-18
x86_64                randconfig-075-20240831   clang-18
x86_64                randconfig-076-20240831   clang-18
x86_64                          rhel-8.3-rust   clang-18
x86_64                               rhel-8.3   gcc-12
xtensa                            allnoconfig   gcc-14.1.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
