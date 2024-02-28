Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 844DD86AE48
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 12:55:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E227F60E53;
	Wed, 28 Feb 2024 11:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VfuC74RZ-Rzp; Wed, 28 Feb 2024 11:54:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB7B260DC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709121297;
	bh=JBYLMPWQ9BVIT2WJC76BeC1dnQm94ce/HJomOYa43aE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fmIO/elUxehJPr36B3T28XBeowPf6M73WtZODpA7fcRgMISRX0TPDLXC6EvS0wyzp
	 G/9N6OiAB2rQcSxkWT+M4DhpZYbWF3pe8qQqi8b44UhVsZ/U55QSM8djGqw6+jdFbE
	 Ms9Z4KvnRoa6PM2OTeXtsL4Z92fiFlbc1pwuDBz6fTtXxMeG10bE1CFTQLgrngiC5X
	 wdJvc+Q/0uyVBDcVP2ztziiwK4n1vNIe3snBTA0SFkTlKNUiw7dfR2Rca5t1TMUIEN
	 heQ0eAWUyQSx+FhkgIoR3+j6yZ/EzptBbRzzNp1ay5isUMiPCqNluFIr8q3lny2Xll
	 v0drp++yofR4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB7B260DC2;
	Wed, 28 Feb 2024 11:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE6631BF337
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 11:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6C4A416B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 11:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ST0OtINZugVh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 11:54:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6DE61416A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DE61416A9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6DE61416A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 11:54:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="28949982"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="28949982"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 03:54:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="44938676"
Received: from lkp-server02.sh.intel.com (HELO 3c78fa4d504c) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 28 Feb 2024 03:54:51 -0800
Received: from kbuild by 3c78fa4d504c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rfIWO-000C1p-1A
 for intel-wired-lan@lists.osuosl.org; Wed, 28 Feb 2024 11:54:48 +0000
Date: Wed, 28 Feb 2024 19:54:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202402281902.PygMwTE4-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709121295; x=1740657295;
 h=date:from:to:subject:message-id;
 bh=F393L0UVkNQCek1kiB7jih2407fAlB4BNcocCk/XGnA=;
 b=MplaDvHyTZGzMJIZ03FmeocUoqorYLzi7WaxEha+YtYUHiaHU88oYf7M
 S48/ark5trBEKRfDeTA+TQQTkQyTiWwzNnZraR0rzEackQwdv3t4e1sOi
 +uAZwQQC6HXi1lx89VRBMyh9lGCAAhr0B5puSKSrZeer40osj+T1VqN7f
 QKLsiQVk7TdpFaCo1PHasiw1YGv0uOD2bE1JMXyPKUvFszQ3kr5GKEI9O
 Ro35Xg/ey4vmsxIoCnIgPYd1uWfYyFW1Xs5owGIwOEGV23lp012Rzjgxc
 2VRV7CqusHHc3PHktrDeo+Sk7bGnbMFoM3w9INObFetYEOIxqNOJ38+1W
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MplaDvHy
Subject: [Intel-wired-lan] [tnguy-next-queue:10GbE] BUILD SUCCESS
 c4b04a802d8e3996e588cbbb47756b2f9d239d78
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 10GbE
branch HEAD: c4b04a802d8e3996e588cbbb47756b2f9d239d78  bnxt_en: fix accessing vnic_info before allocating it

elapsed time: 1141m

configs tested: 163
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240228   gcc  
arc                   randconfig-002-20240228   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                   randconfig-001-20240228   clang
arm                   randconfig-002-20240228   clang
arm                   randconfig-003-20240228   clang
arm                   randconfig-004-20240228   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240228   clang
arm64                 randconfig-002-20240228   gcc  
arm64                 randconfig-003-20240228   gcc  
arm64                 randconfig-004-20240228   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240228   gcc  
csky                  randconfig-002-20240228   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240228   clang
hexagon               randconfig-002-20240228   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240228   clang
i386         buildonly-randconfig-002-20240228   clang
i386         buildonly-randconfig-003-20240228   clang
i386         buildonly-randconfig-004-20240228   clang
i386         buildonly-randconfig-005-20240228   gcc  
i386         buildonly-randconfig-006-20240228   clang
i386                                defconfig   clang
i386                  randconfig-001-20240228   clang
i386                  randconfig-002-20240228   clang
i386                  randconfig-003-20240228   gcc  
i386                  randconfig-004-20240228   clang
i386                  randconfig-005-20240228   clang
i386                  randconfig-006-20240228   gcc  
i386                  randconfig-011-20240228   clang
i386                  randconfig-012-20240228   clang
i386                  randconfig-013-20240228   gcc  
i386                  randconfig-014-20240228   gcc  
i386                  randconfig-015-20240228   gcc  
i386                  randconfig-016-20240228   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240228   gcc  
loongarch             randconfig-002-20240228   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240228   gcc  
nios2                 randconfig-002-20240228   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240228   gcc  
parisc                randconfig-002-20240228   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20240228   clang
powerpc               randconfig-002-20240228   clang
powerpc               randconfig-003-20240228   gcc  
powerpc64             randconfig-001-20240228   clang
powerpc64             randconfig-002-20240228   clang
powerpc64             randconfig-003-20240228   gcc  
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240228   clang
riscv                 randconfig-002-20240228   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240228   clang
s390                  randconfig-002-20240228   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20240228   gcc  
sh                    randconfig-002-20240228   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240228   gcc  
sparc64               randconfig-002-20240228   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240228   clang
um                    randconfig-002-20240228   clang
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240228   gcc  
x86_64       buildonly-randconfig-002-20240228   clang
x86_64       buildonly-randconfig-003-20240228   clang
x86_64       buildonly-randconfig-004-20240228   gcc  
x86_64       buildonly-randconfig-005-20240228   gcc  
x86_64       buildonly-randconfig-006-20240228   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240228   clang
x86_64                randconfig-002-20240228   gcc  
x86_64                randconfig-003-20240228   gcc  
x86_64                randconfig-004-20240228   gcc  
x86_64                randconfig-005-20240228   gcc  
x86_64                randconfig-006-20240228   clang
x86_64                randconfig-011-20240228   clang
x86_64                randconfig-012-20240228   clang
x86_64                randconfig-013-20240228   clang
x86_64                randconfig-014-20240228   gcc  
x86_64                randconfig-015-20240228   gcc  
x86_64                randconfig-016-20240228   gcc  
x86_64                randconfig-071-20240228   gcc  
x86_64                randconfig-072-20240228   clang
x86_64                randconfig-073-20240228   gcc  
x86_64                randconfig-074-20240228   gcc  
x86_64                randconfig-075-20240228   clang
x86_64                randconfig-076-20240228   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240228   gcc  
xtensa                randconfig-002-20240228   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
