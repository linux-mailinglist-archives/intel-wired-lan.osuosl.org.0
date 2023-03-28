Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3846A6CB547
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Mar 2023 06:05:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A2F2610FE;
	Tue, 28 Mar 2023 04:05:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A2F2610FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679976300;
	bh=syXQvpuFHmpO2V8OjxyJp79SErctmEK9cbwqcfQUDxE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cc0YyfL6Vc1GF+VJ66Ez5/WUGAk0o5TgPWHJbC3Z/gGtPW0k2rMJGnRxAkgsllPo7
	 6q0iskFWgS9nrp67lt9lUeQ9y37uFadsYyCcYF1WLY1H3ysCXt36PWT+D0g1U+ItjS
	 XUm9wkgABD6hIrCqddrb5QM7/bwzn04FKX5iX4gJRNHfGAa7ZHGodr3TXLqgQwQItM
	 i5Cv6ai0xGJecPGNuradNmAZq2JBPQ95w233qYFmPus4AwRoguEHk6fdeq1kqC3Ibp
	 rStjHYDSqwom3FD10Fgv9EW5sdN9wkiNuletZoqPkLVPcLR6yJGnrQs3Y3x7VlIl/u
	 4XiBOWaYPe9Gw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K7l9PVsQCKzB; Tue, 28 Mar 2023 04:04:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2573610A6;
	Tue, 28 Mar 2023 04:04:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2573610A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA881BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 04:04:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4A610610A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 04:04:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A610610A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EBGK8WzEX4so for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Mar 2023 04:04:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CECD60E44
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CECD60E44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Mar 2023 04:04:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="328918846"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="328918846"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 21:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="857903287"
X-IronPort-AV: E=Sophos;i="5.98,296,1673942400"; d="scan'208";a="857903287"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 27 Mar 2023 21:04:48 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ph0Zj-000IGQ-0p;
 Tue, 28 Mar 2023 04:04:47 +0000
Date: Tue, 28 Mar 2023 12:04:40 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64226758.6X5s/yCQ1s9lqLed%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679976290; x=1711512290;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=W5jznt4Pvy0Yr/UZjmWJo04ljvrNVCLelqt6LfXIhtw=;
 b=KxrVANPNZamnZh+/sMEr+WgNwT/TNz7WojZh4pNns9N1iFKFtQYtx8uM
 vyevqgV8ex5yYULSbXQ1ioPX6mZG+vhhKD0neh1Y11AQJDsuh8jM6G8n+
 hEF8TI+SA/Jpl97dIK64NvvgbEGNE7tMxTInsJZOF4tUWQD4d6WTOwSxl
 mN8tU3jXBpQH6ZprGJVrpkbaRJZdoeqxrFiaBgPebxG2FMXlFFGBnSH9d
 VamZF+KFf0fJ/SMUgCIEkJt63XTwr6EDYMFB6HIecERxPdP+giGnthUbf
 Rf7TzCMvIgli5ahb0hMPCutQuE8Ulx2dgKp9p+/XVaMdSsR+jWh/AlNDE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KxrVANPN
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 4026561ee39f2f85458cc1c3f6f79261fcb1edf6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 4026561ee39f2f85458cc1c3f6f79261fcb1edf6  i40e: fix registers dump after run ethtool adapter self test

elapsed time: 721m

