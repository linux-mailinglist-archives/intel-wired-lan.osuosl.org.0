Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 415587001ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 09:55:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFEEC84848;
	Fri, 12 May 2023 07:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFEEC84848
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683878152;
	bh=yFmT+2LBchwQE9TrSv6eiLiU1ckTVBYYDVedPKCJqpY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GbjV10s/KdIX6Aop3twtM4tNCiGrQNv4feplbGdYZEWojavMf+7/kRxN5NCr5EdMZ
	 59Zo5jvhyK1TUD+8u4JvHONl8lT9bELm0t52vOQB/J008WzDNxlZiaoWLP7EuhPeQ8
	 jk+ZEk6AavQTRJj3UpJrbsaBmYjMSRx274P+HDkNeBMvZp7XxRI4GzX69Z5iypdVVp
	 HPgQqQS0L3W8KCrargR6zUiXYa2qjzGouriucemVNOMRoFQcLWh0ai/BoE4qmO2uDJ
	 aOuOQzuLt6J7mSO2fkl7zse9YWCM1PBmkRl2UCu+G11qchRA2RUooZGXTjH2H5ka+C
	 M2R1gwuQXp9SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cATiMeFirXVW; Fri, 12 May 2023 07:55:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 699DE84828;
	Fri, 12 May 2023 07:55:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 699DE84828
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BB131BF404
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 07:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E795940131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 07:55:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E795940131
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v1XHE0eM10dO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 07:55:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3F9140102
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3F9140102
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 07:55:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352978005"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="352978005"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:55:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694135273"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="694135273"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2023 00:55:42 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxNcr-0004fR-1Z
 for intel-wired-lan@lists.osuosl.org; Fri, 12 May 2023 07:55:41 +0000
Date: Fri, 12 May 2023 15:55:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230512075514.PHamV%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683878143; x=1715414143;
 h=date:from:to:subject:message-id;
 bh=JMikx+vToD0CZbZRVxRVSxpTlPFs9bZcWbkGoZUp6ws=;
 b=bxmP3dAoT0avFr86WuemOeOLiO149viB8PEhCr7TYrSWSkIMaJWDtsvy
 XwZpJU5DtTzBje6lA7JMG4gx7xXKg+5CwGEzU1im+LoWa1w5AMj4iHaF7
 9EvhuYqw0vHQ7889cqw7T/TllTUW6JXkvJiPyErOVkN5Fh/IaD3itAHuo
 cVoKRFobmwDEe66EiwgeeL5P2mwxAZjDoksLzoVA6OZ5t5twee1UkTQbs
 e89bX+Y8kayrdFnlEbXoyfV/BndeADsKrEDqWHA+UCJCz/53K8ao6f/9d
 QAOIKDymnaMTdOdqQ7H7iniKkiIVpJeD2q7T+bcxYIJGmosvuPpO1XBnz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bxmP3dAo
Subject: [Intel-wired-lan] [tnguy-next-queue:main] BUILD SUCCESS
 bc88ba0cad64a4aa85f9deca79c6f3addcd21795
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git main
branch HEAD: bc88ba0cad64a4aa85f9deca79c6f3addcd21795  Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net

elapsed time: 729m

