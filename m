Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4217082386E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jan 2024 23:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9CF981322;
	Wed,  3 Jan 2024 22:45:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D9CF981322
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704321918;
	bh=Mp8b58QhGOgEzao3Au/XVHNotZaIlYwUPu7se6eqLgI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k1jeqCuqId63dH9E+mcjDyPI0ZTtehoSQlZWJSb0yR96u09BzWQrQWA67B+uDEZcB
	 2TTFdzFHaQmC+ygQEdg4e6TXBd8qLxVoGkzs6heU1BSs1JNjNBT7cbDdWL3kzl31Ap
	 VFU1/mZu5NfoFTU+zQ9bWu2HHvDQOhPmjfB0u+U35SliFuD6PnvB7QnMry37WdkgIv
	 2SvobPeZ3qRR0q1quuhbXbEJU/am5dxYfsZ0rHglsmzXdCBhu+iFLt5ajCABhZpKbY
	 ZWIKyIgcOQ1tjYvzdEiAp0IcGxhanXwJu4GxycXwlPWohfjHXoBYQ64v6LJaYjjIyN
	 WK29duhREqIYg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JobhE6vEvC5g; Wed,  3 Jan 2024 22:45:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 81CB781318;
	Wed,  3 Jan 2024 22:45:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 81CB781318
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B65FB1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 22:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8C26260F7B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 22:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C26260F7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPrS3G0ORpSW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jan 2024 22:45:11 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9B94960AC9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jan 2024 22:45:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B94960AC9
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="461392951"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="461392951"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 14:45:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="783648173"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="783648173"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jan 2024 14:45:00 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rL9ys-000Mdo-2x
 for intel-wired-lan@lists.osuosl.org; Wed, 03 Jan 2024 22:44:58 +0000
Date: Thu, 04 Jan 2024 06:44:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202401040605.dxHJxXIj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704321911; x=1735857911;
 h=date:from:to:subject:message-id;
 bh=MvWmerFYP6hD/P/mRZtOI7x1Z9gR3teS/dPxuqJQV7w=;
 b=E4FFLMk7Yzgipft1XcupnkCJuu0+1lnYl3RY8qnubVo5pAuVYTBwxPUS
 ahkI8rpjDoIIzbKioAIW2qtSempLP9DnEOAtZfNF2cdbHJ9D6UzDbGmbL
 VBuuCN8oI5BQThh0raF6x2IoqKsIeIGzGRqTLekibCduh15aNa+1ah7cg
 CV3N2CWQS97lAeSpFIxxPFLJdlolFX5B6fn7ktXSsU7OmTVC7qJSQ7kJx
 Qj0DhdL5Pf0v5Ud3RLhKqPgaB1HkINOwler/iklnZwCXbYv/KpF2agDnW
 E1IsL603m+/AjcMIe/ujLnTfUGctnJOhDbzSrw5BKWaOfq1gMbOrIERey
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E4FFLMk7
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 3027e7b15b02d2d37e3f82d6b8404f6d37e3b8cf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 3027e7b15b02d2d37e3f82d6b8404f6d37e3b8cf  ice: Fix some null pointer dereference issues in ice_ptp.c

elapsed time: 1463m

configs tested: 194
configs skipped: 2

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
arc                   randconfig-001-20240103   gcc  
arc                   randconfig-002-20240103   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                     am200epdkit_defconfig   clang
arm                         assabet_defconfig   gcc  
arm                                 defconfig   clang
arm                            dove_defconfig   clang
arm                       netwinder_defconfig   clang
arm                         orion5x_defconfig   clang
arm                   randconfig-001-20240103   clang
arm                   randconfig-002-20240103   clang
arm                   randconfig-003-20240103   clang
arm                   randconfig-004-20240103   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240103   clang
arm64                 randconfig-002-20240103   clang
arm64                 randconfig-003-20240103   clang
arm64                 randconfig-004-20240103   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240103   gcc  
csky                  randconfig-002-20240103   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240103   clang
hexagon               randconfig-002-20240103   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20240103   clang
i386         buildonly-randconfig-002-20240103   clang
i386         buildonly-randconfig-003-20240103   clang
i386         buildonly-randconfig-004-20240103   clang
i386         buildonly-randconfig-005-20240103   clang
i386         buildonly-randconfig-006-20240103   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20240103   clang
i386                  randconfig-002-20240103   clang
i386                  randconfig-003-20240103   clang
i386                  randconfig-004-20240103   clang
i386                  randconfig-005-20240103   clang
i386                  randconfig-006-20240103   clang
i386                  randconfig-011-20240103   gcc  
i386                  randconfig-012-20240103   gcc  
i386                  randconfig-013-20240103   gcc  
i386                  randconfig-014-20240103   gcc  
i386                  randconfig-015-20240103   gcc  
i386                  randconfig-016-20240103   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240103   gcc  
loongarch             randconfig-002-20240103   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
mips                      pic32mzda_defconfig   clang
mips                           xway_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240103   gcc  
nios2                 randconfig-002-20240103   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                    or1ksim_defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240103   gcc  
parisc                randconfig-002-20240103   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                    amigaone_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                     ppa8548_defconfig   gcc  
powerpc               randconfig-001-20240103   clang
powerpc               randconfig-002-20240103   clang
powerpc               randconfig-003-20240103   clang
powerpc                      tqm8xx_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64                        alldefconfig   gcc  
powerpc64             randconfig-001-20240103   clang
powerpc64             randconfig-002-20240103   clang
powerpc64             randconfig-003-20240103   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20240103   clang
riscv                 randconfig-002-20240103   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20240103   gcc  
s390                  randconfig-002-20240103   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                            migor_defconfig   gcc  
sh                    randconfig-001-20240103   gcc  
sh                    randconfig-002-20240103   gcc  
sh                           se7705_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240103   gcc  
sparc64               randconfig-002-20240103   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20240103   clang
um                    randconfig-002-20240103   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240103   clang
x86_64       buildonly-randconfig-002-20240103   clang
x86_64       buildonly-randconfig-003-20240103   clang
x86_64       buildonly-randconfig-004-20240103   clang
x86_64       buildonly-randconfig-005-20240103   clang
x86_64       buildonly-randconfig-006-20240103   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240103   gcc  
x86_64                randconfig-002-20240103   gcc  
x86_64                randconfig-003-20240103   gcc  
x86_64                randconfig-004-20240103   gcc  
x86_64                randconfig-005-20240103   gcc  
x86_64                randconfig-006-20240103   gcc  
x86_64                randconfig-011-20240103   clang
x86_64                randconfig-012-20240103   clang
x86_64                randconfig-013-20240103   clang
x86_64                randconfig-014-20240103   clang
x86_64                randconfig-015-20240103   clang
x86_64                randconfig-016-20240103   clang
x86_64                randconfig-071-20240103   clang
x86_64                randconfig-072-20240103   clang
x86_64                randconfig-073-20240103   clang
x86_64                randconfig-074-20240103   clang
x86_64                randconfig-075-20240103   clang
x86_64                randconfig-076-20240103   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa                randconfig-001-20240103   gcc  
xtensa                randconfig-002-20240103   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