configs tested: 193
configs skipped: 20

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230327   gcc  
alpha        buildonly-randconfig-r003-20230326   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230327   gcc  
alpha                randconfig-r013-20230326   gcc  
alpha                randconfig-r015-20230327   gcc  
alpha                randconfig-r016-20230326   gcc  
alpha                randconfig-r025-20230326   gcc  
alpha                randconfig-r026-20230327   gcc  
alpha                randconfig-r032-20230326   gcc  
alpha                randconfig-r035-20230327   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230327   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230327   gcc  
arc                  randconfig-r021-20230326   gcc  
arc                  randconfig-r025-20230326   gcc  
arc                  randconfig-r026-20230326   gcc  
arc                  randconfig-r032-20230327   gcc  
arc                  randconfig-r034-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arc                  randconfig-r043-20230327   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r011-20230326   clang
arm                  randconfig-r021-20230326   clang
arm                  randconfig-r022-20230327   gcc  
arm                  randconfig-r033-20230327   clang
arm                  randconfig-r036-20230327   clang
arm                  randconfig-r046-20230327   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230327   gcc  
arm64                randconfig-r002-20230327   gcc  
arm64                randconfig-r016-20230326   gcc  
arm64                randconfig-r021-20230326   gcc  
arm64                randconfig-r031-20230326   clang
csky         buildonly-randconfig-r004-20230327   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230327   gcc  
csky                 randconfig-r022-20230326   gcc  
csky                 randconfig-r024-20230326   gcc  
csky                 randconfig-r031-20230326   gcc  
hexagon              randconfig-r006-20230326   clang
hexagon              randconfig-r015-20230326   clang
hexagon              randconfig-r026-20230326   clang
hexagon              randconfig-r031-20230327   clang
hexagon              randconfig-r036-20230326   clang
hexagon              randconfig-r041-20230327   clang
hexagon              randconfig-r045-20230327   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230327   gcc  
i386                 randconfig-a002-20230327   gcc  
i386                 randconfig-a003-20230327   gcc  
i386                 randconfig-a004-20230327   gcc  
i386                 randconfig-a005-20230327   gcc  
i386                 randconfig-a006-20230327   gcc  
i386                 randconfig-a011-20230327   clang
i386                 randconfig-a012-20230327   clang
i386                 randconfig-a013-20230327   clang
i386                 randconfig-a014-20230327   clang
i386                 randconfig-a015-20230327   clang
i386                 randconfig-a016-20230327   clang
i386                          randconfig-c001   gcc  
i386                 randconfig-r004-20230327   gcc  
i386                 randconfig-r031-20230327   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230327   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230326   gcc  
ia64                 randconfig-r021-20230326   gcc  
ia64                 randconfig-r025-20230327   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230322   gcc  
loongarch    buildonly-randconfig-r001-20230326   gcc  
loongarch    buildonly-randconfig-r006-20230326   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230326   gcc  
loongarch            randconfig-r023-20230327   gcc  
loongarch            randconfig-r024-20230326   gcc  
loongarch            randconfig-r033-20230326   gcc  
loongarch            randconfig-r033-20230327   gcc  
loongarch            randconfig-r036-20230327   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r005-20230327   gcc  
m68k                 randconfig-r013-20230327   gcc  
m68k                 randconfig-r016-20230327   gcc  
m68k                 randconfig-r025-20230326   gcc  
m68k                 randconfig-r031-20230326   gcc  
microblaze   buildonly-randconfig-r004-20230326   gcc  
microblaze   buildonly-randconfig-r006-20230322   gcc  
microblaze           randconfig-r004-20230327   gcc  
microblaze           randconfig-r024-20230327   gcc  
microblaze           randconfig-r036-20230326   gcc  
microblaze           randconfig-r036-20230327   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r002-20230326   gcc  
mips                 randconfig-r022-20230326   clang
mips                 randconfig-r025-20230327   gcc  
mips                 randconfig-r026-20230327   gcc  
mips                 randconfig-r033-20230326   gcc  
nios2        buildonly-randconfig-r004-20230322   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230327   gcc  
nios2                randconfig-r022-20230326   gcc  
nios2                randconfig-r024-20230327   gcc  
nios2                randconfig-r033-20230327   gcc  
nios2                randconfig-r034-20230327   gcc  
openrisc     buildonly-randconfig-r002-20230327   gcc  
openrisc             randconfig-r004-20230326   gcc  
openrisc             randconfig-r015-20230326   gcc  
openrisc             randconfig-r035-20230326   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230327   gcc  
parisc               randconfig-r005-20230326   gcc  
parisc               randconfig-r032-20230327   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                  iss476-smp_defconfig   gcc  
powerpc              randconfig-r023-20230326   gcc  
powerpc              randconfig-r025-20230327   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230326   gcc  
riscv                randconfig-r032-20230326   clang
riscv                randconfig-r034-20230327   gcc  
riscv                randconfig-r035-20230327   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                randconfig-r042-20230327   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230327   clang
s390                 randconfig-r022-20230327   clang
s390                 randconfig-r032-20230327   gcc  
s390                 randconfig-r044-20230326   gcc  
s390                 randconfig-r044-20230327   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230327   gcc  
sh                   randconfig-r021-20230327   gcc  
sparc        buildonly-randconfig-r003-20230327   gcc  
sparc        buildonly-randconfig-r005-20230327   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230327   gcc  
sparc                randconfig-r012-20230327   gcc  
sparc                randconfig-r014-20230326   gcc  
sparc                randconfig-r023-20230326   gcc  
sparc                randconfig-r031-20230327   gcc  
sparc                randconfig-r033-20230326   gcc  
sparc64      buildonly-randconfig-r002-20230327   gcc  
sparc64      buildonly-randconfig-r005-20230327   gcc  
sparc64              randconfig-r014-20230327   gcc  
sparc64              randconfig-r022-20230326   gcc  
sparc64              randconfig-r024-20230327   gcc  
sparc64              randconfig-r026-20230327   gcc  
sparc64              randconfig-r034-20230326   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230327   gcc  
x86_64               randconfig-a002-20230327   gcc  
x86_64               randconfig-a003-20230327   gcc  
x86_64               randconfig-a004-20230327   gcc  
x86_64               randconfig-a005-20230327   gcc  
x86_64               randconfig-a006-20230327   gcc  
x86_64               randconfig-a011-20230327   clang
x86_64               randconfig-a012-20230327   clang
x86_64               randconfig-a013-20230327   clang
x86_64               randconfig-a014-20230327   clang
x86_64               randconfig-a015-20230327   clang
x86_64               randconfig-a016-20230327   clang
x86_64                        randconfig-k001   clang
x86_64               randconfig-r002-20230327   gcc  
x86_64               randconfig-r003-20230327   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230327   gcc  
xtensa               randconfig-r022-20230327   gcc  
xtensa               randconfig-r025-20230327   gcc  
xtensa               randconfig-r035-20230326   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
