Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2E276297D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jul 2023 05:51:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D5806105C;
	Wed, 26 Jul 2023 03:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D5806105C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690343487;
	bh=dxRUUntTJWiRBm3LFaX/DgyHsV5drUOkQDK+AF9QLxw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=RiMY+EJ3Pb1ICguBOoZ5XxTrMNML5pNu666Q/kFNGnAATVB5xcLi2CVy0QveM5FOK
	 y/Faz96CJsRXRd+fuE8X0gd+UIS81BT6jLsKjpFs/4CGUPkkanxAO1vz27UeRNmhsT
	 yH/5IKF2akHdOlm/gpXy+Cpv9/qVZPYs4InU2fX+5mdwSkRqvw+JlDI+R4oTKdKMHK
	 eRXZPgZk4fTbJeXC4Ik2gK7nPguPNJ+UW03oFLJY1nsdBKzmnq+aLm/63MzP5mwyBM
	 zGmQlyMpgsiev4e5DrMcXF9B18M63BWex9+TIqjxv/8mI0qS7eA5ZqSFZi9iQcXZUH
	 0oxQif1uaqgpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vbBT611KzIYy; Wed, 26 Jul 2023 03:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE10F60F2B;
	Wed, 26 Jul 2023 03:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE10F60F2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C28351BF86D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 03:51:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 94DAE82190
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 03:51:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94DAE82190
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eTUMpZNwWmY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jul 2023 03:51:19 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D1E4B82184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jul 2023 03:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1E4B82184
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="454280451"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="454280451"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 20:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="816508938"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; d="scan'208";a="816508938"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2023 20:51:08 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qOVYK-0000ci-04
 for intel-wired-lan@lists.osuosl.org; Wed, 26 Jul 2023 03:51:08 +0000
Date: Wed, 26 Jul 2023 11:50:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307261121.0Ek2d8By-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690343478; x=1721879478;
 h=date:from:to:subject:message-id;
 bh=p9yIW+Z/GrL/fScLUGgcsFI82PjT6IcvgYC9zTeW9Jw=;
 b=W2k5pO2T1rD0f7bGoRNbgOisW58MajrShr+zIGygwPpeVpVxkP9QMiFC
 WDB1gA4Q2L5Qz4KeG4xJwBDCVpIqsnik/CRCMdDS0OepnCb0DGk2UMjfD
 WolllDLbDd7nZIog01Vg2ebeYd6gIXwnlPpAInKaKzoVOf0RZpetoIMnX
 6OvmzIC9mNt8nHeZAo0BdNpou7mM+yzb8mNZ5fxf2X8nyxreYt+jzPcoS
 dHbMsdvuQkRWpyhS/ZcD1BZpXaJQ+OkrfqeONJpN7e8/HWSy5uEE6maNC
 rTq0+LFrDvpWcPdw6T886OkwJOZ4prXF2BFFhOAIJDs7oukWNYJN51C5F
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W2k5pO2T
Subject: [Intel-wired-lan] [tnguy-net-queue:main] BUILD SUCCESS
 284779dbf4e98753458708783af8c35630674a21
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git main
branch HEAD: 284779dbf4e98753458708783af8c35630674a21  net: stmmac: Apply redundant write work around on 4.xx too

elapsed time: 1078m

