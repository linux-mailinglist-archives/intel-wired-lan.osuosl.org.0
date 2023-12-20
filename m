Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD5981A7B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Dec 2023 21:36:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EAAE436FA;
	Wed, 20 Dec 2023 20:36:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EAAE436FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703104617;
	bh=bCrvPJQBFZ2ip/WJpak3TF6YMHZycXac7EroAJY4cD8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KtAcRG3f9qWyiKg6WUCxfgQ/LBUFSsBRU0rVat7bAI8Q7ZSmZqcp0FEJEXWWU+et2
	 dpWQ3AvKOdFy4YN6S9WsPOyiNlw6DGi94SWB09JMsLYz8Dn9b6bMQ4UshnpdWxM8jS
	 wVkTd6KXm8zRtaMmkwBfOuJEFio5OqPqg3lCfYFKb79HBHUoEMCJbW9MR7H3jZ9/+a
	 BQ736W8j44Wlsp/5L+XbekGQHdfnjT0TqJ9wGXKi85JFiGvKLshPb0GZV3VhWLDo2f
	 539Ke5ZHEszVrPxPmKpPi84U5wtgCVQ1QU/gHAvqDst7AlSCST1hmZdFBota9TyuxL
	 kTH8Cw3CwjKaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-ovZ2MCSzaI; Wed, 20 Dec 2023 20:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8210B436E0;
	Wed, 20 Dec 2023 20:36:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8210B436E0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D76881BF365
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 20:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD05F436E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 20:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AD05F436E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kOlxzjUWau_l for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Dec 2023 20:36:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 155F3436D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Dec 2023 20:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 155F3436D8
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3097427"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; 
   d="scan'208";a="3097427"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 12:36:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="776456497"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="776456497"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 20 Dec 2023 12:36:44 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rG3J4-0007T1-1D
 for intel-wired-lan@lists.osuosl.org; Wed, 20 Dec 2023 20:36:42 +0000
Date: Thu, 21 Dec 2023 04:35:52 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202312210449.j9NsjWlK-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703104608; x=1734640608;
 h=date:from:to:subject:message-id;
 bh=Xi3S+WFsuwo3msXtgyBxeoUXl9vHXr3KBvWv4rq4rVg=;
 b=iJgjB895WPvUNLpexLE4wxTMQXHKWv1P+glJKxN8FrPy0Y6bEFl3yspw
 zOFkjgEdhHDHqZLBwH6lRoFAdHocUTPbd3BG7ePVP53RxFX1tAEO595HU
 D4nkYBeG89/8hNG9LKF76E9ogmD59mc9oxkzF6MaLJyzODMihQ8tE8oQh
 yJywSs8IMfucaOvghD7SLHrxHtN88nfY8oPip30VhZybnqEok8t1A1M22
 Xz/IPnrwxHfy9PC1o2vhvHUQFidptQsrWGieaXaaJSOMMdzX0as9MVQPP
 gQrCXh+wjoRj+fhC2lfp6/kdp2sl2FdrUTRPVXUUtYPqsUyFibjXeuYjM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iJgjB895
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 0dd722b6fde6d759c71a106e09833856420f63be
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
branch HEAD: 0dd722b6fde6d759c71a106e09833856420f63be  ice: dpll: fix phase offset value

elapsed time: 1460m

configs tested: 169
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231220   gcc  
arc                   randconfig-002-20231220   gcc  
arm                               allnoconfig   gcc  
arm                                 defconfig   clang
arm                           imxrt_defconfig   gcc  
arm                        multi_v5_defconfig   clang
arm                        neponset_defconfig   clang
arm                             pxa_defconfig   gcc  
arm                   randconfig-001-20231220   gcc  
arm                   randconfig-002-20231220   gcc  
arm                   randconfig-003-20231220   gcc  
arm                   randconfig-004-20231220   gcc  
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231220   gcc  
arm64                 randconfig-002-20231220   gcc  
arm64                 randconfig-003-20231220   gcc  
arm64                 randconfig-004-20231220   gcc  
csky                              allnoconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231220   gcc  
csky                  randconfig-002-20231220   gcc  
hexagon                           allnoconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231220   clang
hexagon               randconfig-002-20231220   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231220   gcc  
i386         buildonly-randconfig-002-20231220   gcc  
i386         buildonly-randconfig-003-20231220   gcc  
i386         buildonly-randconfig-004-20231220   gcc  
i386         buildonly-randconfig-005-20231220   gcc  
i386         buildonly-randconfig-006-20231220   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231220   gcc  
i386                  randconfig-002-20231220   gcc  
i386                  randconfig-003-20231220   gcc  
i386                  randconfig-004-20231220   gcc  
i386                  randconfig-005-20231220   gcc  
i386                  randconfig-006-20231220   gcc  
i386                  randconfig-011-20231220   clang
i386                  randconfig-012-20231220   clang
i386                  randconfig-013-20231220   clang
i386                  randconfig-014-20231220   clang
i386                  randconfig-015-20231220   clang
i386                  randconfig-016-20231220   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231220   gcc  
loongarch             randconfig-002-20231220   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          atari_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231220   gcc  
nios2                 randconfig-002-20231220   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc                randconfig-001-20231220   gcc  
parisc                randconfig-002-20231220   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                      bamboo_defconfig   gcc  
powerpc               randconfig-001-20231220   gcc  
powerpc               randconfig-002-20231220   gcc  
powerpc               randconfig-003-20231220   gcc  
powerpc                     taishan_defconfig   gcc  
powerpc                     tqm8541_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   gcc  
powerpc64             randconfig-001-20231220   gcc  
powerpc64             randconfig-002-20231220   gcc  
powerpc64             randconfig-003-20231220   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231220   gcc  
riscv                 randconfig-002-20231220   gcc  
riscv                          rv32_defconfig   clang
s390                             alldefconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231220   clang
s390                  randconfig-002-20231220   clang
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                    randconfig-001-20231220   gcc  
sh                    randconfig-002-20231220   gcc  
sh                           se7705_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231220   gcc  
sparc64               randconfig-002-20231220   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231220   gcc  
um                    randconfig-002-20231220   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231220   gcc  
x86_64       buildonly-randconfig-002-20231220   gcc  
x86_64       buildonly-randconfig-003-20231220   gcc  
x86_64       buildonly-randconfig-004-20231220   gcc  
x86_64       buildonly-randconfig-005-20231220   gcc  
x86_64       buildonly-randconfig-006-20231220   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231220   clang
x86_64                randconfig-002-20231220   clang
x86_64                randconfig-003-20231220   clang
x86_64                randconfig-004-20231220   clang
x86_64                randconfig-005-20231220   clang
x86_64                randconfig-006-20231220   clang
x86_64                randconfig-011-20231220   gcc  
x86_64                randconfig-012-20231220   gcc  
x86_64                randconfig-013-20231220   gcc  
x86_64                randconfig-014-20231220   gcc  
x86_64                randconfig-015-20231220   gcc  
x86_64                randconfig-016-20231220   gcc  
x86_64                randconfig-071-20231220   gcc  
x86_64                randconfig-072-20231220   gcc  
x86_64                randconfig-073-20231220   gcc  
x86_64                randconfig-074-20231220   gcc  
x86_64                randconfig-075-20231220   gcc  
x86_64                randconfig-076-20231220   gcc  
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                randconfig-001-20231220   gcc  
xtensa                randconfig-002-20231220   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
