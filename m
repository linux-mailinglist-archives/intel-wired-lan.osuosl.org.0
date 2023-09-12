Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E62579D0CD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 14:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5EFB41B6E;
	Tue, 12 Sep 2023 12:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5EFB41B6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694520722;
	bh=/LYyUjd1T417EyWgPqe+2w+hM1Bfis0TmnBS8NVEsuo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=9UCDs2sVmtxiOm+11aV7y/ExTSHu1Ot72w2wo3Q6PNC0Pw8JIbNzPuWdzyTSCbpyI
	 uCROfn/M7bXqdE2lJdVbc2y5f/uxIrPh5J47XSPluirbm+oL/lQnHPrbKuIzvFSoGa
	 RzWAmTWYoGo9lI1P/HJVPBEb74I81MPeOmUr8U5C9Al+aGe2vTOKe13sZ+mK0QQn+a
	 Vjs7DTMAZcgK/jtzCMcrNYK5KzaYMErTMoL6tD+9UffaEf03FZNjKys0aCtZmMReta
	 xR2aXHI15jtOLtAJk8uOS6PIFbY6sdHo+Iel+0BICDjb5hyrh9NokJ0mrV0oUS6HO+
	 CCe7SgYX9Pu3g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WNV7TZRCg2LJ; Tue, 12 Sep 2023 12:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C6FD41B33;
	Tue, 12 Sep 2023 12:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C6FD41B33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DD681BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DAA8F60E85
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAA8F60E85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJtcO52IOA1e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 12:11:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 83E3160D4F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 12:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83E3160D4F
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="382165965"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="382165965"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="772992187"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="772992187"
Received: from lkp-server02.sh.intel.com (HELO 1e56c5165d33) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 12 Sep 2023 05:11:35 -0700
Received: from kbuild by 1e56c5165d33 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qg2Ev-0000LL-1I
 for intel-wired-lan@lists.osuosl.org; Tue, 12 Sep 2023 12:11:33 +0000
Date: Tue, 12 Sep 2023 20:11:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202309122026.0qgM8gcv-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694520714; x=1726056714;
 h=date:from:to:subject:message-id;
 bh=Xdb/2fRibFSNYsMlYvZI6zil48LihWf3f1GHFOWyjmQ=;
 b=ArkWPfaEbw5V0Iu+GzE3mGsy1K1fSGuSbqQAoAjMlZZGaeovr04NJv0U
 j6joQ4uy/YuAsbgDr1thJz3nhzJIISI/dDs/Oyu3qlCeuj3stPAsn0CLO
 mxBBzynXxo+KUBQOh1/k7/lPJ1zIz0JFU8mFFM2yJ7NzleJzM6LFbe8np
 kByYvgviShJvc1zs1S62gtHK8TA5PTzn+F9IlziKF23giQBiGiyYJfC7x
 xIqhzT9SxYLymZI+xFJVwG3PQcn2XSotIjLtWIlxyWiHV43NtI4QLja81
 7soaeIHgc/mekkCQKZCulXh6+Q1ke14EVO1Kemk2mU0zmDIiOjqKuC2I/
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ArkWPfaE
Subject: [Intel-wired-lan] [tnguy-net-queue:40GbE] BUILD SUCCESS
 221465de6bd8090ab61267f019866e8d2dd4ea3d
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 40GbE
branch HEAD: 221465de6bd8090ab61267f019866e8d2dd4ea3d  iavf: Fix promiscuous mode configuration flow messages

elapsed time: 907m

configs tested: 149
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230912   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230912   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230912   clang
arm                  randconfig-r003-20230912   gcc  
arm                  randconfig-r006-20230912   gcc  
arm                  randconfig-r035-20230912   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r036-20230912   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r013-20230912   gcc  
hexagon               randconfig-001-20230912   clang
hexagon               randconfig-002-20230912   clang
hexagon              randconfig-r023-20230912   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230912   clang
i386         buildonly-randconfig-002-20230912   clang
i386         buildonly-randconfig-003-20230912   clang
i386         buildonly-randconfig-004-20230912   clang
i386         buildonly-randconfig-005-20230912   clang
i386         buildonly-randconfig-006-20230912   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230912   clang
i386                  randconfig-002-20230912   clang
i386                  randconfig-003-20230912   clang
i386                  randconfig-004-20230912   clang
i386                  randconfig-005-20230912   clang
i386                  randconfig-006-20230912   clang
i386                  randconfig-011-20230912   gcc  
i386                  randconfig-012-20230912   gcc  
i386                  randconfig-013-20230912   gcc  
i386                  randconfig-014-20230912   gcc  
i386                  randconfig-015-20230912   gcc  
i386                  randconfig-016-20230912   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230912   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230912   gcc  
m68k                 randconfig-r025-20230912   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r001-20230912   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r011-20230912   clang
mips                 randconfig-r024-20230912   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230912   gcc  
nios2                randconfig-r033-20230912   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230912   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc              randconfig-r014-20230912   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230912   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230912   gcc  
s390                 randconfig-r015-20230912   gcc  
s390                 randconfig-r031-20230912   clang
s390                 randconfig-r032-20230912   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r002-20230912   gcc  
sparc64              randconfig-r004-20230912   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r034-20230912   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230912   clang
x86_64       buildonly-randconfig-002-20230912   clang
x86_64       buildonly-randconfig-003-20230912   clang
x86_64       buildonly-randconfig-004-20230912   clang
x86_64       buildonly-randconfig-005-20230912   clang
x86_64       buildonly-randconfig-006-20230912   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230912   gcc  
x86_64                randconfig-002-20230912   gcc  
x86_64                randconfig-003-20230912   gcc  
x86_64                randconfig-004-20230912   gcc  
x86_64                randconfig-005-20230912   gcc  
x86_64                randconfig-006-20230912   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa               randconfig-r016-20230912   gcc  
xtensa               randconfig-r026-20230912   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
