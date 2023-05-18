Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F008707EBC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 May 2023 13:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBB5942890;
	Thu, 18 May 2023 11:03:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBB5942890
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684407816;
	bh=3wix3isOST9C1ObLWCtsvdoZuTzxBE/nCAAcy7pMT3E=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zZ0bKwEzA9Je1X3SKk/3SmBmo60LSPtxgB2E0lsxoXkD2GchvM5FkGUOMTotnmj+t
	 /wFYa94Rezgh0o3YK3rPr1co+EBDyKWZV56TytMbtV7din8ts+7oLsWbFGScN/kYaq
	 2QVx8f+diiO7TbAnEQanuYKazWJOguPaJEJsczEO1gwiEX+lAM2NAD+/t/9zT6p0jG
	 F4hb48/jK7zT1DpitpPwQM1dFM8uIRM2M4OQxnPlXL2q4AoOiMbeVfuk5W84KeUGLX
	 vVl26IfhjuyOXCnjRsXNY3GWDViGwA2WP8eP1pgF5jDU/1WqwNiHrUjDpBFvrsYK0s
	 prNpc/Kkm7yag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zyJKSrv9OOQH; Thu, 18 May 2023 11:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11D1642844;
	Thu, 18 May 2023 11:03:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11D1642844
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B92B91BF574
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 11:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 915A660A8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 11:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 915A660A8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76duY7u8arBv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 May 2023 11:03:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BF8660806
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BF8660806
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 May 2023 11:03:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="352052627"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="352052627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 04:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="696256816"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="696256816"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 18 May 2023 04:03:26 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pzbPp-0009y6-09
 for intel-wired-lan@lists.osuosl.org; Thu, 18 May 2023 11:03:25 +0000
Date: Thu, 18 May 2023 19:02:26 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230518110226.ULtPK%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684407807; x=1715943807;
 h=date:from:to:subject:message-id;
 bh=5rRQRLlfIRjomwZi0UVj8kk3xNogR+JhsnqiY9j8ZV4=;
 b=TADcfMxySASueIobxQTb/KWhlLL0I2EfFSlTDbQ65StPkc0y44vO1EhT
 CfCZSR4XfSWu9qoED3Z+8gwvjSin2+rA13DvzlsiXOFVdlFyeGfe6JJQi
 QkEvXv6wPTVo4ZPi8RX6wtD+LuBBvuDwkfyKvpBdRHiN+iQ5b+a4SJsNu
 jL4Q5M0B0QSwNnQp3LKWRctaunljGwqjWulE9IUizjQkx1O05Xhc4eXu5
 sYkLqftqR7dUk37kma//XFP/VR/aR+cpQD5PY6Ic0rudWiaAMvmMxQKjy
 PnAYW18OS+pf1t5PTDvTy2Ie4Awb9rGigl5vhu8EMBogP9KHGrEOPAK7p
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TADcfMxy
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2edbb716d95321d7a7ff0d691bca8511d9d4efe4
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

tree/branch: INFO setup_repo_specs: /db/releases/20230517200055/lkp-src/repo/*/tnguy-next-queue
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 2edbb716d95321d7a7ff0d691bca8511d9d4efe4  ice: Remove LAG+SRIOV mutual exclusion

elapsed time: 734m

configs tested: 108
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230517   gcc  
alpha                randconfig-r013-20230517   gcc  
alpha                randconfig-r022-20230517   gcc  
alpha                randconfig-r024-20230517   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230517   gcc  
arc                  randconfig-r023-20230517   gcc  
arc                  randconfig-r043-20230517   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r003-20230517   gcc  
arm                  randconfig-r006-20230517   gcc  
arm                  randconfig-r012-20230517   clang
arm                  randconfig-r026-20230517   clang
arm                  randconfig-r034-20230517   gcc  
arm                  randconfig-r036-20230517   gcc  
arm                  randconfig-r046-20230517   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230517   clang
arm64                               defconfig   gcc  
arm64                randconfig-r014-20230517   gcc  
csky         buildonly-randconfig-r005-20230517   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r021-20230517   gcc  
hexagon              randconfig-r002-20230517   clang
hexagon              randconfig-r041-20230517   clang
hexagon              randconfig-r045-20230517   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230517   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230517   gcc  
loongarch    buildonly-randconfig-r006-20230517   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r033-20230517   gcc  
loongarch            randconfig-r035-20230517   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230517   gcc  
m68k                 randconfig-r023-20230517   gcc  
m68k                 randconfig-r024-20230517   gcc  
microblaze   buildonly-randconfig-r004-20230517   gcc  
microblaze           randconfig-r031-20230517   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230517   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r023-20230517   gcc  
openrisc             randconfig-r011-20230517   gcc  
openrisc             randconfig-r035-20230517   gcc  
parisc       buildonly-randconfig-r005-20230517   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230517   gcc  
parisc               randconfig-r032-20230517   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230517   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230517   clang
s390                 randconfig-r004-20230517   clang
s390                 randconfig-r005-20230517   clang
s390                 randconfig-r026-20230517   gcc  
s390                 randconfig-r044-20230517   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230517   gcc  
sh                   randconfig-r021-20230517   gcc  
sh                   randconfig-r022-20230517   gcc  
sh                   randconfig-r025-20230517   gcc  
sparc        buildonly-randconfig-r002-20230517   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230517   gcc  
sparc                randconfig-r006-20230517   gcc  
sparc                randconfig-r022-20230517   gcc  
sparc64      buildonly-randconfig-r003-20230517   gcc  
sparc64              randconfig-r015-20230517   gcc  
sparc64              randconfig-r033-20230517   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a016   clang
x86_64                        randconfig-x052   clang
x86_64                        randconfig-x054   clang
x86_64                        randconfig-x056   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230517   gcc  
xtensa               randconfig-r021-20230517   gcc  
xtensa               randconfig-r025-20230517   gcc  
xtensa               randconfig-r034-20230517   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
