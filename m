Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E60526BA8F9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Mar 2023 08:24:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7341581317;
	Wed, 15 Mar 2023 07:24:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7341581317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678865083;
	bh=5QNdhCNcX6q0VAt8UHH+aQWfQmbI9UAKYlBeHV30IRM=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=215LdEO8VxqaIv05Si7OEgKBJubLDnEJcBym//Ff1lYZEpIsmcOAAKQre8pNu76/a
	 2OphT+CwIwGGTOx3ZW0bJgGc2DhbkDa2gTdNuy1NSLnY7tfjhbLhc4k6KXTgci7WMV
	 GIYFkU/NMQtGu9QWcBU/KA/CurE6VjVZ95M08beYJRvgo3SaVfRkd9WDHwG+DZL9YX
	 thvo1brk4fN4/I9LjMGGhsZPd723D/3ykS7AIaIsXvBKrZskyo5hQoFtz6cfpM7rjq
	 V2JadUrJrunXYOX+HcHSXaT8kqZeNM0R72ncgFyk8P9/tIvt2GiSEODPExaBD2EH4f
	 2WYO17QHxEADw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2uyCVnDcq-nz; Wed, 15 Mar 2023 07:24:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5373A8124C;
	Wed, 15 Mar 2023 07:24:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5373A8124C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 382C51BF47E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 07:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10B9B404F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 07:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10B9B404F9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lViUBHvcODPT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Mar 2023 07:24:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E95D340139
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E95D340139
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Mar 2023 07:24:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="400216605"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="400216605"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 00:24:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="925233086"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="925233086"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 15 Mar 2023 00:24:25 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pcLUn-0007Vx-02;
 Wed, 15 Mar 2023 07:24:25 +0000
Date: Wed, 15 Mar 2023 15:23:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64117287.KzLD1i72i4Y4sIun%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678865075; x=1710401075;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=spQTiRHetc0p2NsjRafMun0fNrvGffPfUDCOHE/YL4g=;
 b=am9rb+6oXqbBVGTK02ETTy4TWzPM6p65mel9tFC89rI0TUHwqR2jIxSY
 G1Wi8MRJV73UMVigUdjO4v5ECux2sRSpKXLuXOUo9/+1+83VHTc/sGrMZ
 wINnJ9aYBIum4DGmx/Fd2ca0cuhEOc5FpQoqW8kyTtAJNkJNJsCZXLZU2
 hPHGrrvNq7Qi4iBWtE3OyZoVWev1K/QI2t0tCQxKS/ATYAYOfwlrHC4vv
 JNjnYzV2+6Euw53flCPIsTaoU8FoUPEi9ZtSCf+7pOgBoRPT+I7aVHKok
 bqkqQsyVAsLzxg6rEMrP9oQLoNBc5sCQNuABwfWLVtDnY0VdAgufpMJF7
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=am9rb+6o
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1353bb0f1afc7f5f5b17ab91d306ebd463a660a9
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
branch HEAD: 1353bb0f1afc7f5f5b17ab91d306ebd463a660a9  ice: add profile conflict check for AVF FDIR

elapsed time: 725m

configs tested: 147
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230313   gcc  
alpha                randconfig-r032-20230312   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230312   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230312   gcc  
arc                  randconfig-r012-20230312   gcc  
arc                  randconfig-r021-20230312   gcc  
arc                  randconfig-r023-20230313   gcc  
arc                  randconfig-r031-20230312   gcc  
arc                  randconfig-r033-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r016-20230312   clang
arm                  randconfig-r033-20230313   clang
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r022-20230312   gcc  
arm64                randconfig-r034-20230312   clang
arm64                randconfig-r034-20230313   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230312   gcc  
csky                 randconfig-r032-20230312   gcc  
csky                 randconfig-r032-20230313   gcc  
hexagon      buildonly-randconfig-r001-20230313   clang
hexagon              randconfig-r001-20230312   clang
hexagon              randconfig-r005-20230313   clang
hexagon              randconfig-r015-20230312   clang
hexagon              randconfig-r024-20230312   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r006-20230313   gcc  
ia64                 randconfig-r033-20230312   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230313   gcc  
loongarch            randconfig-r026-20230312   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r003-20230313   gcc  
m68k                 randconfig-r011-20230313   gcc  
m68k                 randconfig-r035-20230313   gcc  
microblaze   buildonly-randconfig-r005-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r021-20230313   gcc  
mips                 randconfig-r022-20230312   clang
mips                 randconfig-r022-20230313   gcc  
mips                 randconfig-r031-20230312   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r013-20230312   gcc  
nios2                randconfig-r014-20230312   gcc  
nios2                randconfig-r023-20230313   gcc  
nios2                randconfig-r026-20230312   gcc  
openrisc             randconfig-r035-20230312   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r014-20230313   gcc  
parisc               randconfig-r036-20230312   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r023-20230312   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r004-20230312   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230313   clang
riscv                randconfig-r024-20230313   clang
riscv                randconfig-r025-20230312   gcc  
riscv                randconfig-r026-20230313   clang
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r002-20230312   clang
s390                 randconfig-r022-20230313   clang
s390                 randconfig-r024-20230313   clang
s390                 randconfig-r031-20230313   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230312   gcc  
sh                   randconfig-r016-20230313   gcc  
sh                   randconfig-r036-20230312   gcc  
sparc        buildonly-randconfig-r003-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r013-20230313   gcc  
sparc                randconfig-r024-20230312   gcc  
sparc                randconfig-r025-20230313   gcc  
sparc64      buildonly-randconfig-r002-20230313   gcc  
sparc64              randconfig-r001-20230313   gcc  
sparc64              randconfig-r004-20230313   gcc  
sparc64              randconfig-r025-20230312   gcc  
sparc64              randconfig-r035-20230312   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r005-20230313   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64               randconfig-a012-20230313   clang
x86_64               randconfig-a013-20230313   clang
x86_64               randconfig-a014-20230313   clang
x86_64               randconfig-a015-20230313   clang
x86_64               randconfig-a016-20230313   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230312   gcc  
xtensa               randconfig-r012-20230313   gcc  
xtensa               randconfig-r023-20230312   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