configs tested: 228
configs skipped: 23

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230725   gcc  
alpha                randconfig-r012-20230725   gcc  
alpha                randconfig-r034-20230725   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230725   gcc  
arc                  randconfig-r013-20230725   gcc  
arc                  randconfig-r016-20230725   gcc  
arc                  randconfig-r031-20230725   gcc  
arc                  randconfig-r033-20230725   gcc  
arc                  randconfig-r035-20230725   gcc  
arc                  randconfig-r043-20230725   gcc  
arc                  randconfig-r043-20230726   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r002-20230725   gcc  
arm                  randconfig-r003-20230725   gcc  
arm                  randconfig-r023-20230725   clang
arm                  randconfig-r032-20230725   gcc  
arm                  randconfig-r046-20230726   gcc  
arm                           sunxi_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230725   clang
arm64                randconfig-r003-20230725   clang
arm64                randconfig-r021-20230725   gcc  
arm64                randconfig-r024-20230725   gcc  
arm64                randconfig-r032-20230725   clang
arm64                randconfig-r035-20230725   clang
csky                                defconfig   gcc  
csky                 randconfig-r001-20230725   gcc  
csky                 randconfig-r006-20230725   gcc  
csky                 randconfig-r013-20230725   gcc  
csky                 randconfig-r016-20230725   gcc  
csky                 randconfig-r023-20230725   gcc  
hexagon                          alldefconfig   clang
hexagon              randconfig-r004-20230725   clang
hexagon              randconfig-r005-20230725   clang
hexagon              randconfig-r023-20230725   clang
hexagon              randconfig-r033-20230725   clang
hexagon              randconfig-r041-20230726   clang
hexagon              randconfig-r045-20230726   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230725   clang
i386         buildonly-randconfig-r005-20230725   clang
i386         buildonly-randconfig-r006-20230725   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230725   clang
i386                 randconfig-i002-20230725   clang
i386                 randconfig-i003-20230725   clang
i386                 randconfig-i004-20230725   clang
i386                 randconfig-i005-20230725   clang
i386                 randconfig-i006-20230725   clang
i386                 randconfig-i011-20230725   gcc  
i386                 randconfig-i012-20230725   gcc  
i386                 randconfig-i013-20230725   gcc  
i386                 randconfig-i014-20230725   gcc  
i386                 randconfig-i015-20230725   gcc  
i386                 randconfig-i016-20230725   gcc  
i386                 randconfig-r001-20230725   clang
i386                 randconfig-r003-20230725   clang
i386                 randconfig-r022-20230725   gcc  
i386                 randconfig-r026-20230725   gcc  
i386                 randconfig-r036-20230725   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r004-20230725   gcc  
loongarch            randconfig-r005-20230725   gcc  
loongarch            randconfig-r006-20230725   gcc  
loongarch            randconfig-r011-20230725   gcc  
loongarch            randconfig-r013-20230725   gcc  
loongarch            randconfig-r015-20230725   gcc  
loongarch            randconfig-r016-20230725   gcc  
loongarch            randconfig-r021-20230725   gcc  
loongarch            randconfig-r024-20230725   gcc  
loongarch            randconfig-r031-20230725   gcc  
loongarch            randconfig-r032-20230725   gcc  
loongarch            randconfig-r034-20230725   gcc  
loongarch            randconfig-r035-20230725   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230725   gcc  
m68k                 randconfig-r013-20230725   gcc  
m68k                 randconfig-r021-20230725   gcc  
m68k                 randconfig-r026-20230725   gcc  
m68k                 randconfig-r036-20230725   gcc  
microblaze           randconfig-r002-20230725   gcc  
microblaze           randconfig-r004-20230725   gcc  
microblaze           randconfig-r012-20230725   gcc  
microblaze           randconfig-r024-20230725   gcc  
microblaze           randconfig-r025-20230725   gcc  
microblaze           randconfig-r033-20230725   gcc  
microblaze           randconfig-r035-20230725   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      fuloong2e_defconfig   gcc  
mips                 randconfig-r002-20230725   gcc  
mips                 randconfig-r005-20230725   gcc  
mips                 randconfig-r033-20230725   gcc  
mips                           xway_defconfig   gcc  
nios2                         3c120_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230725   gcc  
nios2                randconfig-r014-20230725   gcc  
nios2                randconfig-r021-20230725   gcc  
nios2                randconfig-r026-20230725   gcc  
openrisc             randconfig-r001-20230725   gcc  
openrisc             randconfig-r012-20230725   gcc  
openrisc             randconfig-r016-20230725   gcc  
openrisc             randconfig-r031-20230725   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230725   gcc  
parisc               randconfig-r015-20230725   gcc  
parisc               randconfig-r016-20230725   gcc  
parisc               randconfig-r025-20230725   gcc  
parisc               randconfig-r034-20230725   gcc  
parisc               randconfig-r036-20230725   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      arches_defconfig   gcc  
powerpc                 linkstation_defconfig   gcc  
powerpc              randconfig-r006-20230725   clang
powerpc              randconfig-r023-20230725   gcc  
powerpc              randconfig-r024-20230725   gcc  
powerpc              randconfig-r031-20230725   clang
powerpc              randconfig-r032-20230725   clang
powerpc              randconfig-r035-20230725   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230725   clang
riscv                randconfig-r011-20230725   gcc  
riscv                randconfig-r012-20230725   gcc  
riscv                randconfig-r024-20230725   gcc  
riscv                randconfig-r034-20230725   clang
riscv                randconfig-r042-20230725   gcc  
riscv                randconfig-r042-20230726   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230725   clang
s390                 randconfig-r014-20230725   gcc  
s390                 randconfig-r015-20230725   gcc  
s390                 randconfig-r031-20230725   clang
s390                 randconfig-r033-20230725   clang
s390                 randconfig-r036-20230725   clang
s390                 randconfig-r044-20230725   gcc  
s390                 randconfig-r044-20230726   clang
sh                               allmodconfig   gcc  
sh                          kfr2r09_defconfig   gcc  
sh                   randconfig-r014-20230725   gcc  
sh                   randconfig-r036-20230725   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230725   gcc  
sparc                randconfig-r003-20230725   gcc  
sparc                randconfig-r014-20230725   gcc  
sparc                randconfig-r021-20230725   gcc  
sparc                randconfig-r023-20230725   gcc  
sparc                randconfig-r031-20230725   gcc  
sparc                randconfig-r035-20230725   gcc  
sparc                randconfig-r036-20230725   gcc  
sparc64              randconfig-r005-20230725   gcc  
sparc64              randconfig-r006-20230725   gcc  
sparc64              randconfig-r014-20230725   gcc  
sparc64              randconfig-r015-20230725   gcc  
sparc64              randconfig-r022-20230725   gcc  
sparc64              randconfig-r025-20230725   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r004-20230725   gcc  
um                   randconfig-r015-20230725   clang
um                   randconfig-r016-20230725   clang
um                   randconfig-r026-20230725   clang
um                   randconfig-r032-20230725   gcc  
um                   randconfig-r034-20230725   gcc  
um                   randconfig-r036-20230725   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230725   clang
x86_64       buildonly-randconfig-r002-20230725   clang
x86_64       buildonly-randconfig-r003-20230725   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r003-20230725   clang
x86_64               randconfig-r004-20230725   clang
x86_64               randconfig-r013-20230725   gcc  
x86_64               randconfig-r015-20230725   gcc  
x86_64               randconfig-r024-20230725   gcc  
x86_64               randconfig-x001-20230725   gcc  
x86_64               randconfig-x002-20230725   gcc  
x86_64               randconfig-x003-20230725   gcc  
x86_64               randconfig-x004-20230725   gcc  
x86_64               randconfig-x005-20230725   gcc  
x86_64               randconfig-x006-20230725   gcc  
x86_64               randconfig-x011-20230725   clang
x86_64               randconfig-x012-20230725   clang
x86_64               randconfig-x013-20230725   clang
x86_64               randconfig-x014-20230725   clang
x86_64               randconfig-x015-20230725   clang
x86_64               randconfig-x016-20230725   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230725   gcc  
xtensa               randconfig-r006-20230725   gcc  
xtensa               randconfig-r012-20230725   gcc  
xtensa               randconfig-r022-20230725   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