configs tested: 211
configs skipped: 28

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230511   gcc  
alpha        buildonly-randconfig-r006-20230510   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230511   gcc  
alpha                randconfig-r013-20230511   gcc  
alpha                randconfig-r014-20230510   gcc  
alpha                randconfig-r015-20230510   gcc  
alpha                randconfig-r015-20230511   gcc  
alpha                randconfig-r016-20230509   gcc  
alpha                randconfig-r036-20230510   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230511   gcc  
arc          buildonly-randconfig-r002-20230510   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230509   gcc  
arc                  randconfig-r006-20230509   gcc  
arc                  randconfig-r011-20230509   gcc  
arc                  randconfig-r011-20230511   gcc  
arc                  randconfig-r015-20230509   gcc  
arc                  randconfig-r022-20230509   gcc  
arc                  randconfig-r043-20230509   gcc  
arc                  randconfig-r043-20230511   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r001-20230511   clang
arm          buildonly-randconfig-r005-20230512   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230509   clang
arm                  randconfig-r002-20230509   clang
arm                  randconfig-r004-20230509   clang
arm                  randconfig-r005-20230511   gcc  
arm                  randconfig-r013-20230510   gcc  
arm                  randconfig-r013-20230511   clang
arm                  randconfig-r024-20230509   gcc  
arm                  randconfig-r026-20230509   gcc  
arm                  randconfig-r046-20230509   gcc  
arm                  randconfig-r046-20230511   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230509   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r002-20230511   clang
arm64                randconfig-r013-20230509   clang
arm64                randconfig-r015-20230512   clang
arm64                randconfig-r033-20230509   gcc  
csky         buildonly-randconfig-r002-20230511   gcc  
csky         buildonly-randconfig-r003-20230510   gcc  
csky         buildonly-randconfig-r006-20230511   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r005-20230509   gcc  
csky                 randconfig-r011-20230512   gcc  
csky                 randconfig-r014-20230509   gcc  
csky                 randconfig-r021-20230511   gcc  
csky                 randconfig-r023-20230511   gcc  
csky                 randconfig-r033-20230511   gcc  
csky                 randconfig-r034-20230511   gcc  
hexagon      buildonly-randconfig-r003-20230511   clang
hexagon      buildonly-randconfig-r004-20230510   clang
hexagon      buildonly-randconfig-r004-20230511   clang
hexagon              randconfig-r005-20230509   clang
hexagon              randconfig-r014-20230512   clang
hexagon              randconfig-r016-20230511   clang
hexagon              randconfig-r016-20230512   clang
hexagon              randconfig-r024-20230509   clang
hexagon              randconfig-r031-20230509   clang
hexagon              randconfig-r032-20230512   clang
hexagon              randconfig-r034-20230510   clang
hexagon              randconfig-r035-20230512   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230511   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230511   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230511   gcc  
ia64                 randconfig-r012-20230509   gcc  
ia64                 randconfig-r015-20230509   gcc  
ia64                 randconfig-r015-20230511   gcc  
ia64                 randconfig-r031-20230509   gcc  
ia64                 randconfig-r035-20230511   gcc  
ia64                 randconfig-r036-20230511   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230510   gcc  
loongarch    buildonly-randconfig-r005-20230509   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230509   gcc  
loongarch            randconfig-r014-20230511   gcc  
loongarch            randconfig-r032-20230509   gcc  
loongarch            randconfig-r034-20230511   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230512   gcc  
m68k         buildonly-randconfig-r003-20230511   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230509   gcc  
m68k                 randconfig-r014-20230511   gcc  
m68k                 randconfig-r021-20230509   gcc  
m68k                 randconfig-r021-20230511   gcc  
m68k                 randconfig-r025-20230511   gcc  
microblaze   buildonly-randconfig-r001-20230511   gcc  
microblaze           randconfig-r002-20230509   gcc  
microblaze           randconfig-r005-20230511   gcc  
microblaze           randconfig-r023-20230509   gcc  
microblaze           randconfig-r031-20230510   gcc  
microblaze           randconfig-r031-20230511   gcc  
microblaze           randconfig-r033-20230511   gcc  
microblaze           randconfig-r033-20230512   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230512   clang
mips                 randconfig-r005-20230509   clang
mips                 randconfig-r006-20230511   gcc  
mips                 randconfig-r024-20230511   clang
nios2        buildonly-randconfig-r001-20230509   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r012-20230509   gcc  
nios2                randconfig-r016-20230511   gcc  
nios2                randconfig-r025-20230511   gcc  
nios2                randconfig-r026-20230509   gcc  
nios2                randconfig-r032-20230510   gcc  
nios2                randconfig-r036-20230509   gcc  
openrisc     buildonly-randconfig-r003-20230509   gcc  
openrisc     buildonly-randconfig-r003-20230511   gcc  
openrisc             randconfig-r013-20230511   gcc  
openrisc             randconfig-r016-20230511   gcc  
openrisc             randconfig-r025-20230509   gcc  
openrisc             randconfig-r033-20230511   gcc  
openrisc             randconfig-r035-20230511   gcc  
openrisc             randconfig-r036-20230511   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230511   gcc  
parisc               randconfig-r003-20230511   gcc  
parisc               randconfig-r022-20230509   gcc  
parisc               randconfig-r022-20230511   gcc  
parisc               randconfig-r035-20230510   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230511   gcc  
powerpc      buildonly-randconfig-r004-20230512   clang
powerpc      buildonly-randconfig-r005-20230511   gcc  
powerpc              randconfig-r006-20230509   gcc  
powerpc              randconfig-r022-20230511   gcc  
powerpc              randconfig-r026-20230511   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230512   clang
riscv        buildonly-randconfig-r006-20230512   clang
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230511   gcc  
riscv                randconfig-r021-20230509   clang
riscv                randconfig-r031-20230512   gcc  
riscv                randconfig-r034-20230509   gcc  
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230511   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230509   clang
s390                 randconfig-r014-20230511   gcc  
s390                 randconfig-r023-20230511   gcc  
s390                 randconfig-r026-20230511   gcc  
s390                 randconfig-r033-20230509   gcc  
s390                 randconfig-r033-20230510   gcc  
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230511   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r001-20230509   gcc  
sh           buildonly-randconfig-r002-20230509   gcc  
sh           buildonly-randconfig-r004-20230511   gcc  
sh           buildonly-randconfig-r006-20230509   gcc  
sh                   randconfig-r002-20230511   gcc  
sh                   randconfig-r003-20230511   gcc  
sh                   randconfig-r004-20230509   gcc  
sh                   randconfig-r004-20230511   gcc  
sh                   randconfig-r006-20230511   gcc  
sh                   randconfig-r011-20230511   gcc  
sh                   randconfig-r013-20230512   gcc  
sh                   randconfig-r024-20230511   gcc  
sparc        buildonly-randconfig-r004-20230509   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230509   gcc  
sparc                randconfig-r005-20230511   gcc  
sparc                randconfig-r012-20230512   gcc  
sparc                randconfig-r015-20230511   gcc  
sparc                randconfig-r016-20230510   gcc  
sparc                randconfig-r035-20230509   gcc  
sparc64      buildonly-randconfig-r003-20230509   gcc  
sparc64              randconfig-r006-20230509   gcc  
sparc64              randconfig-r011-20230510   gcc  
sparc64              randconfig-r012-20230510   gcc  
sparc64              randconfig-r032-20230509   gcc  
sparc64              randconfig-r032-20230511   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230509   gcc  
xtensa       buildonly-randconfig-r005-20230510   gcc  
xtensa               randconfig-r001-20230511   gcc  
xtensa               randconfig-r012-20230511   gcc  
xtensa               randconfig-r031-20230511   gcc  
xtensa               randconfig-r035-20230509   gcc  
xtensa               randconfig-r036-20230512   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
