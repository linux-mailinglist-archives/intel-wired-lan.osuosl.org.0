Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2668C6B8B47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 07:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 907346102E;
	Tue, 14 Mar 2023 06:34:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 907346102E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678775678;
	bh=sx7R1MMCO2PGhD50xheXxZ3ugd6H1JK2fev1EU0YR3U=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qcfC+GFo0804CEIXinT4R5hUDfiiv/styQqVEVrLvu6pnT4xnwn5Zqe42w/cKQB6N
	 VpYndXGDJo6nqjT5gcA4Sd1T81k1R/5ztzrD8wTtwzb8mfD8ai2h1mwIdvRrVgfZoc
	 77oKVU3AATq0sX08z/vnRuS/J4XKouvdar1WIPwOaso/mX5gUUYS7/prVeutesKjS/
	 9alOB3sVYyG+6siKeiF6B6sY4P1yh1oOSWrGTV8uy8vnDpKZ/HWjnpHVVLQ/gdbM8B
	 RR94udYlCtjsGSc0gJIERJFvvyVSb2e4ycKsyJRmu7ukumZLw9FH3R3i0hpYFQX+nk
	 MSbk+4ZrztgZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jor3YKAXSDKI; Tue, 14 Mar 2023 06:34:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E82E360E83;
	Tue, 14 Mar 2023 06:34:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E82E360E83
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD8FF1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90A2181404
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90A2181404
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0f0NhdvJVll for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 06:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23011812EE
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 23011812EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 06:34:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="336040041"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="336040041"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 23:34:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="767982493"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="767982493"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Mar 2023 23:34:21 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pbyEm-0006cc-2g;
 Tue, 14 Mar 2023 06:34:20 +0000
Date: Tue, 14 Mar 2023 14:33:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64101554.+S0o737nzPc/Fobk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678775663; x=1710311663;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vikQOWR/eq/4JYFe42hPQaoNeSlxlis2FBxlBTMxVKU=;
 b=i8kpODI8krzItIapOr0XoNMGaeLAXzn48FYFacLT65cTxcsdiB++pJZ9
 kndEnbbg7gPqzLCKHPXhmhmPjM3fYI6yfnavKntCzu8xZ1PiXpxlUE0hM
 dZa67/L7woQcK047K/rEQmxQgJLTenXoMl5ZL7ilqTTjMfcS0XJtXpR+R
 HMw+yzZIgAf3RXcE5I77qdYh6m8NdSzLc2U9EEI12tiBCgyQ1WfVdb7bk
 GQPdcs8CRHS2ohI4qfu9QTX/IKGPtM9yv672RvLw2ECZIp3+LVTVi9gwg
 VeWxHvH5DEzjrhmseCGn+7fkLVCi+zuu5rK4Qjmols0CmWIbH4uJP6jDg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i8kpODI8
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 95b744508d4d5135ae2a096ff3f0ee882bcc52b3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: 95b744508d4d5135ae2a096ff3f0ee882bcc52b3  qede: remove linux/version.h and linux/compiler.h

elapsed time: 4331m

