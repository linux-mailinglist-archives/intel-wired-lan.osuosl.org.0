Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBED7807B29
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 23:11:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7370A41E95;
	Wed,  6 Dec 2023 22:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7370A41E95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701900668;
	bh=alW71V5CkfArTOxaSdoMzlFiOQuPpN23YXQTbto79ko=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vdP62ubPHIzu1TSl6puERcjTLGNILjJEXh8HP5oxemxFpYhJG0Y1PEHoe6j5VKjGl
	 s0JVuRdDayEl6v+PRM3zBrDCf3gVz4/cjC3EPd/iBhsEM4t/46HK6mZWyg4WZYonUf
	 s/f3TUtIkb9lk2wN9O9rzLDfwiFgumRIFLJDMwazxyUlKcHz1wUD61Y0U38bkv5yET
	 NFC5uCEkVTlqnmbpNNTYt6xwzkwgIFUkns7KCUqNKX5/tqwNDvilqh2daocd6U7Q9q
	 U2SLgzulMfQ2DpNKcJwvZLmNlq3PxgfSp3Js6OAlMnCB2etGnwEhicFqjyp46yvBh8
	 gO1ECtFj27ARw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uw-V62AmSDzB; Wed,  6 Dec 2023 22:11:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E29E441E61;
	Wed,  6 Dec 2023 22:11:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E29E441E61
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 983811BF296
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 22:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 706DA8309A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 22:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 706DA8309A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5x7uf6quU5cd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 22:11:01 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 643E0822FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 22:11:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 643E0822FC
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="1211143"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; 
   d="scan'208";a="1211143"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 14:10:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="944801153"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="944801153"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 06 Dec 2023 14:10:56 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rB06W-000BTe-2t
 for intel-wired-lan@lists.osuosl.org; Wed, 06 Dec 2023 22:10:53 +0000
Date: Thu, 07 Dec 2023 06:09:53 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312070651.8cIQWLSj-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701900662; x=1733436662;
 h=date:from:to:subject:message-id;
 bh=7Au3YOkiYSDiabPZj+rrWzH5Wk0Hi0zN+2cztfHp2ak=;
 b=nVmmApmW1bE9JzA5vxP1SKwMxV+jI2k18TrsJ3REkgj4Ls5qYAT09N9J
 iEN2G1E3viQDaq12YtS6HWqYCBSj80KnMC8+Ahxg+0Ymc/cHqIV5XNT1i
 GiHf/pxg11Vcwz4o1/iPfUXJJrPjo0W+5HFYpHlZtdMLRq90+ZksaVn1/
 Rg59RU8O/mIddZjeHP4EON+ntg9huD+RA2Z7Qc6jQ4v7EDard6wW8O2nY
 6L6+UkM63Mn+VDxxfGb5tqUMnYlAt7hEkPJx5x0EtWPQY1kv4spJI5Sl4
 pBbcmm1V1VbSl/czx3oi1Xsr7qeVEiGlXb/wcC9vpVedzt+LFXreRsA0w
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nVmmApmW
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 5e53cf80158c1bb70fb957621831a3348bb6ea43
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: 5e53cf80158c1bb70fb957621831a3348bb6ea43  ice: add documentation for FW logging

elapsed time: 1462m

configs tested: 177
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
arc                         haps_hs_defconfig   gcc  
arc                   randconfig-001-20231206   gcc  
arc                   randconfig-002-20231206   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                          pxa910_defconfig   gcc  
arm                   randconfig-001-20231206   clang
arm                   randconfig-002-20231206   clang
arm                   randconfig-003-20231206   clang
arm                   randconfig-004-20231206   clang
arm                           spitz_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231206   clang
arm64                 randconfig-002-20231206   clang
arm64                 randconfig-003-20231206   clang
arm64                 randconfig-004-20231206   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231206   gcc  
csky                  randconfig-002-20231206   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231206   clang
hexagon               randconfig-002-20231206   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231206   clang
i386         buildonly-randconfig-002-20231206   clang
i386         buildonly-randconfig-003-20231206   clang
i386         buildonly-randconfig-004-20231206   clang
i386         buildonly-randconfig-005-20231206   clang
i386         buildonly-randconfig-006-20231206   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231206   clang
i386                  randconfig-002-20231206   clang
i386                  randconfig-003-20231206   clang
i386                  randconfig-004-20231206   clang
i386                  randconfig-005-20231206   clang
i386                  randconfig-006-20231206   clang
i386                  randconfig-011-20231206   gcc  
i386                  randconfig-012-20231206   gcc  
i386                  randconfig-013-20231206   gcc  
i386                  randconfig-014-20231206   gcc  
i386                  randconfig-015-20231206   gcc  
i386                  randconfig-016-20231206   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231206   gcc  
loongarch             randconfig-002-20231206   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                          hp300_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                           mtx1_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231206   gcc  
nios2                 randconfig-002-20231206   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231206   gcc  
parisc                randconfig-002-20231206   gcc  
parisc64                            defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                 canyonlands_defconfig   gcc  
powerpc               randconfig-001-20231206   clang
powerpc               randconfig-002-20231206   clang
powerpc               randconfig-003-20231206   clang
powerpc                     tqm5200_defconfig   clang
powerpc                     tqm8548_defconfig   gcc  
powerpc64             randconfig-001-20231206   clang
powerpc64             randconfig-002-20231206   clang
powerpc64             randconfig-003-20231206   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231206   clang
riscv                 randconfig-002-20231206   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231206   gcc  
s390                  randconfig-002-20231206   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                    randconfig-001-20231206   gcc  
sh                    randconfig-002-20231206   gcc  
sh                          rsk7269_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231206   gcc  
sparc64               randconfig-002-20231206   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231206   clang
um                    randconfig-002-20231206   clang
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231206   clang
x86_64       buildonly-randconfig-002-20231206   clang
x86_64       buildonly-randconfig-003-20231206   clang
x86_64       buildonly-randconfig-004-20231206   clang
x86_64       buildonly-randconfig-005-20231206   clang
x86_64       buildonly-randconfig-006-20231206   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231206   gcc  
x86_64                randconfig-002-20231206   gcc  
x86_64                randconfig-003-20231206   gcc  
x86_64                randconfig-004-20231206   gcc  
x86_64                randconfig-005-20231206   gcc  
x86_64                randconfig-006-20231206   gcc  
x86_64                randconfig-011-20231206   clang
x86_64                randconfig-012-20231206   clang
x86_64                randconfig-013-20231206   clang
x86_64                randconfig-014-20231206   clang
x86_64                randconfig-015-20231206   clang
x86_64                randconfig-016-20231206   clang
x86_64                randconfig-071-20231206   clang
x86_64                randconfig-072-20231206   clang
x86_64                randconfig-073-20231206   clang
x86_64                randconfig-074-20231206   clang
x86_64                randconfig-075-20231206   clang
x86_64                randconfig-076-20231206   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231206   gcc  
xtensa                randconfig-002-20231206   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
