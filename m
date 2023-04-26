Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25006EECFA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 06:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ECA540A14;
	Wed, 26 Apr 2023 04:35:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4ECA540A14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682483751;
	bh=djNwgzw/c/wOBj2jJGz89Vj/3gBmfn1cKnB1dnGXImY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hh7HQD36askmEtvTbCtvNeJ6oro6IG0udoqvzrfLfQ9HFYriJ6LBkFSwqsiY51Hmk
	 JcLkScJxdOjzS51dJKO7jdbOeeQjng0WpTCpSjxvKmxxk6jIZWLs1lwoSE+kR06Mki
	 3EaZZ1ERWXRkyva0wBmWoWNnd2A2iHl/mNf7n5bRkKo0+vBegqunEKE2QzgPd2DDrG
	 HOO68yjd6EatL/ZMUgXXPE2RC/JOeTHPSCxYI2VfqveCrXH6pH5RW589a23BI0oedf
	 grBGrZCWYVlO0owDvPkrwqtTupFYMXOnB9pCSDNpMWbr3VIFaKkvUiZltU12fI+oii
	 UKAx89t0nYF0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0DOuNorqwoJa; Wed, 26 Apr 2023 04:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03AD1400B8;
	Wed, 26 Apr 2023 04:35:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03AD1400B8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 056161BF424
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 04:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C567D41B41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 04:35:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C567D41B41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5X7Mpn9zD4PR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 04:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6FFCC41977
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FFCC41977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 04:35:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="347015660"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="347015660"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 21:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="940045919"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="940045919"
Received: from lkp-server01.sh.intel.com (HELO 98ee5a99fc83) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 25 Apr 2023 21:35:37 -0700
Received: from kbuild by 98ee5a99fc83 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1prWsN-00007U-1r;
 Wed, 26 Apr 2023 04:35:31 +0000
Date: Wed, 26 Apr 2023 12:35:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6448a9fc.lOvQytcANfydRZe8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682483739; x=1714019739;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0L61IRtVRAhb0lH4b+WeJyZlh35bL/iNLWG37gcqmSs=;
 b=fu3/UOltl5dH4FEJG1nrVpdND5QZKWIY9q/L57g+LQi7c/0SkXi0Njc9
 g5iieLDbFrTf/OmcZqZXgcyjeXLZCKK6mtyOApTN7PO2rd03HUzxMnc3x
 VBkldKO+P8MABFxbE+leAtdFHR7NvlFsD+HACVwUYluDXVwLOmN67kIZd
 qVC8GtdZBvzzN9oCoae1CZaVIYA8goMLM1O+6CCsTaFXVpdPNaS8NqcGD
 RUUFJgUie9qseiOob2ayssPvyKv6nonY7OBFW4nC3e/SS+mc4aVP4qeVX
 /DfNBR8SED/sjuo3wyTthFuDwGUpUQIw3w6tGYRZBi8qYFHx94rW+r6e6
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fu3/UOlt
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 801b2e786b8234b54efab76aa4825b6075de3385
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
branch HEAD: 801b2e786b8234b54efab76aa4825b6075de3385  iavf: Fix out-of-bounds when setting channels on remove

elapsed time: 725m

configs tested: 146
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230423   gcc  
alpha                randconfig-r024-20230424   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                         haps_hs_defconfig   gcc  
arc                  randconfig-r021-20230424   gcc  
arc                  randconfig-r043-20230423   gcc  
arc                  randconfig-r043-20230424   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230423   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230423   gcc  
arm                  randconfig-r046-20230423   gcc  
arm                  randconfig-r046-20230424   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230423   gcc  
arm64        buildonly-randconfig-r006-20230423   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230424   gcc  
arm64                randconfig-r031-20230423   gcc  
arm64                randconfig-r035-20230423   gcc  
csky         buildonly-randconfig-r004-20230424   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r015-20230423   gcc  
csky                 randconfig-r033-20230423   gcc  
hexagon      buildonly-randconfig-r002-20230424   clang
hexagon              randconfig-r004-20230425   clang
hexagon              randconfig-r011-20230424   clang
hexagon              randconfig-r041-20230423   clang
hexagon              randconfig-r041-20230424   clang
hexagon              randconfig-r045-20230423   clang
hexagon              randconfig-r045-20230424   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230424   clang
i386                 randconfig-a002-20230424   clang
i386                 randconfig-a003-20230424   clang
i386                 randconfig-a004-20230424   clang
i386                 randconfig-a005-20230424   clang
i386                 randconfig-a006-20230424   clang
i386                 randconfig-a011-20230424   gcc  
i386                 randconfig-a012-20230424   gcc  
i386                 randconfig-a013-20230424   gcc  
i386                 randconfig-a014-20230424   gcc  
i386                 randconfig-a015-20230424   gcc  
i386                 randconfig-a016-20230424   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230424   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230425   gcc  
ia64                 randconfig-r011-20230423   gcc  
ia64                 randconfig-r012-20230423   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230423   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230425   gcc  
loongarch            randconfig-r015-20230423   gcc  
loongarch            randconfig-r034-20230423   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230424   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r013-20230423   gcc  
microblaze   buildonly-randconfig-r003-20230423   gcc  
microblaze   buildonly-randconfig-r006-20230424   gcc  
microblaze           randconfig-r012-20230423   gcc  
microblaze           randconfig-r016-20230423   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230423   clang
mips                           ip28_defconfig   clang
mips                 randconfig-r021-20230423   gcc  
mips                 randconfig-r031-20230424   gcc  
nios2        buildonly-randconfig-r004-20230423   gcc  
nios2        buildonly-randconfig-r006-20230423   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r014-20230424   gcc  
nios2                randconfig-r034-20230424   gcc  
openrisc             randconfig-r025-20230424   gcc  
openrisc             randconfig-r026-20230423   gcc  
openrisc             randconfig-r032-20230423   gcc  
openrisc             randconfig-r036-20230423   gcc  
openrisc             randconfig-r036-20230424   gcc  
parisc       buildonly-randconfig-r003-20230424   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r016-20230424   gcc  
parisc               randconfig-r022-20230424   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r006-20230424   gcc  
powerpc                      chrp32_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230424   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230424   gcc  
riscv                randconfig-r014-20230423   clang
riscv                randconfig-r025-20230423   clang
riscv                randconfig-r042-20230423   clang
riscv                randconfig-r042-20230424   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230423   clang
s390                 randconfig-r044-20230424   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r013-20230423   gcc  
sh                   randconfig-r032-20230424   gcc  
sh                   randconfig-r033-20230424   gcc  
sparc        buildonly-randconfig-r003-20230424   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230424   gcc  
sparc                randconfig-r026-20230424   gcc  
sparc64      buildonly-randconfig-r001-20230424   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230424   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230424   clang
x86_64               randconfig-a002-20230424   clang
x86_64               randconfig-a003-20230424   clang
x86_64               randconfig-a004-20230424   clang
x86_64               randconfig-a005-20230424   clang
x86_64               randconfig-a006-20230424   clang
x86_64               randconfig-a011-20230424   gcc  
x86_64               randconfig-a012-20230424   gcc  
x86_64               randconfig-a013-20230424   gcc  
x86_64               randconfig-a014-20230424   gcc  
x86_64               randconfig-a015-20230424   gcc  
x86_64               randconfig-a016-20230424   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r006-20230425   gcc  
xtensa               randconfig-r022-20230423   gcc  
xtensa               randconfig-r024-20230423   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