configs tested: 399
configs skipped: 32

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230313   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230313   gcc  
alpha                randconfig-r003-20230310   gcc  
alpha                randconfig-r004-20230310   gcc  
alpha                randconfig-r005-20230312   gcc  
alpha                randconfig-r006-20230312   gcc  
alpha                randconfig-r016-20230312   gcc  
alpha                randconfig-r026-20230312   gcc  
arc                              alldefconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230313   gcc  
arc          buildonly-randconfig-r004-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230312   gcc  
arc                  randconfig-r004-20230312   gcc  
arc                  randconfig-r005-20230313   gcc  
arc                  randconfig-r014-20230312   gcc  
arc                  randconfig-r015-20230310   gcc  
arc                  randconfig-r022-20230313   gcc  
arc                  randconfig-r023-20230313   gcc  
arc                  randconfig-r024-20230312   gcc  
arc                  randconfig-r025-20230310   gcc  
arc                  randconfig-r026-20230312   gcc  
arc                  randconfig-r031-20230312   gcc  
arc                  randconfig-r034-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230313   gcc  
arm          buildonly-randconfig-r002-20230312   clang
arm          buildonly-randconfig-r005-20230312   clang
arm          buildonly-randconfig-r005-20230313   gcc  
arm                                 defconfig   gcc  
arm                            mps2_defconfig   gcc  
arm                  randconfig-c002-20230312   clang
arm                  randconfig-r013-20230313   gcc  
arm                  randconfig-r016-20230313   gcc  
arm                  randconfig-r025-20230310   clang
arm                  randconfig-r026-20230310   clang
arm                  randconfig-r035-20230312   gcc  
arm                  randconfig-r036-20230312   gcc  
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230310   clang
arm64        buildonly-randconfig-r004-20230313   gcc  
arm64        buildonly-randconfig-r006-20230313   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230312   clang
arm64                randconfig-r011-20230312   gcc  
arm64                randconfig-r012-20230313   clang
arm64                randconfig-r013-20230312   gcc  
arm64                randconfig-r022-20230312   gcc  
arm64                randconfig-r023-20230310   gcc  
arm64                randconfig-r023-20230312   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230310   gcc  
csky                 randconfig-r003-20230312   gcc  
csky                 randconfig-r011-20230313   gcc  
csky                 randconfig-r012-20230313   gcc  
csky                 randconfig-r022-20230312   gcc  
csky                 randconfig-r025-20230313   gcc  
csky                 randconfig-r026-20230310   gcc  
csky                 randconfig-r032-20230312   gcc  
csky                 randconfig-r033-20230313   gcc  
csky                 randconfig-r034-20230312   gcc  
csky                 randconfig-r035-20230312   gcc  
csky                 randconfig-r036-20230312   gcc  
hexagon              randconfig-r001-20230312   clang
hexagon              randconfig-r005-20230313   clang
hexagon              randconfig-r006-20230312   clang
hexagon              randconfig-r012-20230313   clang
hexagon              randconfig-r016-20230313   clang
hexagon              randconfig-r021-20230313   clang
hexagon              randconfig-r023-20230313   clang
hexagon              randconfig-r024-20230313   clang
hexagon              randconfig-r031-20230313   clang
hexagon              randconfig-r033-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r002-20230313   gcc  
i386         buildonly-randconfig-r003-20230313   gcc  
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230313   gcc  
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230313   clang
i386                          randconfig-a011   clang
i386                 randconfig-a012-20230313   clang
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230313   clang
i386                          randconfig-a013   clang
i386                 randconfig-a014-20230313   clang
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230313   clang
i386                          randconfig-a015   clang
i386                 randconfig-a016-20230313   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r012-20230313   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230310   gcc  
ia64         buildonly-randconfig-r005-20230312   gcc  
ia64         buildonly-randconfig-r006-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r022-20230310   gcc  
ia64                 randconfig-r032-20230313   gcc  
ia64                 randconfig-r033-20230312   gcc  
ia64                 randconfig-r036-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230313   gcc  
loongarch    buildonly-randconfig-r002-20230313   gcc  
loongarch    buildonly-randconfig-r006-20230313   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230312   gcc  
loongarch            randconfig-r002-20230313   gcc  
loongarch            randconfig-r003-20230313   gcc  
loongarch            randconfig-r005-20230310   gcc  
loongarch            randconfig-r015-20230310   gcc  
loongarch            randconfig-r022-20230312   gcc  
loongarch            randconfig-r023-20230310   gcc  
loongarch            randconfig-r031-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230310   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230313   gcc  
m68k                 randconfig-r002-20230312   gcc  
m68k                 randconfig-r003-20230310   gcc  
m68k                 randconfig-r003-20230313   gcc  
m68k                 randconfig-r011-20230312   gcc  
m68k                 randconfig-r011-20230313   gcc  
m68k                 randconfig-r012-20230310   gcc  
m68k                 randconfig-r013-20230312   gcc  
m68k                 randconfig-r014-20230313   gcc  
m68k                 randconfig-r015-20230313   gcc  
m68k                 randconfig-r016-20230310   gcc  
m68k                 randconfig-r016-20230312   gcc  
m68k                 randconfig-r024-20230310   gcc  
m68k                 randconfig-r031-20230312   gcc  
m68k                 randconfig-r032-20230312   gcc  
m68k                 randconfig-r033-20230313   gcc  
m68k                 randconfig-r034-20230313   gcc  
m68k                 randconfig-r035-20230313   gcc  
microblaze   buildonly-randconfig-r002-20230312   gcc  
microblaze   buildonly-randconfig-r006-20230312   gcc  
microblaze           randconfig-r001-20230310   gcc  
microblaze           randconfig-r001-20230312   gcc  
microblaze           randconfig-r001-20230313   gcc  
microblaze           randconfig-r003-20230312   gcc  
microblaze           randconfig-r006-20230312   gcc  
microblaze           randconfig-r013-20230312   gcc  
microblaze           randconfig-r021-20230313   gcc  
microblaze           randconfig-r022-20230310   gcc  
microblaze           randconfig-r023-20230310   gcc  
microblaze           randconfig-r025-20230312   gcc  
microblaze           randconfig-r032-20230313   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230310   gcc  
mips         buildonly-randconfig-r003-20230313   clang
mips                     cu1830-neo_defconfig   clang
mips                 decstation_r4k_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                        qi_lb60_defconfig   clang
mips                 randconfig-c004-20230312   clang
mips                 randconfig-r002-20230310   gcc  
mips                 randconfig-r004-20230312   gcc  
mips                 randconfig-r005-20230313   clang
mips                 randconfig-r014-20230313   gcc  
mips                 randconfig-r015-20230312   clang
mips                 randconfig-r021-20230312   clang
mips                 randconfig-r021-20230313   gcc  
mips                 randconfig-r022-20230313   gcc  
mips                 randconfig-r025-20230310   clang
mips                 randconfig-r033-20230312   gcc  
mips                 randconfig-r034-20230313   clang
mips                 randconfig-r035-20230312   gcc  
mips                       rbtx49xx_defconfig   clang
mips                          rm200_defconfig   clang
nios2        buildonly-randconfig-r001-20230313   gcc  
nios2        buildonly-randconfig-r002-20230310   gcc  
nios2        buildonly-randconfig-r003-20230312   gcc  
nios2        buildonly-randconfig-r004-20230310   gcc  
nios2        buildonly-randconfig-r006-20230313   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230310   gcc  
nios2                randconfig-r004-20230310   gcc  
nios2                randconfig-r006-20230310   gcc  
nios2                randconfig-r011-20230310   gcc  
nios2                randconfig-r012-20230312   gcc  
nios2                randconfig-r013-20230312   gcc  
nios2                randconfig-r014-20230312   gcc  
nios2                randconfig-r022-20230312   gcc  
nios2                randconfig-r023-20230313   gcc  
nios2                randconfig-r024-20230310   gcc  
nios2                randconfig-r026-20230312   gcc  
nios2                randconfig-r032-20230312   gcc  
openrisc     buildonly-randconfig-r001-20230312   gcc  
openrisc     buildonly-randconfig-r003-20230312   gcc  
openrisc     buildonly-randconfig-r005-20230313   gcc  
openrisc             randconfig-r005-20230310   gcc  
openrisc             randconfig-r011-20230313   gcc  
openrisc             randconfig-r032-20230312   gcc  
openrisc             randconfig-r035-20230313   gcc  
openrisc             randconfig-r036-20230312   gcc  
parisc       buildonly-randconfig-r006-20230312   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r006-20230313   gcc  
parisc               randconfig-r011-20230310   gcc  
parisc               randconfig-r013-20230312   gcc  
parisc               randconfig-r015-20230310   gcc  
parisc               randconfig-r016-20230310   gcc  
parisc               randconfig-r021-20230310   gcc  
parisc               randconfig-r025-20230312   gcc  
parisc               randconfig-r026-20230313   gcc  
parisc               randconfig-r033-20230312   gcc  
parisc               randconfig-r034-20230312   gcc  
parisc               randconfig-r036-20230312   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc      buildonly-randconfig-r001-20230312   gcc  
powerpc      buildonly-randconfig-r005-20230312   gcc  
powerpc                      makalu_defconfig   gcc  
powerpc                       maple_defconfig   gcc  
powerpc                 mpc834x_mds_defconfig   gcc  
powerpc                      pmac32_defconfig   clang
powerpc              randconfig-c003-20230312   clang
powerpc              randconfig-c003-20230312   gcc  
powerpc              randconfig-r002-20230310   clang
powerpc              randconfig-r003-20230313   gcc  
powerpc              randconfig-r004-20230313   gcc  
powerpc              randconfig-r005-20230310   clang
powerpc              randconfig-r006-20230310   clang
powerpc              randconfig-r011-20230312   gcc  
powerpc              randconfig-r012-20230310   gcc  
powerpc              randconfig-r013-20230313   clang
powerpc              randconfig-r015-20230312   gcc  
powerpc              randconfig-r015-20230313   clang
powerpc              randconfig-r016-20230312   gcc  
powerpc              randconfig-r026-20230312   gcc  
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230312   gcc  
riscv        buildonly-randconfig-r004-20230310   gcc  
riscv        buildonly-randconfig-r004-20230312   gcc  
riscv        buildonly-randconfig-r004-20230313   clang
riscv        buildonly-randconfig-r006-20230310   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-c006-20230312   clang
riscv                randconfig-r011-20230313   clang
riscv                randconfig-r012-20230312   gcc  
riscv                randconfig-r015-20230312   gcc  
riscv                randconfig-r022-20230310   gcc  
riscv                randconfig-r022-20230313   clang
riscv                randconfig-r024-20230312   gcc  
riscv                randconfig-r024-20230313   clang
riscv                randconfig-r025-20230312   gcc  
riscv                randconfig-r026-20230313   clang
riscv                randconfig-r033-20230312   clang
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230312   gcc  
s390         buildonly-randconfig-r002-20230312   gcc  
s390         buildonly-randconfig-r003-20230312   gcc  
s390         buildonly-randconfig-r004-20230310   gcc  
s390         buildonly-randconfig-r006-20230310   gcc  
s390         buildonly-randconfig-r006-20230312   gcc  
s390                                defconfig   gcc  
s390                 randconfig-c005-20230312   clang
s390                 randconfig-r001-20230312   clang
s390                 randconfig-r002-20230312   clang
s390                 randconfig-r013-20230313   clang
s390                 randconfig-r014-20230310   gcc  
s390                 randconfig-r021-20230312   gcc  
s390                 randconfig-r024-20230313   clang
s390                 randconfig-r025-20230312   gcc  
s390                 randconfig-r026-20230310   gcc  
s390                 randconfig-r026-20230313   clang
s390                 randconfig-r032-20230312   clang
s390                 randconfig-r035-20230312   clang
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r002-20230313   gcc  
sh           buildonly-randconfig-r003-20230313   gcc  
sh           buildonly-randconfig-r005-20230310   gcc  
sh           buildonly-randconfig-r005-20230313   gcc  
sh           buildonly-randconfig-r006-20230310   gcc  
sh           buildonly-randconfig-r006-20230313   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r002-20230310   gcc  
sh                   randconfig-r013-20230310   gcc  
sh                   randconfig-r014-20230312   gcc  
sh                   randconfig-r015-20230312   gcc  
sh                   randconfig-r016-20230313   gcc  
sh                   randconfig-r021-20230313   gcc  
sh                   randconfig-r023-20230313   gcc  
sh                   randconfig-r024-20230313   gcc  
sh                   randconfig-r035-20230312   gcc  
sparc        buildonly-randconfig-r005-20230310   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230313   gcc  
sparc                randconfig-r012-20230312   gcc  
sparc                randconfig-r013-20230310   gcc  
sparc                randconfig-r014-20230310   gcc  
sparc                randconfig-r014-20230313   gcc  
sparc                randconfig-r021-20230310   gcc  
sparc                randconfig-r024-20230312   gcc  
sparc                randconfig-r025-20230313   gcc  
sparc                randconfig-r034-20230312   gcc  
sparc64      buildonly-randconfig-r001-20230310   gcc  
sparc64      buildonly-randconfig-r003-20230313   gcc  
sparc64              randconfig-r001-20230310   gcc  
sparc64              randconfig-r001-20230313   gcc  
sparc64              randconfig-r002-20230312   gcc  
sparc64              randconfig-r004-20230312   gcc  
sparc64              randconfig-r004-20230313   gcc  
sparc64              randconfig-r014-20230312   gcc  
sparc64              randconfig-r014-20230313   gcc  
sparc64              randconfig-r025-20230313   gcc  
sparc64              randconfig-r034-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r004-20230313   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230313   gcc  
x86_64                        randconfig-a004   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230313   clang
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230313   clang
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230313   clang
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230313   clang
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230313   clang
x86_64                        randconfig-a016   clang
x86_64                        randconfig-c007   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r006-20230313   gcc  
x86_64               randconfig-r025-20230313   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230312   gcc  
xtensa               randconfig-r001-20230312   gcc  
xtensa               randconfig-r015-20230312   gcc  
xtensa               randconfig-r015-20230313   gcc  
xtensa               randconfig-r016-20230312   gcc  
xtensa               randconfig-r023-20230312   gcc  
xtensa               randconfig-r024-20230310   gcc  
xtensa               randconfig-r035-20230312   gcc  
xtensa               randconfig-r036-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
