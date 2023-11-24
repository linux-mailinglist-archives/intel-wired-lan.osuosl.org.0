Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6917F7272
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Nov 2023 12:10:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DC1E81F50;
	Fri, 24 Nov 2023 11:10:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DC1E81F50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700824229;
	bh=3oq6ipW2qTxnj3p6zfBScbS3KmgFLUnm/Xqca9153ak=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Q6J+p9M88IDHZABdHalayHKe2fm+5uMFEdnAhZzt9gmCIA2sgkWutjdX7Mw1F2txu
	 qpqgswN8x8ZudC93xMyQkyWUSex2TQPlyocYxP5+tUNtYbEar04ggEMYjKu8PyXm8w
	 UkrTbVaezX96mgj+n4xjQX3vef9vG5WVRFFgf0xItSPSH+EN01o9wXuDJ4yyKdrOr6
	 TsaUIdIkNWw3bCD+otq//kEfyw9aywKWYW/P4vi5YQXZgnVA3wDsxcJiBGcYiE/Awr
	 JCgijHGR2EGpQFvXtGX+kFT+KQgKDoTzUAe5XjtmdsEkPcnd1LeGenS9XF+FpTat9/
	 rgPGP1RLNTuEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EJDFmv1NnlxX; Fri, 24 Nov 2023 11:10:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB5FF80E96;
	Fri, 24 Nov 2023 11:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB5FF80E96
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B6F791BF383
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8EBFE6151A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:10:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EBFE6151A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xAtfJi6hV7JO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Nov 2023 11:10:21 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 731F061515
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Nov 2023 11:10:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 731F061515
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5626460"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; 
   d="scan'208";a="5626460"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 03:10:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="802156368"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="802156368"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 24 Nov 2023 03:10:06 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r6U4S-0002eN-1w
 for intel-wired-lan@lists.osuosl.org; Fri, 24 Nov 2023 11:10:04 +0000
Date: Fri, 24 Nov 2023 19:08:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202311241909.RWkp5BAW-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700824222; x=1732360222;
 h=date:from:to:subject:message-id;
 bh=WI86BsGlY8raaCifbJTGa42qo6BQoTeHruWEtJe312M=;
 b=FpJKlCFT39pX00HfKUiZW2q52Nx4PtyaHgUaPdboAd0G+vIn9dHDHgAC
 wyR1n/1HtPn5lNpBn+1vO078SrZqcfe4+6XDn+85pJWE088nZmWIBKJr7
 RSXX5dKj4iaAXLzP91fcgnae+Ms4uFbqHn/JmdYvTTzVGr5CXMjvbrR/T
 6bsp1+d56fkx2o/zx+/6n0yAUCsgqUlFHnBM2PPurA8PLlzpsIII0hglB
 erhMaq8r2sn/VvqxnsojzMr/sX8Zb/75i78zcpLpzZC8SJ96thfULLsIS
 L922TfeNazYHh0mLj09fuIAQmkKKk5Vq80/yFyvdfNvAee9WuT7T4lrXy
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FpJKlCFT
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 bab09274e176bac27ada4915dccc4b532868d26c
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: bab09274e176bac27ada4915dccc4b532868d26c  ice: restore timestamp configuration after device reset

elapsed time: 3852m

configs tested: 148
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
arc                   randconfig-001-20231123   gcc  
arc                   randconfig-002-20231123   gcc  
arm                            mps2_defconfig   gcc  
arm                        mvebu_v5_defconfig   clang
arm                         orion5x_defconfig   clang
arm                   randconfig-001-20231123   gcc  
arm                   randconfig-002-20231123   gcc  
arm                   randconfig-003-20231123   gcc  
arm                   randconfig-004-20231123   gcc  
arm                           sunxi_defconfig   gcc  
arm64                 randconfig-001-20231123   gcc  
arm64                 randconfig-002-20231123   gcc  
arm64                 randconfig-003-20231123   gcc  
arm64                 randconfig-004-20231123   gcc  
csky                  randconfig-001-20231123   gcc  
csky                  randconfig-002-20231123   gcc  
hexagon               randconfig-001-20231123   clang
hexagon               randconfig-002-20231123   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231122   clang
i386         buildonly-randconfig-002-20231122   clang
i386         buildonly-randconfig-003-20231122   clang
i386         buildonly-randconfig-004-20231122   clang
i386         buildonly-randconfig-005-20231122   clang
i386         buildonly-randconfig-006-20231122   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231122   clang
i386                  randconfig-002-20231122   clang
i386                  randconfig-003-20231122   clang
i386                  randconfig-004-20231122   clang
i386                  randconfig-005-20231122   clang
i386                  randconfig-006-20231122   clang
i386                  randconfig-011-20231122   gcc  
i386                  randconfig-012-20231122   gcc  
i386                  randconfig-013-20231122   gcc  
i386                  randconfig-014-20231122   gcc  
i386                  randconfig-015-20231122   gcc  
i386                  randconfig-016-20231122   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231123   gcc  
loongarch             randconfig-002-20231123   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                  maltasmvp_eva_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231123   gcc  
nios2                 randconfig-002-20231123   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231123   gcc  
parisc                randconfig-002-20231123   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     mpc83xx_defconfig   gcc  
powerpc               randconfig-001-20231123   gcc  
powerpc               randconfig-002-20231123   gcc  
powerpc               randconfig-003-20231123   gcc  
powerpc64             randconfig-001-20231123   gcc  
powerpc64             randconfig-002-20231123   gcc  
powerpc64             randconfig-003-20231123   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231123   gcc  
riscv                 randconfig-002-20231123   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                  randconfig-001-20231123   clang
s390                  randconfig-002-20231123   clang
sh                               allmodconfig   gcc  
sh                               allyesconfig   gcc  
sh                             espt_defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                          landisk_defconfig   gcc  
sh                    randconfig-001-20231123   gcc  
sh                    randconfig-002-20231123   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64               randconfig-001-20231123   gcc  
sparc64               randconfig-002-20231123   gcc  
um                               allmodconfig   clang
um                               allyesconfig   clang
um                    randconfig-001-20231123   gcc  
um                    randconfig-002-20231123   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231122   clang
x86_64       buildonly-randconfig-002-20231122   clang
x86_64       buildonly-randconfig-003-20231122   clang
x86_64       buildonly-randconfig-004-20231122   clang
x86_64       buildonly-randconfig-005-20231122   clang
x86_64       buildonly-randconfig-006-20231122   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231122   gcc  
x86_64                randconfig-002-20231122   gcc  
x86_64                randconfig-003-20231122   gcc  
x86_64                randconfig-004-20231122   gcc  
x86_64                randconfig-005-20231122   gcc  
x86_64                randconfig-006-20231122   gcc  
x86_64                randconfig-011-20231122   clang
x86_64                randconfig-012-20231122   clang
x86_64                randconfig-013-20231122   clang
x86_64                randconfig-014-20231122   clang
x86_64                randconfig-015-20231122   clang
x86_64                randconfig-016-20231122   clang
x86_64                randconfig-071-20231122   clang
x86_64                randconfig-072-20231122   clang
x86_64                randconfig-073-20231122   clang
x86_64                randconfig-074-20231122   clang
x86_64                randconfig-075-20231122   clang
x86_64                randconfig-076-20231122   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20231123   gcc  
xtensa                randconfig-002-20231123   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
