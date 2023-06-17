Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9AB7340F6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jun 2023 14:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01CBD4046B;
	Sat, 17 Jun 2023 12:21:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01CBD4046B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687004469;
	bh=XKXm8kfkYa375C+jzVYq4OQnK5pW8kCU+ziReRoSEaI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=5Fn7K8G0mKttUEuSdcUm1F0f5d86+y6fZXv7mEyWESQeMDgUBSrmTjacYLoxumexa
	 zrpskG1DjlXY+0uoUpD2jAX3HW4gSdQlFEOclhPTcL8fSUIE138mJYd3gin3godhhw
	 3BbdmzxRJF4vnbh/X6JLNQFtaJvbTehEePjX9Mt7tuek9KLsgCxBWSGKRsQRvY8hky
	 9LBKKf3gtF1Z3Jxi7ntpxr+QA5iIWEIXXDj0G5TrL3Z3aZpzY8bVnXK1jOmQVravip
	 5+Y5Xm0T/3+pQ1XzJwDmvNVCRHVGXxNGCyDFbRH/6NL/5m6SbGvUb8kDF1VxYww1kC
	 gtNt2Pb7Mpnqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gTIhArN1zwlQ; Sat, 17 Jun 2023 12:21:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC1FF40150;
	Sat, 17 Jun 2023 12:21:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC1FF40150
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B7341BF681
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 12:21:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6298641C21
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 12:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6298641C21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tNiYcjhJt8Tr for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jun 2023 12:21:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6880341BAE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6880341BAE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jun 2023 12:21:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="356874542"
X-IronPort-AV: E=Sophos;i="6.00,250,1681196400"; d="scan'208";a="356874542"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2023 05:20:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10743"; a="663486083"
X-IronPort-AV: E=Sophos;i="6.00,250,1681196400"; d="scan'208";a="663486083"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 17 Jun 2023 05:20:33 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qAUuu-0002ju-1T
 for intel-wired-lan@lists.osuosl.org; Sat, 17 Jun 2023 12:20:32 +0000
Date: Sat, 17 Jun 2023 20:20:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <202306172026.eNAu2LSX-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687004460; x=1718540460;
 h=date:from:to:subject:message-id;
 bh=xK6gZheyzH3RC0fazngk1uM5SXRMlJK5DuYCbfg7pu4=;
 b=eExbmtePMJ+RX3hlXZmd/lFQZaWebPNuKvESrdFfYXVeT5EdIqmGbhla
 6EIESgq9bNtAuARW2/k688Z4NksCrcZiPAgNZn/W57o8ycpTVEVIXcXT4
 NNOJfvKOzw6DjZbvxX3i9hyzHUV+f49DtvrOItVrnU02ZS5eS8InZHGPC
 GiSsK55E2671d/0IMIQfYVMhWO30hDT35kvGr8sF1HQtMixEeWWYVvitO
 c6bipzOz71e3d2OYs6PRzsuVlLoIjMPSJf73l53Goo6xqPZ1G9ZhVrd96
 0UkqG/9KXoCWo3+OOzl7YBFSj8aeJkfrlKvzlzp+RLxBhwd/ZV7PmJw/d
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eExbmteP
Subject: [Intel-wired-lan] [tnguy-next-queue:200GbE] BUILD SUCCESS
 bd220787e6b9d3bf61ed0a10be74c5fb24ac6d57
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 200GbE
branch HEAD: bd220787e6b9d3bf61ed0a10be74c5fb24ac6d57  idpf: configure SRIOV and add other ndo_ops

elapsed time: 721m

configs tested: 123
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230616   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r025-20230616   gcc  
arc                  randconfig-r031-20230616   gcc  
arc                  randconfig-r043-20230617   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                          gemini_defconfig   gcc  
arm                  randconfig-r046-20230617   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r032-20230616   clang
csky                                defconfig   gcc  
csky                 randconfig-r026-20230616   gcc  
hexagon              randconfig-r041-20230617   clang
hexagon              randconfig-r045-20230617   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230616   clang
i386         buildonly-randconfig-r005-20230616   clang
i386         buildonly-randconfig-r006-20230616   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230616   clang
i386                 randconfig-i002-20230616   clang
i386                 randconfig-i003-20230616   clang
i386                 randconfig-i004-20230616   clang
i386                 randconfig-i005-20230616   clang
i386                 randconfig-i006-20230616   clang
i386                 randconfig-i011-20230616   gcc  
i386                 randconfig-i012-20230616   gcc  
i386                 randconfig-i013-20230616   gcc  
i386                 randconfig-i014-20230616   gcc  
i386                 randconfig-i015-20230616   gcc  
i386                 randconfig-i016-20230616   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230616   gcc  
loongarch            randconfig-r014-20230616   gcc  
loongarch            randconfig-r015-20230616   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5272c3_defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                 randconfig-r035-20230616   gcc  
microblaze           randconfig-r001-20230616   gcc  
microblaze           randconfig-r004-20230616   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                 randconfig-r024-20230616   clang
nios2                               defconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230616   gcc  
parisc               randconfig-r016-20230616   gcc  
parisc               randconfig-r023-20230616   gcc  
parisc64                            defconfig   gcc  
powerpc                      acadia_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                    amigaone_defconfig   gcc  
powerpc                      cm5200_defconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                       maple_defconfig   gcc  
powerpc               mpc834x_itxgp_defconfig   clang
powerpc              randconfig-r036-20230616   clang
powerpc                     redwood_defconfig   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230617   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r013-20230616   gcc  
s390                 randconfig-r021-20230616   gcc  
s390                 randconfig-r044-20230617   clang
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh                         ecovec24_defconfig   gcc  
sh                           se7705_defconfig   gcc  
sh                           se7780_defconfig   gcc  
sh                              ul2_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230616   gcc  
sparc                randconfig-r005-20230616   gcc  
sparc                randconfig-r022-20230616   gcc  
sparc                randconfig-r033-20230616   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230616   clang
x86_64       buildonly-randconfig-r002-20230616   clang
x86_64       buildonly-randconfig-r003-20230616   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230616   clang
x86_64               randconfig-a002-20230616   clang
x86_64               randconfig-a003-20230616   clang
x86_64               randconfig-a004-20230616   clang
x86_64               randconfig-a005-20230616   clang
x86_64               randconfig-a006-20230616   clang
x86_64               randconfig-a011-20230616   gcc  
x86_64               randconfig-a012-20230616   gcc  
x86_64               randconfig-a013-20230616   gcc  
x86_64               randconfig-a014-20230616   gcc  
x86_64               randconfig-a015-20230616   gcc  
x86_64               randconfig-a016-20230616   gcc  
x86_64               randconfig-r034-20230616   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
