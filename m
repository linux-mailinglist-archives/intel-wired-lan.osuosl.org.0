Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AEF6FD568
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 May 2023 06:52:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38E7561654;
	Wed, 10 May 2023 04:52:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38E7561654
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683694344;
	bh=2ean4ujWOd8Dv6BnSPdRyInZa1iWauuh3EH0jj0WCI4=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1qmJFI2nftmO6X9YLqbCp1wjs2ACD3OWrdt77UAJmg3WEe9yOQ4kMgEm1btGJMV7f
	 ux6BC0XScdF4thDOHBRfbLqZ7gaG6eNsyPNSlii0Vk3cx7PPYJ/2R+DTKDubAnuE0g
	 zSe0goZszygKGB/q6JgZ+3e4vietr+CuUGc+hZIT/77I+dsGM4GgnCB7QHBAC+/rmW
	 A7VgFZgxPkpPqD2ELAXsIRrRIYYGn/c+XIVeXk9OSuU9QzQwoW/3gPsX8xPzec4J0W
	 tiOqbRxrzMOmJqpeHn/jJh9HqjkiMQqfVBq6c11+zpaZDLelGsQLoT5hnymxDSGk2t
	 zG+xUFxZvhTfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oi8ny5ivyax2; Wed, 10 May 2023 04:52:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3C6860FB9;
	Wed, 10 May 2023 04:52:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3C6860FB9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 281111BF328
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:52:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 025AC60FB9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:52:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 025AC60FB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sKnNh4Br4rx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 May 2023 04:52:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCE7460BB5
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCE7460BB5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 May 2023 04:52:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350161497"
X-IronPort-AV: E=Sophos;i="5.99,263,1677571200"; d="scan'208";a="350161497"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 21:52:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="788792996"
X-IronPort-AV: E=Sophos;i="5.99,263,1677571200"; d="scan'208";a="788792996"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 09 May 2023 21:52:15 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pwboE-0002uV-3C
 for intel-wired-lan@lists.osuosl.org; Wed, 10 May 2023 04:52:14 +0000
Date: Wed, 10 May 2023 12:51:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230510045157.wsyrM%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683694336; x=1715230336;
 h=date:from:to:subject:message-id;
 bh=VN89BAuCh4dBYJqb52yGETa4WXcuY6sVVKoBXxCueeQ=;
 b=izTiS54RWjxEorsNyP9Etg/hxBpV1s35wydu91XNTwRrZklyenwQbWD3
 lLQPQQzMm36MVuG4LTJTuDdSrmIJ6w9CRA5B2hx6VAmrZVDyEMzOlYtIW
 +IL0fq4i/+aDrhmHg088VurGZJ5nQWVLtnggZDEOhGN8COsv8/eWgjNSf
 +DCZ2zEUpTGMKBwuA8JvcxPZGCYDay5It/9lBhZsKZevjN6ngk3YB4OWX
 wwvR/Tuc5iz2ATDkysGegDLbzvyptZsfyC9hEo9De4qwPd3kzP/OgeCtH
 aChCS+FC0lDH9DeTzYk0nX9S7cSUofDdjipFqepYh1k3Cs/KU88zoYfDA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=izTiS54R
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 b4ab12b7509a04d0a7b1d40a4039a658f6d266ee
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
branch HEAD: b4ab12b7509a04d0a7b1d40a4039a658f6d266ee  ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()

elapsed time: 780m

configs tested: 159
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230509   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230509   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r004-20230509   gcc  
arc          buildonly-randconfig-r005-20230509   gcc  
arc          buildonly-randconfig-r006-20230509   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230509   gcc  
arc                  randconfig-r014-20230509   gcc  
arc                  randconfig-r031-20230509   gcc  
arc                  randconfig-r036-20230509   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                        neponset_defconfig   clang
arm                  randconfig-r024-20230509   gcc  
arm                         s5pv210_defconfig   clang
arm                           sama5_defconfig   gcc  
arm                          sp7021_defconfig   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230509   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r003-20230509   gcc  
arm64                randconfig-r004-20230509   gcc  
arm64                randconfig-r015-20230509   clang
csky                                defconfig   gcc  
csky                 randconfig-r014-20230509   gcc  
csky                 randconfig-r032-20230509   gcc  
hexagon              randconfig-r024-20230509   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230510   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230510   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r012-20230509   gcc  
ia64                 randconfig-r013-20230509   gcc  
ia64                 randconfig-r015-20230509   gcc  
ia64                 randconfig-r023-20230509   gcc  
ia64                 randconfig-r025-20230509   gcc  
ia64                 randconfig-r035-20230509   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230509   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230509   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230509   gcc  
m68k                 randconfig-r023-20230509   gcc  
m68k                 randconfig-r034-20230509   gcc  
microblaze   buildonly-randconfig-r002-20230509   gcc  
microblaze   buildonly-randconfig-r003-20230509   gcc  
microblaze           randconfig-r001-20230509   gcc  
microblaze           randconfig-r003-20230509   gcc  
microblaze           randconfig-r036-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230509   clang
mips                 randconfig-r031-20230509   clang
mips                 randconfig-r031-20230510   clang
mips                 randconfig-r035-20230509   clang
nios2        buildonly-randconfig-r001-20230509   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230509   gcc  
nios2                randconfig-r006-20230509   gcc  
nios2                randconfig-r021-20230509   gcc  
nios2                randconfig-r026-20230509   gcc  
nios2                randconfig-r033-20230509   gcc  
openrisc             randconfig-r004-20230509   gcc  
openrisc             randconfig-r022-20230509   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r015-20230509   gcc  
parisc               randconfig-r022-20230509   gcc  
parisc               randconfig-r024-20230509   gcc  
parisc               randconfig-r035-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       eiger_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                 mpc8560_ads_defconfig   clang
powerpc              randconfig-r005-20230509   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230509   clang
riscv        buildonly-randconfig-r004-20230509   clang
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230509   clang
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230510   clang
riscv                          rv32_defconfig   gcc  
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230509   clang
s390                                defconfig   gcc  
s390                 randconfig-r002-20230509   gcc  
s390                 randconfig-r011-20230509   clang
s390                 randconfig-r034-20230509   gcc  
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230510   clang
sh                               allmodconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                   randconfig-r014-20230509   gcc  
sh                   randconfig-r032-20230509   gcc  
sh                              ul2_defconfig   gcc  
sparc        buildonly-randconfig-r004-20230509   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230509   gcc  
sparc                randconfig-r012-20230509   gcc  
sparc                randconfig-r015-20230509   gcc  
sparc                randconfig-r016-20230509   gcc  
sparc                randconfig-r024-20230509   gcc  
sparc                randconfig-r026-20230509   gcc  
sparc64      buildonly-randconfig-r003-20230509   gcc  
sparc64              randconfig-r006-20230509   gcc  
sparc64              randconfig-r016-20230509   gcc  
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
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230509   gcc  
xtensa                generic_kc705_defconfig   gcc  
xtensa               randconfig-r004-20230509   gcc  
xtensa               randconfig-r022-20230509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
