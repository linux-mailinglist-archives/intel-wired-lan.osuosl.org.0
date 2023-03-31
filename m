Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE66D20C9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 14:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4424D8462E;
	Fri, 31 Mar 2023 12:47:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4424D8462E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680266868;
	bh=Npv/UEA32/Fjv3ZwYLa3tblcVxGHhSlDoG27uHYocbI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FbJa77XDc05M46mEIqDlJP6tAZGfj8Y6GHkDpI/RpTB0+pUA5DcN6zvrt4MLWtUeW
	 IpFGEnhkZUbyofuiFTObmopYrzlpqMHi/2u6gFziRzCR0DEnyBu38cJDBgx7NtuA0Q
	 I/8b9/oV2uH0LCFn8HdQJcGyDmrcs7EpoPJPBTZrx5VNwVFpYSuUeYpmZlezFhvpft
	 AOVzPKzXxz2LIdafbaEJUSF7mVyAk8faeN1AV3pL61tdKNri/gYqG+IvLptcttM3m6
	 5z38WiJTTj9WEUOGXO2XhVvPkr/UXTzY1pp0tg5K+IOlemGvRA7E2B6GiPH+vswM2C
	 5vgw+LbijhMHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tyOtVbK_xM9e; Fri, 31 Mar 2023 12:47:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA8638413B;
	Fri, 31 Mar 2023 12:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA8638413B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 275BC1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F36186172C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F36186172C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xJVZryrYOOZZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 12:47:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 951A76171F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 951A76171F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:47:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="343960839"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="343960839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 05:47:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="715449821"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="715449821"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 31 Mar 2023 05:47:37 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piEAK-000Lms-2N;
 Fri, 31 Mar 2023 12:47:36 +0000
Date: Fri, 31 Mar 2023 20:46:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6426d630.dTVnnXDUwDv4Z4ky%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680266859; x=1711802859;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eQOka3zE9yBDAxNN+6nmcqgXBjNVCAThYLbjwUj5aL8=;
 b=L2az2uzlGYe7x+jEFzXGdXRUVLCt88Pfh6EMtI+Z0TJPvq3teD/5Cqi3
 Z2eL73/p8aHHt8Wf10gK8FPHczZ27rfK/DBN+vjf0M22Y8c5uTcHVRBnV
 63WLffpIbQwt8pKLQ1DxcNaZNQTE1fOZ9jBeatdzT22t9J400YcIYxpR8
 LSt1r+yj8Vx0bLZ3Jr5Ef3G4zQJOmuBvRqmOb+XmIN6gy5dHugyGAxH26
 kJjGcdLrzIFoVIp9rjz65hYsImU6Rwtlbz4ADqMOHwl1bgghR2JXIBSKQ
 wyDewRCWHlZv9q6QmzEmUPsyjJAlXntgTWdQC26fleyjh4vi1+ryRKgWx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L2az2uzl
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 79548b7984e4c606c6caaad72a0864a83855ebc9
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
branch HEAD: 79548b7984e4c606c6caaad72a0864a83855ebc9  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 801m

