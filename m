Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FF06EA9EB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 14:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 018FB417E4;
	Fri, 21 Apr 2023 12:04:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 018FB417E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682078668;
	bh=pitjCtUdi0cpZ2e3XkZbjms8DTCMcwT3m/zGa5Sq/lc=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qiVlA6cjt6hT/l6fAZGqbxevGSCH2fg7E6x9a4AB+MoRYine1vD7u5f8jTaIR+7B8
	 euPrtNJjTk+yO1+HrAs97q8G27DqQt0ABbI2talSMaZmrlmBJcHAjfyonqgSmjAi7t
	 hCAgFqYgQluMFQmPz9b7mMQr7708LGW3RVVFqxBrwnE5htqznRE7nfL1s3CwOsrcW2
	 olZPk/GXDKnIVk2fhGVicfIbe8KqphKRbG3WrWdhiZuaTvr+dEyuN6sXvdLhQBQU1d
	 SLpB2tpwBLCCR7mhXKLLwh+ppA5Dgd6iaeN/k7I8bhDETnbnJp0A7qpZb+/WcKJZjw
	 5dqTiJCjPJEzg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SKIRTb6-1Jd0; Fri, 21 Apr 2023 12:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F2EA415E6;
	Fri, 21 Apr 2023 12:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F2EA415E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D79D71C275D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 12:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF48B60F4A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 12:04:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF48B60F4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fFwd7ofn6Kax for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 12:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98EED61399
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 98EED61399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 12:04:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="334853754"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="334853754"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866679314"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866679314"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 21 Apr 2023 05:04:13 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pppUq-000gZH-2X;
 Fri, 21 Apr 2023 12:04:12 +0000
Date: Fri, 21 Apr 2023 20:04:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64427bb4.qbnVjusZPUzqNOAF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078655; x=1713614655;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7A7xg6OlK3S+y4J4vW96MxhUPrqU8qOKgDTe5h1x8Ms=;
 b=VK0tNNqw0O5dawJ2u2OTOTKwQ1Svw7twvPZi0bnZWMbfYq0pzWYdRA0x
 rzHV4q014S3pUtOF4Wtub9cjoknsShvg06u3bZQIMa9sg2QhRCERcxNCW
 6juY/vYecpIhD4fb5sltIt5X1FPxSA7qDTgmqc8JLEHoaNTiHyFYuMfhQ
 tYthQj1aj3MgQdm+dxa3VRR8x/63yOMd/taTyzaJ4NVhKOTsPbO+lMJiU
 qENIuIjZRzy9vXeXAo0plMi4KjAl7pyFSxT0/e5H3uA8U1Y8LK4AZKTIQ
 ex6qTEHL6c7NcG6gbqmDfL/XP92QNUU7mlfdUwMZVk7IP+bWHfKKv9pK5
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VK0tNNqw
Subject: [Intel-wired-lan] [tnguy-net-queue:10GbE] BUILD SUCCESS
 e85d3d55875f7a1079edfbc4e4e98d6f8aea9ac7
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 10GbE
branch HEAD: e85d3d55875f7a1079edfbc4e4e98d6f8aea9ac7  ixgbe: Enable setting RSS table to default values

elapsed time: 727m

