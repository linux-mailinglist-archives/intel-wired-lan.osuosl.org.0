Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D986EB7B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 22 Apr 2023 08:47:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A74D404F5;
	Sat, 22 Apr 2023 06:47:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A74D404F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682146078;
	bh=+bSrZo8De10Q3qfiYSFTSipnEI2uu5Jo8RNOz+nYxL4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yD7S1o6Cm88OTiU/5kcqoxqOZlVQtHJTdZT7zXEcRunRCoK0HbH1zC29Baj3Cgh31
	 HpYJCMmrmqq7G/hC+KXwWYKz8Ih/wNdcN5BHelOkQ4REsMSxrpjM3o/rfHMs4cxNWQ
	 +4YDuSiYa1seQCOIOYe8a20RX1+cQooMNJMnUjQxzHz43FomfyFgBmfPNQ3tD3fTPS
	 XFTJWuwo+DspDjnul7WA7qcfK0TjzoKzIbxBu7P42Ny+CUoMY55IbxyLdMJ+EnDns5
	 6K7VkhVobabOxEkfEVeMDOcTIWFauvuPLgtTJgNJaXJbFQRSUwrJtEgnQ2Ic4cw3Fn
	 C0eJ+gv3rKvdQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bTz7ql9cjW6t; Sat, 22 Apr 2023 06:47:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EEF6F40106;
	Sat, 22 Apr 2023 06:47:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EEF6F40106
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8055A1C2B8C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 06:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EEDD40106
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 06:47:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EEDD40106
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R4QtLaKcVStN for <intel-wired-lan@lists.osuosl.org>;
 Sat, 22 Apr 2023 06:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B730640298
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B730640298
 for <intel-wired-lan@lists.osuosl.org>; Sat, 22 Apr 2023 06:47:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="325729316"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="325729316"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 23:47:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="669931101"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="669931101"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2023 23:47:37 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pq721-000h8O-0T;
 Sat, 22 Apr 2023 06:47:37 +0000
Date: Sat, 22 Apr 2023 14:47:07 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <644382eb.UsV4ajRitnzfqrZj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682146060; x=1713682060;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5rjSxMlLx4qtrQa+9Td1/KNJnAfsuztsQ3rd98yEouE=;
 b=GJFccWK6SzbGptXLeGYb4Pr+InwYSM4KS/wVmFKUg4jNMlgxnSSI9w3N
 HNQ/t7PybkUAz9M+kOk4mkVAAl8BTveMH286jolMDcFf1Q+QL41bWjzzk
 JN6x9lkOt6Urrvu7OjEhrg2oTJIFdbFNoexGNRftc2Dh16BNnS2E59Qqb
 GJ03E8Ue99Q3Lb0jmg4xF2X1gDcQ6w45ZoHbe5lyI5DGY0NfKdigHlnwe
 YeyGxbtY64GHVj9JKd/WceV7nlTVsRPBhAerSUiveQxsfV0GgYqZty1l6
 6p5mZHovkDJTBCfjC6dXgZyDW9NeGZQtdM1j81CZj7+RKJw/PyQ8C+CrX
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GJFccWK6
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 f9bcdcec3bf0063a010d123a9977cb7a8e240f95
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: f9bcdcec3bf0063a010d123a9977cb7a8e240f95  Merge tag 'nf-23-04-21' of git://git.kernel.org/pub/scm/linux/kernel/git/netfilter/nf

elapsed time: 878m

