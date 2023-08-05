Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CB17712DD
	for <lists+intel-wired-lan@lfdr.de>; Sun,  6 Aug 2023 00:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E217740304;
	Sat,  5 Aug 2023 22:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E217740304
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691274527;
	bh=IouPwji0fgvpt1+C7aEpjyExuAFYT5T3gPWIw7cmBW4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=eRjskxPbmrL0oCes56dTBdy0Yk+TBr0TtDATYU+KevZbafGbAeY5i+1b/x4PQDkcn
	 Q0k8E2WFyNvGpsJeea58VxmTkCi2Rd5+X+5v+0ZpJ3VxQo8qybatiBgI36hjWr//1f
	 VKAJ+vqrHUXLsdchO389d7m9rJoGj+a4/0sCimr/mDOwjSnjnyamIIC4OjJ/jI2P92
	 +AntIIuAmfdCryKydU3nO71O7ortIOwnbJc4GyuKlnTzin/zjkkO3jE/0z/7RaXjee
	 oJC9zUuxDGsrQ2vhmfz4IwpI2A0QgtSP9OitR3Sq8Qo1hqVSyk6alUrCBv2LggXrHP
	 VB4gZUqjB6Asw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gkoc0SOdyNZZ; Sat,  5 Aug 2023 22:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91132402AC;
	Sat,  5 Aug 2023 22:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91132402AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9C61BF85D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 22:28:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 286E860E8E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 22:27:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 286E860E8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xgCgCY-4O6Sa for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Aug 2023 22:26:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA9CC60EAA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 22:26:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA9CC60EAA
X-IronPort-AV: E=McAfee;i="6600,9927,10793"; a="434182526"
X-IronPort-AV: E=Sophos;i="6.01,258,1684825200"; d="scan'208";a="434182526"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2023 15:26:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10793"; a="904259063"
X-IronPort-AV: E=Sophos;i="6.01,258,1684825200"; d="scan'208";a="904259063"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 05 Aug 2023 15:26:57 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qSPjc-0003vN-1z
 for intel-wired-lan@lists.osuosl.org; Sat, 05 Aug 2023 22:26:56 +0000
Date: Sun, 06 Aug 2023 06:26:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308060636.IYiXIn54-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691274419; x=1722810419;
 h=date:from:to:subject:message-id;
 bh=PjSCkVL90qKlnKPhhyGQt4PjcZ0bfWTKuhLtvMj2LZg=;
 b=Qkclq3McKdWqBBJQnv35hgVVr0GsJqu4n2h2UIHYgJBxcLGovWn2DNR/
 JBueYPosgtN6FtjexKMtf7+9h5sbCWrJCsdzRTXG89MrrivbEjzysDtDd
 mJiloJEi3GYE1tN9H15p2dzy59dwt6LTxxsopiOjxGgiqzZha4yH58/z3
 nxBA5qaGM6WxgnfIJM6+d+UqTAEssl+pdcaIyCLDS1eTjCVp3Sc2NNXDP
 f2s5phLAdkVyfBXXCSAOM3yzv7sbr5U3j+LpTJSVdd/n1FsjBf+nhCc5O
 wIr2KaAON30u8E/MjDUYmDac6E257XTrW9PepV8FuEJUtxWWsjEwK5o8p
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qkclq3Mc
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 eef9630de072a21917ef5cb17ff37e4cf274be88
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: eef9630de072a21917ef5cb17ff37e4cf274be88  Merge branch 'devlink-use-spec-to-generate-split-ops'

elapsed time: 1517m

configs tested: 94
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230731   gcc  
alpha                randconfig-r034-20230803   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230801   gcc  
arc                  randconfig-r043-20230731   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230801   clang
arm                  randconfig-r024-20230731   gcc  
arm                  randconfig-r025-20230731   gcc  
arm                  randconfig-r046-20230731   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230731   clang
csky                                defconfig   gcc  
csky                 randconfig-r036-20230803   gcc  
hexagon              randconfig-r026-20230731   clang
hexagon              randconfig-r041-20230731   clang
hexagon              randconfig-r045-20230731   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230731   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230801   gcc  
i386                 randconfig-i002-20230801   gcc  
i386                 randconfig-i003-20230801   gcc  
i386                 randconfig-i004-20230801   gcc  
i386                 randconfig-i005-20230801   gcc  
i386                 randconfig-i006-20230801   gcc  
i386                 randconfig-i011-20230801   clang
i386                 randconfig-i012-20230801   clang
i386                 randconfig-i013-20230801   clang
i386                 randconfig-i014-20230801   clang
i386                 randconfig-i015-20230801   clang
i386                 randconfig-i016-20230801   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230731   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r001-20230801   gcc  
microblaze           randconfig-r003-20230801   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230801   clang
mips                 randconfig-r033-20230803   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r014-20230731   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230801   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230731   clang
riscv                randconfig-r042-20230731   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r032-20230803   gcc  
s390                 randconfig-r044-20230731   clang
sh                               allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r031-20230803   gcc  
sparc64              randconfig-r015-20230731   gcc  
sparc64              randconfig-r021-20230731   gcc  
sparc64              randconfig-r035-20230803   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x011-20230802   clang
x86_64               randconfig-x012-20230802   clang
x86_64               randconfig-x013-20230802   clang
x86_64               randconfig-x014-20230802   clang
x86_64               randconfig-x015-20230802   clang
x86_64               randconfig-x016-20230802   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