configs tested: 164
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230419   gcc  
alpha        buildonly-randconfig-r003-20230417   gcc  
alpha        buildonly-randconfig-r005-20230417   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230416   gcc  
alpha                randconfig-r023-20230416   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r001-20230416   gcc  
arc          buildonly-randconfig-r006-20230416   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230416   gcc  
arc                  randconfig-r023-20230419   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r003-20230418   clang
arm                                 defconfig   gcc  
arm                  randconfig-r012-20230416   clang
arm                  randconfig-r022-20230416   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230416   clang
arm64                randconfig-r016-20230416   gcc  
arm64                randconfig-r023-20230417   clang
arm64                randconfig-r023-20230418   gcc  
arm64                randconfig-r025-20230417   clang
arm64                randconfig-r026-20230417   clang
csky                                defconfig   gcc  
csky                 randconfig-r024-20230419   gcc  
csky                 randconfig-r026-20230416   gcc  
hexagon      buildonly-randconfig-r005-20230416   clang
hexagon              randconfig-r015-20230416   clang
hexagon              randconfig-r034-20230420   clang
hexagon              randconfig-r035-20230420   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r006-20230417   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230417   clang
i386                 randconfig-a012-20230417   clang
i386                 randconfig-a013-20230417   clang
i386                 randconfig-a014-20230417   clang
i386                 randconfig-a015-20230417   clang
i386                 randconfig-a016-20230417   clang
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r002-20230417   gcc  
ia64         buildonly-randconfig-r005-20230416   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r005-20230417   gcc  
ia64                 randconfig-r013-20230417   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230416   gcc  
loongarch    buildonly-randconfig-r006-20230418   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230417   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230416   gcc  
m68k         buildonly-randconfig-r005-20230418   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r021-20230418   gcc  
m68k                 randconfig-r022-20230417   gcc  
microblaze   buildonly-randconfig-r003-20230418   gcc  
microblaze   buildonly-randconfig-r004-20230418   gcc  
microblaze   buildonly-randconfig-r006-20230418   gcc  
microblaze   buildonly-randconfig-r006-20230419   gcc  
microblaze           randconfig-r001-20230417   gcc  
microblaze           randconfig-r003-20230416   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230418   gcc  
mips         buildonly-randconfig-r003-20230419   clang
mips                 randconfig-r003-20230419   clang
mips                 randconfig-r005-20230416   gcc  
mips                 randconfig-r021-20230419   gcc  
mips                 randconfig-r024-20230418   clang
nios2        buildonly-randconfig-r002-20230417   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230417   gcc  
nios2                randconfig-r022-20230419   gcc  
nios2                randconfig-r025-20230418   gcc  
nios2                randconfig-r033-20230420   gcc  
openrisc     buildonly-randconfig-r002-20230416   gcc  
openrisc     buildonly-randconfig-r006-20230416   gcc  
openrisc     buildonly-randconfig-r006-20230417   gcc  
openrisc             randconfig-r015-20230417   gcc  
parisc       buildonly-randconfig-r004-20230416   gcc  
parisc       buildonly-randconfig-r004-20230417   gcc  
parisc       buildonly-randconfig-r005-20230417   gcc  
parisc       buildonly-randconfig-r005-20230418   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230419   gcc  
parisc               randconfig-r026-20230419   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r006-20230420   clang
powerpc              randconfig-r025-20230416   gcc  
powerpc              randconfig-r032-20230420   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230419   clang
riscv                               defconfig   gcc  
riscv                randconfig-r006-20230419   gcc  
riscv                randconfig-r014-20230416   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230420   clang
s390                 randconfig-r005-20230420   clang
s390                 randconfig-r024-20230416   gcc  
s390                 randconfig-r024-20230417   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r003-20230416   gcc  
sh                   randconfig-r001-20230419   gcc  
sh                   randconfig-r012-20230417   gcc  
sh                   randconfig-r013-20230416   gcc  
sh                   randconfig-r014-20230417   gcc  
sh                   randconfig-r026-20230418   gcc  
sh                   randconfig-r031-20230420   gcc  
sparc        buildonly-randconfig-r001-20230416   gcc  
sparc        buildonly-randconfig-r002-20230418   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230419   gcc  
sparc                randconfig-r002-20230420   gcc  
sparc                randconfig-r004-20230417   gcc  
sparc                randconfig-r011-20230417   gcc  
sparc                randconfig-r016-20230417   gcc  
sparc64      buildonly-randconfig-r002-20230416   gcc  
sparc64      buildonly-randconfig-r004-20230419   gcc  
sparc64              randconfig-r004-20230420   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230417   gcc  
x86_64               randconfig-a002-20230417   gcc  
x86_64               randconfig-a003-20230417   gcc  
x86_64               randconfig-a004-20230417   gcc  
x86_64               randconfig-a005-20230417   gcc  
x86_64               randconfig-a006-20230417   gcc  
x86_64               randconfig-a011-20230417   clang
x86_64               randconfig-a012-20230417   clang
x86_64               randconfig-a013-20230417   clang
x86_64               randconfig-a014-20230417   clang
x86_64               randconfig-a015-20230417   clang
x86_64               randconfig-a016-20230417   clang
x86_64               randconfig-r021-20230417   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r001-20230417   gcc  
xtensa       buildonly-randconfig-r001-20230418   gcc  
xtensa       buildonly-randconfig-r002-20230418   gcc  
xtensa               randconfig-r003-20230417   gcc  
xtensa               randconfig-r006-20230416   gcc  
xtensa               randconfig-r021-20230416   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
