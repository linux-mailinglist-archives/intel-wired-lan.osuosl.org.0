Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF37174BC4D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jul 2023 07:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D872D82F4F;
	Sat,  8 Jul 2023 05:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D872D82F4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688795553;
	bh=id1+5MGOuto26NN6T8EbFnvdsguFhCBUBXSe4Y2OT6M=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PrXKW3+q/KvWj0lP6/gNAOTsLWv/N329RYT8FDMLykKGTTyylUT8om/Z5DhKNVCND
	 ZeVYKejU1yGPlpeuv+7E9sASuFIJjl+89518JzvMv54OOrqBmZIcFimRXhEtIWYhrM
	 gBSqAXIYYm8eb7bq+2CAsdWlR51/jY7a2FYSGrnqbds14Cmn/c7EEhPIZNkRPH8EAC
	 JkAheihS7s0bMU9RSqKFbAiZSH6gxkW2js0IPu2L1SkrzQQf3xjoa40hlPBoy1Hr2t
	 tZx9g71Rhyle6Yp8QuelfwcMILjeuw2rN8f7dNzMgyiWi/TZnyVsupRvu/p6kH8TRd
	 QkI67Zw+9UCyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2y7_l5ovHIB; Sat,  8 Jul 2023 05:52:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9268D82EA1;
	Sat,  8 Jul 2023 05:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9268D82EA1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D0351BF59A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jul 2023 05:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 065F282EA1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jul 2023 05:52:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 065F282EA1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDBOn7jv6Lvj for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jul 2023 05:52:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E97382D0C
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E97382D0C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jul 2023 05:52:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="367528072"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="367528072"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 22:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="833644651"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="833644651"
Received: from lkp-server01.sh.intel.com (HELO c544d7fc5005) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2023 22:52:21 -0700
Received: from kbuild by c544d7fc5005 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qI0rk-0002Zb-28
 for intel-wired-lan@lists.osuosl.org; Sat, 08 Jul 2023 05:52:20 +0000
Date: Sat, 08 Jul 2023 13:51:36 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202307081335.xwEmwUTX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688795544; x=1720331544;
 h=date:from:to:subject:message-id;
 bh=iGhZt9GJqB2AD60JWOZVxkj896nXuHXCG2+UcI8KO04=;
 b=fiTzWYkUWC8g0VptepwH3mKpnExgA8siHmD/H+UlF6rQddwYlT2rnuds
 DzWHlEFFuI88fUr032Y3qFFPORa2tn/6R4yGEY10z9n+gcPwYSuotojBT
 QXmPCBxkHU9zeRaI1JQIc5LC25I69ZakbheXOD2IoPCNalmco2B9sCdK+
 z/q0g3wGtJq/GsnqPXjaIjhqKXVPOL4IhGwP4NWKoUBWAdBxkxXB21203
 0h5pu5RI6QqN050U5ZN1AWBoZj2UC702ovoPmt57FRQ4pj8J5puZQgbDZ
 UCNA5KngFtmyL+NNEuVDeNNeQlcB+9FwzJ5+dHffkOoPWrK8FuMs7dbDX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fiTzWYkU
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3419def2957339897575366d2006f01d03d04571
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
branch HEAD: 3419def2957339897575366d2006f01d03d04571  igc: Fix Kernel Panic during ndo_tx_timeout callback

elapsed time: 723m

configs tested: 136
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r032-20230708   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                     haps_hs_smp_defconfig   gcc  
arc                  randconfig-r043-20230708   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                         bcm2835_defconfig   clang
arm                                 defconfig   gcc  
arm                       netwinder_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                          pxa910_defconfig   gcc  
arm                  randconfig-r002-20230708   gcc  
arm                  randconfig-r004-20230708   gcc  
arm                  randconfig-r046-20230708   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230708   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r006-20230708   gcc  
csky                 randconfig-r022-20230708   gcc  
hexagon              randconfig-r012-20230708   clang
hexagon              randconfig-r026-20230708   clang
hexagon              randconfig-r041-20230708   clang
hexagon              randconfig-r045-20230708   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230708   clang
i386         buildonly-randconfig-r005-20230708   clang
i386         buildonly-randconfig-r006-20230708   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230708   clang
i386                 randconfig-i002-20230708   clang
i386                 randconfig-i003-20230708   clang
i386                 randconfig-i004-20230708   clang
i386                 randconfig-i005-20230708   clang
i386                 randconfig-i006-20230708   clang
i386                 randconfig-i011-20230708   gcc  
i386                 randconfig-i012-20230708   gcc  
i386                 randconfig-i013-20230708   gcc  
i386                 randconfig-i014-20230708   gcc  
i386                 randconfig-i015-20230708   gcc  
i386                 randconfig-i016-20230708   gcc  
i386                 randconfig-r003-20230708   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                 randconfig-r011-20230708   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                          ath25_defconfig   clang
mips                        bcm47xx_defconfig   gcc  
mips                         cobalt_defconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                        maltaup_defconfig   clang
mips                 randconfig-r001-20230708   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230708   gcc  
openrisc             randconfig-r015-20230708   gcc  
openrisc                 simple_smp_defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r025-20230708   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     kmeter1_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                      ppc64e_defconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc                     tqm8540_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230708   clang
riscv                randconfig-r023-20230708   gcc  
riscv                randconfig-r042-20230708   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r031-20230708   clang
s390                 randconfig-r035-20230708   clang
s390                 randconfig-r044-20230708   gcc  
sh                               allmodconfig   gcc  
sh                          lboxre2_defconfig   gcc  
sh                   randconfig-r024-20230708   gcc  
sh                   randconfig-r036-20230708   gcc  
sh                   sh7770_generic_defconfig   gcc  
sh                             shx3_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r034-20230708   gcc  
sparc64              randconfig-r016-20230708   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230708   clang
x86_64       buildonly-randconfig-r002-20230708   clang
x86_64       buildonly-randconfig-r003-20230708   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-r033-20230708   clang
x86_64               randconfig-x001-20230707   clang
x86_64               randconfig-x002-20230707   clang
x86_64               randconfig-x003-20230707   clang
x86_64               randconfig-x004-20230707   clang
x86_64               randconfig-x005-20230707   clang
x86_64               randconfig-x006-20230707   clang
x86_64               randconfig-x011-20230707   gcc  
x86_64               randconfig-x012-20230707   gcc  
x86_64               randconfig-x013-20230707   gcc  
x86_64               randconfig-x014-20230707   gcc  
x86_64               randconfig-x015-20230707   gcc  
x86_64               randconfig-x016-20230707   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                  audio_kc705_defconfig   gcc  
xtensa               randconfig-r014-20230708   gcc  
xtensa                         virt_defconfig   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
