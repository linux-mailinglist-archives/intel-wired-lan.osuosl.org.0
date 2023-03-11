Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 707AB6B58D4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Mar 2023 07:02:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E389D41745;
	Sat, 11 Mar 2023 06:02:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E389D41745
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678514573;
	bh=JIuhGthv5HYsV1vwM5MX1dZ1xnIcIrCuNJaPCYCLgCs=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BEItN8WXcmu/AAu8z+0XYMvitcs7Tyken6MUHXcaoGFZ01EGR5Hn9simCJb7XdY3Y
	 cU/ODWxFSUD2xYoZoyOJcVgaJ07LsH98DWuOSktYZg8cA8DorCUz17ARO305s7Kgdw
	 d+t+tPSVbGzdLR3C0dW6cZ5VzzllZr0ry2i3BPJv9vvXWKPERnL1Ej6vpeD1+GFDlu
	 6LEPOiQkPlc7SDjcpGRqfbNNMrVKimm79gS0d+PJu7GzM83Cal6RGQNZgjQx/lw9Em
	 45x9hLR0vGncuSitQ1z7rGvazuhxlAiF2tyAegCsd+iZg5eRN4j+3zywzB14scrNCb
	 MyRNDqT7kDJ/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TX6MAmda9Vl; Sat, 11 Mar 2023 06:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6536A41678;
	Sat, 11 Mar 2023 06:02:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6536A41678
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAE531BF616
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 06:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6BD74161C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 06:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B6BD74161C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3jSx1e2URbH for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Mar 2023 06:02:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C1E4415FF
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C1E4415FF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Mar 2023 06:02:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="338437523"
X-IronPort-AV: E=Sophos;i="5.98,252,1673942400"; d="scan'208";a="338437523"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 22:02:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="923935499"
X-IronPort-AV: E=Sophos;i="5.98,252,1673942400"; d="scan'208";a="923935499"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2023 22:02:42 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pasJV-0004NJ-2O;
 Sat, 11 Mar 2023 06:02:41 +0000
Date: Sat, 11 Mar 2023 14:02:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <640c196c.2PC8RJwoF7nqJALM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678514564; x=1710050564;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=twWDNHv8Pz7bfnDy2AL+1q47CMIHe+EjP3CwOa5Rlxo=;
 b=UCDoMuZPIS56ur3fjLchsFT2cToY+zFYAdQFYV/FKVWOEKrwbLW/3qKY
 udloWp4AuF9ui9FA5+SJWOkTnraPx8nbYyp26lbgwQKDau383tbN/OD97
 uTVZ3+6I3aF9nnMNEvvCEiArFpNoQL6BVelGMz6G0HjPe7DaKmxEgoM7x
 V11oUtSqW6/rFTDoH38MrbHciWqkufkvyTtNdZ2T8/4hQHnXA3AP3mzvZ
 OEsQKwthFvgo5FaFSRH8gr/zz+1gzJ289Ai28rW/YP4iINE3hY38riOD9
 XnslaJZAHqjk5AzwpCiHDxKoOjKLRbK5Y/b3xsdBHClrTYNNVc6BSbfz+
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UCDoMuZP
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 bced3f7db95ff2e6ca29dc4d1c9751ab5e736a09
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git master
branch HEAD: bced3f7db95ff2e6ca29dc4d1c9751ab5e736a09  tcp: tcp_make_synack() can be called from process context

elapsed time: 1303m

configs tested: 121
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r005-20230310   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230310   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230310   gcc  
arc                  randconfig-r015-20230310   gcc  
arc                  randconfig-r043-20230310   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230310   clang
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230310   gcc  
arm                  randconfig-r012-20230310   clang
arm                  randconfig-r032-20230310   gcc  
arm                  randconfig-r046-20230310   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r003-20230310   clang
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r034-20230310   clang
hexagon              randconfig-r041-20230310   clang
hexagon              randconfig-r045-20230310   clang
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
ia64                 randconfig-r026-20230310   gcc  
ia64                 randconfig-r031-20230310   gcc  
ia64                 randconfig-r034-20230310   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230310   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r002-20230310   gcc  
loongarch            randconfig-r025-20230310   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r004-20230310   gcc  
m68k                 randconfig-r006-20230310   gcc  
m68k                 randconfig-r012-20230310   gcc  
m68k                 randconfig-r035-20230310   gcc  
microblaze           randconfig-r022-20230310   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r006-20230310   gcc  
mips                 randconfig-r036-20230310   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230310   gcc  
nios2                randconfig-r016-20230310   gcc  
nios2                randconfig-r031-20230310   gcc  
nios2                randconfig-r033-20230310   gcc  
openrisc     buildonly-randconfig-r001-20230310   gcc  
openrisc     buildonly-randconfig-r004-20230310   gcc  
openrisc             randconfig-r002-20230310   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r001-20230310   gcc  
parisc               randconfig-r016-20230310   gcc  
parisc               randconfig-r021-20230310   gcc  
parisc               randconfig-r025-20230310   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230310   clang
powerpc              randconfig-r023-20230310   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r005-20230310   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230310   gcc  
riscv                randconfig-r042-20230310   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230310   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230310   clang
s390                 randconfig-r014-20230310   gcc  
s390                 randconfig-r024-20230310   gcc  
s390                 randconfig-r044-20230310   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230310   gcc  
sparc                randconfig-r013-20230310   gcc  
sparc                randconfig-r014-20230310   gcc  
sparc64              randconfig-r032-20230310   gcc  
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
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230310   gcc  
xtensa               randconfig-r033-20230310   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