configs tested: 238
configs skipped: 25

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230329   gcc  
alpha        buildonly-randconfig-r004-20230329   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230329   gcc  
alpha                randconfig-r005-20230330   gcc  
alpha                randconfig-r006-20230329   gcc  
alpha                randconfig-r014-20230329   gcc  
alpha                randconfig-r024-20230329   gcc  
alpha                randconfig-r036-20230329   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230329   gcc  
arc                  randconfig-r005-20230329   gcc  
arc                  randconfig-r013-20230329   gcc  
arc                  randconfig-r016-20230329   gcc  
arc                  randconfig-r025-20230329   gcc  
arc                  randconfig-r043-20230329   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230329   gcc  
arm          buildonly-randconfig-r006-20230329   gcc  
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                  randconfig-c002-20230330   gcc  
arm                  randconfig-r024-20230329   gcc  
arm                  randconfig-r025-20230329   gcc  
arm                  randconfig-r046-20230329   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r005-20230329   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230329   gcc  
arm64                randconfig-r003-20230329   gcc  
arm64                randconfig-r023-20230331   gcc  
arm64                randconfig-r025-20230329   clang
arm64                randconfig-r036-20230329   gcc  
csky         buildonly-randconfig-r006-20230329   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230329   gcc  
csky                 randconfig-r011-20230329   gcc  
csky                 randconfig-r013-20230331   gcc  
csky                 randconfig-r025-20230331   gcc  
csky                 randconfig-r026-20230329   gcc  
csky                 randconfig-r035-20230329   gcc  
hexagon      buildonly-randconfig-r003-20230329   clang
hexagon              randconfig-r002-20230329   clang
hexagon              randconfig-r011-20230330   clang
hexagon              randconfig-r015-20230329   clang
hexagon              randconfig-r016-20230329   clang
hexagon              randconfig-r041-20230329   clang
hexagon              randconfig-r045-20230329   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230329   gcc  
ia64         buildonly-randconfig-r005-20230329   gcc  
ia64         buildonly-randconfig-r006-20230329   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230329   gcc  
ia64                 randconfig-r006-20230329   gcc  
ia64                 randconfig-r016-20230329   gcc  
ia64                 randconfig-r023-20230329   gcc  
ia64                 randconfig-r025-20230329   gcc  
ia64                 randconfig-r033-20230329   gcc  
ia64                 randconfig-r036-20230329   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230329   gcc  
loongarch    buildonly-randconfig-r004-20230329   gcc  
loongarch    buildonly-randconfig-r006-20230329   gcc  
loongarch                           defconfig   gcc  
loongarch                 loongson3_defconfig   gcc  
loongarch            randconfig-r001-20230329   gcc  
loongarch            randconfig-r002-20230329   gcc  
loongarch            randconfig-r004-20230329   gcc  
loongarch            randconfig-r006-20230329   gcc  
loongarch            randconfig-r011-20230329   gcc  
loongarch            randconfig-r015-20230329   gcc  
loongarch            randconfig-r021-20230329   gcc  
loongarch            randconfig-r022-20230329   gcc  
loongarch            randconfig-r023-20230329   gcc  
loongarch            randconfig-r025-20230329   gcc  
loongarch            randconfig-r026-20230329   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230329   gcc  
m68k         buildonly-randconfig-r004-20230329   gcc  
m68k         buildonly-randconfig-r006-20230329   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230329   gcc  
m68k                 randconfig-r015-20230329   gcc  
m68k                 randconfig-r031-20230329   gcc  
m68k                 randconfig-r035-20230329   gcc  
microblaze   buildonly-randconfig-r001-20230329   gcc  
microblaze           randconfig-r012-20230329   gcc  
microblaze           randconfig-r016-20230329   gcc  
microblaze           randconfig-r024-20230329   gcc  
microblaze           randconfig-r032-20230329   gcc  
microblaze           randconfig-r035-20230329   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230329   clang
mips                  maltasmvp_eva_defconfig   gcc  
mips                 randconfig-r001-20230329   clang
mips                 randconfig-r012-20230329   gcc  
mips                 randconfig-r021-20230329   gcc  
mips                 randconfig-r026-20230329   gcc  
nios2        buildonly-randconfig-r001-20230329   gcc  
nios2        buildonly-randconfig-r003-20230329   gcc  
nios2        buildonly-randconfig-r005-20230329   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230329   gcc  
nios2                randconfig-r011-20230329   gcc  
nios2                randconfig-r012-20230329   gcc  
nios2                randconfig-r014-20230331   gcc  
nios2                randconfig-r015-20230329   gcc  
nios2                randconfig-r024-20230329   gcc  
nios2                randconfig-r033-20230329   gcc  
nios2                randconfig-r035-20230329   gcc  
openrisc     buildonly-randconfig-r002-20230329   gcc  
openrisc     buildonly-randconfig-r003-20230329   gcc  
openrisc     buildonly-randconfig-r004-20230329   gcc  
openrisc     buildonly-randconfig-r006-20230329   gcc  
openrisc             randconfig-r006-20230329   gcc  
openrisc             randconfig-r015-20230329   gcc  
openrisc             randconfig-r021-20230329   gcc  
openrisc             randconfig-r034-20230329   gcc  
openrisc             randconfig-r036-20230329   gcc  
parisc       buildonly-randconfig-r005-20230329   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230330   gcc  
parisc               randconfig-r004-20230329   gcc  
parisc               randconfig-r006-20230329   gcc  
parisc               randconfig-r021-20230329   gcc  
parisc               randconfig-r022-20230329   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230329   clang
powerpc                   lite5200b_defconfig   clang
powerpc              randconfig-r003-20230329   gcc  
powerpc              randconfig-r011-20230329   clang
powerpc              randconfig-r024-20230329   clang
powerpc              randconfig-r026-20230329   clang
powerpc              randconfig-r032-20230329   gcc  
powerpc              randconfig-r034-20230329   gcc  
powerpc                     redwood_defconfig   gcc  
powerpc                        warp_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230330   gcc  
riscv                randconfig-r002-20230330   gcc  
riscv                randconfig-r005-20230329   gcc  
riscv                randconfig-r011-20230329   clang
riscv                randconfig-r013-20230329   clang
riscv                randconfig-r015-20230330   clang
riscv                randconfig-r016-20230329   clang
riscv                randconfig-r016-20230331   gcc  
riscv                randconfig-r021-20230329   clang
riscv                randconfig-r021-20230331   gcc  
riscv                randconfig-r022-20230329   clang
riscv                randconfig-r031-20230329   gcc  
riscv                randconfig-r036-20230329   gcc  
riscv                randconfig-r042-20230329   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230329   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230329   gcc  
s390                 randconfig-r003-20230329   gcc  
s390                 randconfig-r012-20230329   clang
s390                 randconfig-r014-20230329   clang
s390                 randconfig-r015-20230331   gcc  
s390                 randconfig-r016-20230329   clang
s390                 randconfig-r022-20230329   clang
s390                 randconfig-r023-20230329   clang
s390                 randconfig-r031-20230329   gcc  
s390                 randconfig-r032-20230329   gcc  
s390                 randconfig-r035-20230329   gcc  
s390                 randconfig-r044-20230329   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r006-20230329   gcc  
sh                   randconfig-r011-20230331   gcc  
sh                   randconfig-r023-20230329   gcc  
sparc        buildonly-randconfig-r003-20230329   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230329   gcc  
sparc                randconfig-r006-20230330   gcc  
sparc                randconfig-r022-20230329   gcc  
sparc                randconfig-r024-20230331   gcc  
sparc                randconfig-r031-20230329   gcc  
sparc                randconfig-r034-20230329   gcc  
sparc64                          alldefconfig   gcc  
sparc64      buildonly-randconfig-r003-20230329   gcc  
sparc64      buildonly-randconfig-r005-20230329   gcc  
sparc64      buildonly-randconfig-r006-20230329   gcc  
sparc64              randconfig-r003-20230329   gcc  
sparc64              randconfig-r024-20230329   gcc  
sparc64              randconfig-r025-20230329   gcc  
sparc64              randconfig-r031-20230329   gcc  
sparc64              randconfig-r034-20230329   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a016   clang
x86_64                        randconfig-c001   gcc  
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230329   gcc  
xtensa               randconfig-r012-20230329   gcc  
xtensa               randconfig-r021-20230329   gcc  
xtensa               randconfig-r025-20230329   gcc  
xtensa               randconfig-r026-20230329   gcc  
xtensa               randconfig-r032-20230329   gcc  
xtensa               randconfig-r033-20230329   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