configs tested: 182
configs skipped: 16

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230421   gcc  
alpha        buildonly-randconfig-r006-20230421   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230421   gcc  
alpha                randconfig-r005-20230421   gcc  
alpha                randconfig-r006-20230421   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230421   gcc  
arc                  randconfig-r004-20230421   gcc  
arc                  randconfig-r022-20230421   gcc  
arc                  randconfig-r043-20230421   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230421   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r005-20230421   clang
arm                  randconfig-r026-20230421   gcc  
arm                  randconfig-r046-20230421   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r033-20230421   gcc  
csky         buildonly-randconfig-r004-20230421   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230421   gcc  
csky                 randconfig-r015-20230421   gcc  
csky                 randconfig-r022-20230421   gcc  
csky                 randconfig-r023-20230421   gcc  
csky                 randconfig-r024-20230421   gcc  
csky                 randconfig-r032-20230421   gcc  
csky                 randconfig-r036-20230421   gcc  
hexagon      buildonly-randconfig-r002-20230421   clang
hexagon              randconfig-r022-20230421   clang
hexagon              randconfig-r041-20230421   clang
hexagon              randconfig-r045-20230421   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230421   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230421   gcc  
ia64                 randconfig-r005-20230421   gcc  
ia64                 randconfig-r014-20230421   gcc  
ia64                 randconfig-r023-20230421   gcc  
ia64                 randconfig-r024-20230421   gcc  
loongarch                        alldefconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230421   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230421   gcc  
loongarch            randconfig-r011-20230421   gcc  
loongarch            randconfig-r015-20230421   gcc  
loongarch            randconfig-r024-20230421   gcc  
loongarch            randconfig-r032-20230421   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230421   gcc  
m68k         buildonly-randconfig-r002-20230421   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                 randconfig-r001-20230421   gcc  
m68k                 randconfig-r003-20230421   gcc  
m68k                 randconfig-r004-20230421   gcc  
m68k                 randconfig-r014-20230421   gcc  
m68k                 randconfig-r016-20230421   gcc  
m68k                 randconfig-r021-20230421   gcc  
m68k                 randconfig-r023-20230421   gcc  
m68k                 randconfig-r024-20230421   gcc  
m68k                 randconfig-r034-20230421   gcc  
microblaze   buildonly-randconfig-r001-20230421   gcc  
microblaze           randconfig-r006-20230421   gcc  
microblaze           randconfig-r012-20230421   gcc  
microblaze           randconfig-r013-20230421   gcc  
microblaze           randconfig-r021-20230421   gcc  
microblaze           randconfig-r022-20230421   gcc  
microblaze           randconfig-r023-20230421   gcc  
microblaze           randconfig-r024-20230421   gcc  
microblaze           randconfig-r026-20230421   gcc  
microblaze           randconfig-r034-20230421   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r013-20230421   gcc  
mips                 randconfig-r022-20230421   gcc  
mips                 randconfig-r032-20230421   clang
nios2        buildonly-randconfig-r005-20230421   gcc  
nios2        buildonly-randconfig-r006-20230421   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230421   gcc  
nios2                randconfig-r026-20230421   gcc  
nios2                randconfig-r035-20230421   gcc  
openrisc     buildonly-randconfig-r002-20230421   gcc  
openrisc     buildonly-randconfig-r003-20230421   gcc  
openrisc     buildonly-randconfig-r006-20230421   gcc  
openrisc             randconfig-r032-20230421   gcc  
parisc       buildonly-randconfig-r001-20230421   gcc  
parisc       buildonly-randconfig-r002-20230421   gcc  
parisc       buildonly-randconfig-r004-20230421   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230421   gcc  
parisc               randconfig-r011-20230421   gcc  
parisc               randconfig-r014-20230421   gcc  
parisc               randconfig-r016-20230421   gcc  
parisc               randconfig-r031-20230421   gcc  
parisc               randconfig-r036-20230421   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230421   gcc  
powerpc              randconfig-r014-20230421   clang
powerpc              randconfig-r033-20230421   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r001-20230421   gcc  
riscv                randconfig-r002-20230421   gcc  
riscv                randconfig-r004-20230421   gcc  
riscv                randconfig-r006-20230421   gcc  
riscv                randconfig-r042-20230421   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230421   clang
s390                                defconfig   gcc  
s390                 randconfig-r005-20230421   gcc  
s390                 randconfig-r006-20230421   gcc  
s390                 randconfig-r011-20230421   clang
s390                 randconfig-r012-20230421   clang
s390                 randconfig-r016-20230421   clang
s390                 randconfig-r025-20230421   clang
s390                 randconfig-r044-20230421   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230421   gcc  
sh                   randconfig-r011-20230421   gcc  
sh                   randconfig-r016-20230421   gcc  
sh                   randconfig-r032-20230421   gcc  
sh                           se7712_defconfig   gcc  
sparc        buildonly-randconfig-r005-20230421   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230421   gcc  
sparc                randconfig-r004-20230421   gcc  
sparc                randconfig-r005-20230421   gcc  
sparc                randconfig-r021-20230421   gcc  
sparc                randconfig-r023-20230421   gcc  
sparc64      buildonly-randconfig-r003-20230421   gcc  
sparc64      buildonly-randconfig-r006-20230421   gcc  
sparc64              randconfig-r002-20230421   gcc  
sparc64              randconfig-r025-20230421   gcc  
sparc64              randconfig-r031-20230421   gcc  
sparc64              randconfig-r034-20230421   gcc  
sparc64              randconfig-r035-20230421   gcc  
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
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230421   gcc  
xtensa               randconfig-r021-20230421   gcc  
xtensa               randconfig-r034-20230421   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
