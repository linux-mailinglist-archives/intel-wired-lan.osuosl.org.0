Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC2E6FBEC6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 07:38:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57218615B4;
	Tue,  9 May 2023 05:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57218615B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683610690;
	bh=8vj0QAm/jJ3Qi64NXRd3lOfBgDVhLzj5QxSZGStsqgQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Xuext4Fo5sNC/y4f7QY/zqiT4Wz4ZVfe64SJMepCSCql6cPttg+QKkAOmDnWF0ghk
	 /ExItvjAxMTD7oUr3LLc5Zn5YsKJ0HOpqRTrGtJ6w+dCam/x8/Sm9FoMAnR6EdKNtd
	 i/w6Lt2SU5vgUbxxaSb1GRI9HujLNJrsx/vDnFGvzVFlGemjYA4kquUHG+ZnnF9HlO
	 NfeVg2wXIfuSQ7GKbtuq6tFf/BqhetfF0dfWQWzCE11ifko1bry6OCEb3Qi14+3pb9
	 K3s4Nx6t4UShfhhxhi72XRfkPDds0p9xvUs3Y/dMTxGrTLC+8rGqn2/0exQgABXIJI
	 /5P812H0wXwzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z-cxiM6LnxbG; Tue,  9 May 2023 05:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16FB861485;
	Tue,  9 May 2023 05:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16FB861485
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 526611BF306
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 05:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A68C40339
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 05:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A68C40339
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2pMkB3x5J8hK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 05:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B0F44025D
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2B0F44025D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 05:38:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="329435564"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="329435564"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 22:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="692841464"
X-IronPort-AV: E=Sophos;i="5.99,261,1677571200"; d="scan'208";a="692841464"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 May 2023 22:38:01 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pwG2y-0001mT-2u
 for intel-wired-lan@lists.osuosl.org; Tue, 09 May 2023 05:38:00 +0000
Date: Tue, 09 May 2023 13:37:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230509053708.pEmeI%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683610683; x=1715146683;
 h=date:from:to:subject:message-id;
 bh=AmOb3lioRA6HI18zY5TUfSl8Q+1J9ZVZmN1Y/6M0ExE=;
 b=F3y4YeIlurT9EV0Mjf+ncuNIVhk2n6lifV62ldgt9ZHGAccB67nFwbS5
 +nhA2d9fQnbsJ/5kn6YNqmbQwXfc7V1ZDFZ4IKY8T6elyXqekI3T5moIs
 jIuYcziJ+FGjXhVcmoN6Eh/GTDlRwSySh+ZZXP0UjbVjaAmKEbxHJrYyT
 kJqznnT0gkn8Kzn4s838gTDGhoafEKeX9ZmoJUrm5H6L33qYpYbmA0Mvd
 QY5msiJiNcUBvklv2EdswfzHUjRempJDYZWDFpTNWH+dL3DG8/BkQK80c
 Abmdt4pZlZc/ScSf5zPiRR0gPIUGkDlS23QwDP7YtF2E8QI5xD4f5WGX6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F3y4YeIl
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1ff1102d4d1b406c3eafdea6bf1372f24207c2d3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: 1ff1102d4d1b406c3eafdea6bf1372f24207c2d3  ice: Fix undersized tx_flags variable

elapsed time: 721m

configs tested: 131
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230507   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230508   gcc  
arc                  randconfig-r013-20230507   gcc  
arc                  randconfig-r023-20230507   gcc  
arc                  randconfig-r043-20230507   gcc  
arc                  randconfig-r043-20230508   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230507   clang
arm                  randconfig-r046-20230507   gcc  
arm                  randconfig-r046-20230508   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230507   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230507   gcc  
csky                 randconfig-r031-20230507   gcc  
hexagon      buildonly-randconfig-r006-20230508   clang
hexagon              randconfig-r034-20230507   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r041-20230508   clang
hexagon              randconfig-r045-20230507   clang
hexagon              randconfig-r045-20230508   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
i386                 randconfig-r022-20230508   gcc  
i386                 randconfig-r026-20230508   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r005-20230508   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r016-20230507   gcc  
ia64                 randconfig-r026-20230507   gcc  
ia64                 randconfig-r035-20230507   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230507   gcc  
loongarch            randconfig-r036-20230507   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r005-20230507   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230508   gcc  
m68k                 randconfig-r033-20230507   gcc  
microblaze   buildonly-randconfig-r004-20230507   gcc  
microblaze   buildonly-randconfig-r004-20230508   gcc  
microblaze   buildonly-randconfig-r006-20230507   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r004-20230507   clang
mips                 randconfig-r024-20230508   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230508   gcc  
nios2                randconfig-r005-20230507   gcc  
nios2                randconfig-r005-20230508   gcc  
nios2                randconfig-r015-20230507   gcc  
nios2                randconfig-r021-20230508   gcc  
nios2                randconfig-r022-20230507   gcc  
openrisc             randconfig-r001-20230507   gcc  
openrisc             randconfig-r023-20230508   gcc  
parisc       buildonly-randconfig-r001-20230507   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230508   gcc  
parisc               randconfig-r014-20230507   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r011-20230508   gcc  
powerpc              randconfig-r014-20230508   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r025-20230507   clang
riscv                randconfig-r042-20230507   clang
riscv                randconfig-r042-20230508   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230508   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230507   gcc  
s390                 randconfig-r011-20230507   clang
s390                 randconfig-r032-20230507   gcc  
s390                 randconfig-r044-20230507   clang
s390                 randconfig-r044-20230508   gcc  
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r002-20230508   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230508   gcc  
sparc64              randconfig-r024-20230507   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230508   clang
x86_64               randconfig-a002-20230508   clang
x86_64               randconfig-a003-20230508   clang
x86_64               randconfig-a004-20230508   clang
x86_64               randconfig-a005-20230508   clang
x86_64               randconfig-a006-20230508   clang
x86_64               randconfig-a011-20230508   gcc  
x86_64               randconfig-a012-20230508   gcc  
x86_64               randconfig-a013-20230508   gcc  
x86_64               randconfig-a014-20230508   gcc  
x86_64               randconfig-a015-20230508   gcc  
x86_64               randconfig-a016-20230508   gcc  
x86_64               randconfig-r012-20230508   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230508   gcc  
xtensa               randconfig-r013-20230508   gcc  
xtensa               randconfig-r016-20230508   gcc  
xtensa               randconfig-r025-20230508   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
