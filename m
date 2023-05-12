Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140B970070A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 13:42:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3EE940499;
	Fri, 12 May 2023 11:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3EE940499
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683891776;
	bh=Os5mjGCN7jbLPdL8QT5lQgRh8uk52oL980P5HFghmkU=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K1JIJKpqDkcfo8w2ceeotHpD8HLPHTesY7N/JTuRVdXwD2dnXjBBzMYx1p69bZ6sn
	 XYfGCTGReHWWVHlA271lkt5s2btMNktpdcWmYQZAzNj2Kb+QkKbO2IDidBtwu34WBY
	 JhSN6MShLvmvT0Rn7APjkI/f31pOCQcwQd+Y9HKkyGFQ7V56Ap3yo9HA1M/cvS2W+c
	 erwlFc9HFBK2X70tTuD6enjm6SF4CmaCpdBWp4+e209oQM+zt+y8kvBLR51RUEZOLX
	 1cLdLf050NM8WD/vbQpZamM/nYuylKUGNJB2gAMwuiMfvK9CtkfTicBEpcPllJKunE
	 WBC0cNUHPd2UA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WckUmXcVSqiM; Fri, 12 May 2023 11:42:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 097E14144E;
	Fri, 12 May 2023 11:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 097E14144E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C813D1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0C3340B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0C3340B8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wZ4ZFXeEMROt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 11:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C8854029F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C8854029F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 11:42:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="350794803"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="350794803"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:42:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="700152771"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="700152771"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 12 May 2023 04:42:45 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxRAc-0004p2-06
 for intel-wired-lan@lists.osuosl.org; Fri, 12 May 2023 11:42:46 +0000
Date: Fri, 12 May 2023 19:42:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230512114242.kg7Zo%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683891768; x=1715427768;
 h=date:from:to:subject:message-id;
 bh=UJxSweCXP64gPcEcNRP694hzSzM2njXsTo64Um2UJqc=;
 b=BKcwsTskSo/LqfgZbrRX5gl7o3ZAEqMmjVUjpoaIo+sIsTuiF0qOnzim
 g0rzXyf5wkAJxMAOHiu3Rv8fGePX4FGN/Z703lQcNdUc1mdDqhU40Wvg2
 UzlmNgS7o2cQDe6x/6dpGXh7rGffN6izeYpHnwJjBlRVmf5foKVGdtQEo
 jMpJjTEQoTMWZPDleEKYoBz97/arwvLeCYCQTcgtSsEG5rDlNDHXdds4B
 4cZTdE61fmEHAyBxLitjUx875M2L+mVqJYgskkWu/gBztcMA9uktJEGOs
 yvCUwvy7dlBtn6LlSpDE96eqV5/JdA1uAfFYYLrHCZud75ZOX9zRac5Xr
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BKcwsTsk
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7e34d9ade98ba5095cfb2671624c1b1295c71eb0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: 7e34d9ade98ba5095cfb2671624c1b1295c71eb0  ice: Fix ice module unload

elapsed time: 725m

configs tested: 155
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230511   gcc  
alpha                randconfig-r006-20230511   gcc  
alpha                randconfig-r033-20230512   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230511   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230511   gcc  
arc                  randconfig-r014-20230509   gcc  
arc                  randconfig-r032-20230509   gcc  
arc                  randconfig-r032-20230512   gcc  
arc                  randconfig-r036-20230512   gcc  
arc                  randconfig-r043-20230509   gcc  
arc                  randconfig-r043-20230511   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r005-20230509   clang
arm                  randconfig-r023-20230511   clang
arm                  randconfig-r031-20230509   clang
arm                  randconfig-r036-20230509   clang
arm                  randconfig-r046-20230509   gcc  
arm                  randconfig-r046-20230511   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230509   gcc  
arm64                randconfig-r004-20230509   gcc  
arm64                randconfig-r025-20230509   clang
arm64                randconfig-r031-20230512   gcc  
arm64                randconfig-r034-20230512   gcc  
arm64                randconfig-r036-20230512   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r011-20230511   clang
hexagon              randconfig-r015-20230511   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230511   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230511   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230511   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r001-20230511   gcc  
loongarch            randconfig-r006-20230511   gcc  
loongarch            randconfig-r013-20230509   gcc  
loongarch            randconfig-r014-20230511   gcc  
loongarch            randconfig-r035-20230511   gcc  
loongarch            randconfig-r035-20230512   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230511   gcc  
m68k                 randconfig-r012-20230511   gcc  
m68k                 randconfig-r016-20230511   gcc  
m68k                 randconfig-r023-20230509   gcc  
m68k                 randconfig-r031-20230512   gcc  
microblaze           randconfig-r001-20230509   gcc  
microblaze           randconfig-r003-20230509   gcc  
microblaze           randconfig-r025-20230511   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230509   gcc  
nios2                randconfig-r021-20230509   gcc  
nios2                randconfig-r033-20230512   gcc  
openrisc             randconfig-r002-20230511   gcc  
openrisc             randconfig-r004-20230509   gcc  
openrisc             randconfig-r011-20230511   gcc  
openrisc             randconfig-r022-20230511   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r012-20230511   gcc  
parisc               randconfig-r035-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230512   clang
powerpc      buildonly-randconfig-r004-20230512   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc              randconfig-r005-20230509   gcc  
powerpc              randconfig-r033-20230509   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230511   gcc  
riscv        buildonly-randconfig-r006-20230511   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230511   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230509   gcc  
s390                 randconfig-r003-20230511   clang
s390                 randconfig-r013-20230511   gcc  
s390                 randconfig-r033-20230511   clang
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230511   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230511   gcc  
sparc                randconfig-r015-20230509   gcc  
sparc                randconfig-r016-20230509   gcc  
sparc                randconfig-r024-20230509   gcc  
sparc                randconfig-r026-20230509   gcc  
sparc                randconfig-r034-20230511   gcc  
sparc                randconfig-r035-20230512   gcc  
sparc                       sparc64_defconfig   gcc  
sparc64              randconfig-r004-20230511   gcc  
sparc64              randconfig-r006-20230509   gcc  
sparc64              randconfig-r016-20230511   gcc  
sparc64              randconfig-r032-20230512   gcc  
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
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r003-20230511   gcc  
xtensa               randconfig-r001-20230511   gcc  
xtensa               randconfig-r015-20230511   gcc  
xtensa               randconfig-r021-20230511   gcc  
xtensa               randconfig-r022-20230509   gcc  
xtensa               randconfig-r036-20230511   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
