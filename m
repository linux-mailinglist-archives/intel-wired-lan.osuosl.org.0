Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCFB6B1A31
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Mar 2023 04:54:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFA5D61263;
	Thu,  9 Mar 2023 03:54:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFA5D61263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678334058;
	bh=MdFMXh/Es3K2t16BA1ibDsdum5/TmrdnXbE0/kQMCQ0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Htp+WNLOdyFxuH0EjNVwCFEn7PUaOfGrGHBIrlYuO/5ke1r1lVHHPyvt2bzRD02kX
	 W9KikYXBGcRj3gNtp5iO+nhZFCe5Jyk5pRGyYXFFj6ueMkFIGXQmsv1yj/AUI1h3+f
	 H+gtc992UxG2zH9NgDqHZHyyhBtTkJVI1/6ZhgduvERo8NDlrgh8cTHwop4Bqo/Xei
	 N790B1x+t8Pr1N8XAJDIeZw5eX74lm5wq4F05S4Dqe+rvt/qXqjHZTeuRNteHrQdrL
	 UaM/HVs2QXBwK7m2K+pNU2BvpSxc1SZfZQYYGfNqFN33l0d+m7c2kEBPvcyKvDdxhI
	 1CHibD4SDfGLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R60m6H5OshtS; Thu,  9 Mar 2023 03:54:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 973B561257;
	Thu,  9 Mar 2023 03:54:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 973B561257
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8784B1BF27C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 03:54:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60BA2403C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 03:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60BA2403C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjOAmwmAc7LW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Mar 2023 03:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9C314012D
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9C314012D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Mar 2023 03:54:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="320174611"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="320174611"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 19:54:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="741386712"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="741386712"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 08 Mar 2023 19:54:08 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pa7Lz-0002bE-1V;
 Thu, 09 Mar 2023 03:54:07 +0000
Date: Thu, 09 Mar 2023 11:53:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6409583b.JjCmq8U9F69iBdLS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678334050; x=1709870050;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Mntx7dDovEBevnydetWr9CyWwOHyFqBZnHXkTjiZ6dI=;
 b=A8E+Uu4ZlYsRyi9sgzHXVMEu/LnY6WXViAvWAEcuBZ3EE4rK/z8GJ57k
 wIZfrkO759Kw8Vic3R2d54l/yABCleD/t/yd2xTpn5bRUbYNKOqQYojJV
 FS8OQbfUXo1AMAp1LoxNfEnFKHCF2WS0NMTTDAz08GWw3+doUmFh+lSac
 o8g+2Z0fcB2h/LrsgjBRO9IWYkKZnEywE/mMdic6KNzlU1XiGm0MbEN51
 1iyXx1A6aPgSs1CX2CooDuISvFk4G5eNHTiRkuJOFlaZgxh+vxZka88nH
 ub5FAWnXJIsLEQJuXYsCH+1eog9OfxS7iWMRyH6HNVHLxbkrmF1pbtyzG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A8E+Uu4Z
Subject: [Intel-wired-lan] [tnguy-next-queue:1GbE] BUILD SUCCESS
 6cc1b2fd736dbc4c846078459c3c00a0372247da
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 1GbE
branch HEAD: 6cc1b2fd736dbc4c846078459c3c00a0372247da  igc: Clean up and optimize watchdog task

elapsed time: 1762m

configs tested: 122
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230306   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230306   gcc  
alpha                randconfig-r031-20230306   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230305   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230305   gcc  
arm                  randconfig-r013-20230306   gcc  
arm                  randconfig-r021-20230306   gcc  
arm                  randconfig-r046-20230305   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230305   gcc  
arm64                randconfig-r015-20230306   clang
arm64                randconfig-r022-20230305   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r035-20230306   gcc  
hexagon              randconfig-r034-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r045-20230305   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r015-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230305   gcc  
loongarch            randconfig-r016-20230305   gcc  
loongarch            randconfig-r021-20230305   gcc  
loongarch            randconfig-r032-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230306   gcc  
m68k                 randconfig-r004-20230306   gcc  
m68k                 randconfig-r036-20230306   gcc  
microblaze           randconfig-r026-20230305   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r006-20230306   clang
mips                 randconfig-r033-20230306   clang
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230305   gcc  
openrisc     buildonly-randconfig-r001-20230305   gcc  
openrisc             randconfig-r005-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r022-20230306   gcc  
parisc               randconfig-r024-20230305   gcc  
parisc               randconfig-r033-20230305   gcc  
parisc               randconfig-r034-20230306   gcc  
parisc               randconfig-r035-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r003-20230305   clang
powerpc              randconfig-r025-20230306   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230305   gcc  
riscv        buildonly-randconfig-r006-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230306   clang
riscv                randconfig-r042-20230305   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230305   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r036-20230305   gcc  
sparc        buildonly-randconfig-r003-20230306   gcc  
sparc        buildonly-randconfig-r004-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230306   gcc  
sparc64      buildonly-randconfig-r002-20230306   gcc  
sparc64      buildonly-randconfig-r003-20230305   gcc  
sparc64              randconfig-r023-20230306   gcc  
sparc64              randconfig-r025-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230306   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r024-20230306   clang
x86_64               randconfig-r026-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230306   gcc  
xtensa               randconfig-r006-20230306   gcc  
xtensa               randconfig-r012-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
