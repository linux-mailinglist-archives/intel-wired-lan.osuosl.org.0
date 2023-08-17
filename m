Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EFA77EFDC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 06:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 60E7080BB1;
	Thu, 17 Aug 2023 04:38:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60E7080BB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692247111;
	bh=qke3juPaQMGA+XoJ79kxE6q87eNl9/IWOxhUDyGcPA8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EtBuOPlDnMX11FdPJIkKImAzRdvSNclW2RySm2FqO6WqftGuw4hTJ5bp0M68Th9op
	 qln3VeRFwqU+BsicU++rJcxNpH3dZKw4csLcrl9OqBF79AebpQH0SCYMtUfc3j4Rmo
	 0lOB8Pr1k+l2jU8+bDz+iCIcBA9aOKXh9x01PyAmAhdRIihnWKsKLE0Z5/dVSy8S78
	 s+/m/f2AQp0LVBo4xhZh0pJgKO6yXSrAfL6SJ8xoE6YQ5dDs3etiRQD0VSSh3Ed6sI
	 tVUka5Mf7MY4r1OyaARuOlzy0d2ku7jGbaLmKRkJegYtjsNzLXLZyJJ+mVM12EhVwv
	 8usx6KjqfIaaw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cRLSmLPPpO6L; Thu, 17 Aug 2023 04:38:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C40F801CF;
	Thu, 17 Aug 2023 04:38:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C40F801CF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C2E1E1BF3BF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 04:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A916783BD5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 04:38:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A916783BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJSQM1XIkoOJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 04:38:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A611483BD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 04:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A611483BD3
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403688334"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="403688334"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 21:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="824482327"
X-IronPort-AV: E=Sophos;i="6.01,179,1684825200"; d="scan'208";a="824482327"
Received: from lkp-server02.sh.intel.com (HELO a9caf1a0cf30) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2023 21:38:16 -0700
Received: from kbuild by a9caf1a0cf30 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qWUm0-0000mq-0T
 for intel-wired-lan@lists.osuosl.org; Thu, 17 Aug 2023 04:38:16 +0000
Date: Thu, 17 Aug 2023 12:37:58 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202308171253.tegjwAZ8-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692247098; x=1723783098;
 h=date:from:to:subject:message-id;
 bh=wBLtGtPrPbm+fI3A10OVs7OZDoio1K66eWnc6kMGwNM=;
 b=DYs1cPzOuSpGMXaGn93GYtvSsQgVHqXZvp1T+4BWbcVvOUE8+gGBC129
 omfPV8e/dyZObLhMs6QAXcrh5ndcWw2kcAGKBO/aOL2vCW/ME4I2uDfTs
 0YqJERN+zaJZ+WNZXR1wClsW/iNVHJ0rhtKqw7FdBZ5xGPwJ8W3f9a2kP
 QipTzVnHoK65VFL6PNubEnGhAqnNpWOiXO47SBn8DdFqUR9FGaXTZc/RU
 LEgR7ozQuw638Wsj3R5KbfHaYCRuO9PMwvH6aPtpjtgKoQsGzEFbiwqnj
 ZSgINbM4amzTDTfav8Xc5DhW+EzV2NLaS1vwhKIFDeAkRzX0oxcS/dmfK
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DYs1cPzO
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1f78520212966ce123fc69817f8c0f4737b70047
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
branch HEAD: 1f78520212966ce123fc69817f8c0f4737b70047  igb: Avoid starting unnecessary workqueues

elapsed time: 735m

configs tested: 133
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r003-20230817   gcc  
alpha                randconfig-r035-20230817   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230817   gcc  
arc                  randconfig-r025-20230817   gcc  
arc                  randconfig-r043-20230817   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                           h3600_defconfig   gcc  
arm                         lpc18xx_defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                  randconfig-r001-20230817   gcc  
arm                  randconfig-r012-20230817   clang
arm                  randconfig-r026-20230817   clang
arm                  randconfig-r046-20230817   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230817   gcc  
arm64                randconfig-r024-20230817   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230817   gcc  
csky                 randconfig-r013-20230817   gcc  
csky                 randconfig-r014-20230817   gcc  
csky                 randconfig-r033-20230817   gcc  
hexagon              randconfig-r032-20230817   clang
hexagon              randconfig-r041-20230817   clang
hexagon              randconfig-r045-20230817   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230817   clang
i386         buildonly-randconfig-r005-20230817   clang
i386         buildonly-randconfig-r006-20230817   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230817   clang
i386                 randconfig-i002-20230817   clang
i386                 randconfig-i003-20230817   clang
i386                 randconfig-i004-20230817   clang
i386                 randconfig-i005-20230817   clang
i386                 randconfig-i006-20230817   clang
i386                 randconfig-i011-20230817   gcc  
i386                 randconfig-i012-20230817   gcc  
i386                 randconfig-i013-20230817   gcc  
i386                 randconfig-i014-20230817   gcc  
i386                 randconfig-i015-20230817   gcc  
i386                 randconfig-i016-20230817   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230817   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r031-20230817   gcc  
m68k                 randconfig-r036-20230817   gcc  
microblaze           randconfig-r001-20230817   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   gcc  
mips                 randconfig-r002-20230817   gcc  
mips                 randconfig-r033-20230817   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r004-20230817   gcc  
openrisc             randconfig-r005-20230817   gcc  
openrisc             randconfig-r022-20230817   gcc  
parisc                           alldefconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r034-20230817   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 mpc8315_rdb_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc              randconfig-r016-20230817   gcc  
powerpc                  storcenter_defconfig   gcc  
powerpc                     stx_gp3_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230817   gcc  
riscv                randconfig-r042-20230817   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230817   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230817   gcc  
sh                   randconfig-r023-20230817   gcc  
sh                        sh7757lcr_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r005-20230817   gcc  
um                   randconfig-r011-20230817   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230817   clang
x86_64       buildonly-randconfig-r002-20230817   clang
x86_64       buildonly-randconfig-r003-20230817   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r002-20230817   clang
x86_64               randconfig-r004-20230817   clang
x86_64               randconfig-x001-20230817   gcc  
x86_64               randconfig-x002-20230817   gcc  
x86_64               randconfig-x003-20230817   gcc  
x86_64               randconfig-x004-20230817   gcc  
x86_64               randconfig-x005-20230817   gcc  
x86_64               randconfig-x006-20230817   gcc  
x86_64               randconfig-x011-20230817   clang
x86_64               randconfig-x012-20230817   clang
x86_64               randconfig-x013-20230817   clang
x86_64               randconfig-x014-20230817   clang
x86_64               randconfig-x015-20230817   clang
x86_64               randconfig-x016-20230817   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r016-20230817   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
