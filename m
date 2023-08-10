Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBFF7774CC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 11:41:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB302415B0;
	Thu, 10 Aug 2023 09:41:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB302415B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691660475;
	bh=Q9kGO/W9B8uc0EhK96yosmz8sOsFHqINgMbhY2XV4dE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0Xe6pmspDsJtgj8l/6V95QxuIVaQgeRUiEw1vVbDCIIAfzj45+pN6XEv1s37oPQWE
	 IWj3qptc74X3Kgtxd5EIZao4EjDm6NDBHZEBkM8CwbkrezujYtx0HFmSyP4wjhdvte
	 DAaf76xHkm0E12++0uA2a1HkyT78YQxn90+EMeS8SMoyFRrC/ohpHP52X6TsRc/dJI
	 eNmQrP3NJn7IOEqciIWx2u60J82VNDrJn9eXDkbMdnqcQzBNHsKkCWrpXm+RK++fDE
	 m97rybatp5dBvQSHWHdE3kUl5s/cw9n3CWmunpY44KHd1XOOLo1QXs8Z3p3/CxLgWa
	 TzhErcVkOYkow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6S9ul-PeXO8; Thu, 10 Aug 2023 09:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEDE2415AC;
	Thu, 10 Aug 2023 09:41:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEDE2415AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F18A81BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 09:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C9E3883BB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 09:41:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9E3883BB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7KdoBlrRpeG0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 09:41:08 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2C22D83BCD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 09:41:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2C22D83BCD
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="374126678"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="374126678"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 02:41:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="855871238"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="855871238"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 10 Aug 2023 02:41:06 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qU2AD-0006tq-2k
 for intel-wired-lan@lists.osuosl.org; Thu, 10 Aug 2023 09:41:05 +0000
Date: Thu, 10 Aug 2023 17:41:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308101759.u3nd1FPa-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691660468; x=1723196468;
 h=date:from:to:subject:message-id;
 bh=wUHtD650PZwRoNRdhyEYUoribd0dfZWX5mu61xDAiyw=;
 b=IWyHX3BH/3B8Pr6QHV+JA9hy41+EqWYfVxjN/HZH29f+DTzpXLdlD0s8
 CemkYGi+n3IuiWZWXXhBBfWrVp9D4aP1MmcPKa/EosUFCo0d0pPHY/MPV
 hwk6vvdUSk3MpNVB1RRocL1zq67PcSlnSzk6Vtdx4q5qMcAgHhSxEyvSP
 MU/cYjAJgQs1VMOM/sJs+wBVEoRrMBq4SZb3UbQ0IL+lZNUiKR0RfpHck
 5TEOQvxEBn8GnSMTgC/qFIVjPfwLTZOy2KdzADOaqNcJNRfnsYfcOSOBL
 2koy0iZNHlgNNCGH45OGn0MKMN938KZuCZl6gFDB3LNFj3W2gG/1BWaos
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IWyHX3BH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0b50d5a40675d0ba185db89191a1fc40a6636f0f
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
branch HEAD: 0b50d5a40675d0ba185db89191a1fc40a6636f0f  igc: Fix the typo in the PTM Control macro

elapsed time: 721m

configs tested: 109
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230809   gcc  
alpha                randconfig-r005-20230809   gcc  
alpha                randconfig-r006-20230809   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230809   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230809   clang
arm                  randconfig-r012-20230809   gcc  
arm                  randconfig-r046-20230809   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r032-20230809   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r036-20230809   gcc  
hexagon              randconfig-r041-20230809   clang
hexagon              randconfig-r045-20230809   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230809   gcc  
i386         buildonly-randconfig-r005-20230809   gcc  
i386         buildonly-randconfig-r006-20230809   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230809   gcc  
i386                 randconfig-i002-20230809   gcc  
i386                 randconfig-i003-20230809   gcc  
i386                 randconfig-i004-20230809   gcc  
i386                 randconfig-i005-20230809   gcc  
i386                 randconfig-i006-20230809   gcc  
i386                 randconfig-i011-20230809   clang
i386                 randconfig-i012-20230809   clang
i386                 randconfig-i013-20230809   clang
i386                 randconfig-i014-20230809   clang
i386                 randconfig-i015-20230809   clang
i386                 randconfig-i016-20230809   clang
i386                 randconfig-r024-20230809   clang
i386                 randconfig-r031-20230809   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r011-20230809   gcc  
microblaze           randconfig-r014-20230809   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230809   gcc  
nios2                randconfig-r026-20230809   gcc  
nios2                randconfig-r033-20230809   gcc  
openrisc             randconfig-r015-20230809   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r002-20230809   gcc  
parisc               randconfig-r035-20230809   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r023-20230809   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230809   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230809   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r001-20230809   gcc  
sh                   randconfig-r013-20230809   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r034-20230809   gcc  
sparc64              randconfig-r016-20230809   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r021-20230809   gcc  
um                   randconfig-r025-20230809   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230809   gcc  
x86_64       buildonly-randconfig-r002-20230809   gcc  
x86_64       buildonly-randconfig-r003-20230809   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230809   clang
x86_64               randconfig-x002-20230809   clang
x86_64               randconfig-x003-20230809   clang
x86_64               randconfig-x004-20230809   clang
x86_64               randconfig-x005-20230809   clang
x86_64               randconfig-x006-20230809   clang
x86_64               randconfig-x011-20230809   gcc  
x86_64               randconfig-x012-20230809   gcc  
x86_64               randconfig-x013-20230809   gcc  
x86_64               randconfig-x014-20230809   gcc  
x86_64               randconfig-x015-20230809   gcc  
x86_64               randconfig-x016-20230809   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
