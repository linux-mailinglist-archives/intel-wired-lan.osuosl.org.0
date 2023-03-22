Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 888156C453A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 09:44:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74064610BF;
	Wed, 22 Mar 2023 08:44:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74064610BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679474691;
	bh=s6eu/vpqgMq3RFFD11wUT9kKakvXbg89hq3X/Uk6Xa8=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=yg8yiEZoPfFQo8qWIp/XrimNkY/fFJxJxTv1FGOn2FGzRGs6exhze2BHFEM2inOgI
	 oJtjG+V0en8k0UdfJu4+cQR/FcgSvFvcTXJpP69xZM3qYSTo+KQdcMQsPMdVQSp6Xt
	 6yzmf1fpfetqA3XygivssWds3JTpAoMIWfjtkrv4frUGkSObAcl6yDrCMcL6hEFqK1
	 4AnPIAItwm1zg2pFvLt/1tXXNh768no5qQumPenQYmc4gNCCslmIZzikBTQc3BfyM7
	 eiVGINKmaNvINj3xW7TvLVMjBUJORI2Tnd0Bzzaqs15lFuvS2tTtgtNSq0R3wDCKzA
	 UHC/iqg7bg5FA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mxlZNBBQTKzK; Wed, 22 Mar 2023 08:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E10E600C6;
	Wed, 22 Mar 2023 08:44:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E10E600C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 982121BF3A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 71ECC83F00
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71ECC83F00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gyK8DT2SnwLK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 08:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BB3F83F01
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2BB3F83F01
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 08:44:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="336664374"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="336664374"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:44:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="856032952"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="856032952"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 22 Mar 2023 01:44:29 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1peu56-000D6A-14;
 Wed, 22 Mar 2023 08:44:28 +0000
Date: Wed, 22 Mar 2023 16:43:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <641abfc6.tdo7kG+9TqADTSp2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679474680; x=1711010680;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eQZ1EIvI534wjPcpZ4WYGCec9wiKtHdcUlpbLcGtO7c=;
 b=k2EaP5mvXD4SH5KOJLiOD4Bv5fG7RTGeLVB7ZGs5WhflZ1Kfv9uUajLA
 +6pC2DB+vhrJ2W0uQBF9p3q4PvGNC9KzYu69uZCtQX7XgRK3joIjw4Bt6
 4L8QZJ4uC6UtZLTSQdxbMqF2CR6gAFVJeI/N186x24aB56QEkjp1oydY3
 Hpv+/wkTrgByYhXfvhgyZDjzMXbAkHZOMRXLpND0IP2QtdYbVKB2heXua
 ibgKNDgd6J/87WjdeQqjbUE/BOMIQOCXHzABZ2Se0M+ftLVB84z23FbTt
 +3lV1rsdeuTqdvMPgKh+ln7gpDTFm3X3JkYzk4Bt3Vr5KpWTQVte0Rf3F
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k2EaP5mv
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ef04ce672cd263be630fea26246c609b3eff987d
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
branch HEAD: ef04ce672cd263be630fea26246c609b3eff987d  ice: fix invalid check for empty list in ice_sched_assoc_vsi_to_agg()

elapsed time: 730m

configs tested: 143
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r022-20230320   gcc  
alpha                randconfig-r035-20230319   gcc  
alpha                randconfig-r036-20230319   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230319   gcc  
arc                  randconfig-r014-20230320   gcc  
arc                  randconfig-r024-20230319   gcc  
arc                  randconfig-r034-20230319   gcc  
arc                  randconfig-r043-20230319   gcc  
arc                  randconfig-r043-20230320   gcc  
arc                  randconfig-r043-20230321   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r016-20230319   gcc  
arm                  randconfig-r046-20230319   gcc  
arm                  randconfig-r046-20230320   clang
arm                  randconfig-r046-20230321   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230319   clang
csky                                defconfig   gcc  
csky                 randconfig-r021-20230320   gcc  
hexagon      buildonly-randconfig-r001-20230319   clang
hexagon      buildonly-randconfig-r003-20230319   clang
hexagon              randconfig-r003-20230319   clang
hexagon              randconfig-r006-20230319   clang
hexagon              randconfig-r011-20230320   clang
hexagon              randconfig-r012-20230319   clang
hexagon              randconfig-r022-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r041-20230320   clang
hexagon              randconfig-r045-20230319   clang
hexagon              randconfig-r045-20230320   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230320   clang
i386                          randconfig-a001   gcc  
i386                 randconfig-a002-20230320   clang
i386                          randconfig-a002   clang
i386                 randconfig-a003-20230320   clang
i386                          randconfig-a003   gcc  
i386                 randconfig-a004-20230320   clang
i386                          randconfig-a004   clang
i386                 randconfig-a005-20230320   clang
i386                          randconfig-a005   gcc  
i386                 randconfig-a006-20230320   clang
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230320   gcc  
i386                 randconfig-a012-20230320   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230320   gcc  
i386                 randconfig-a014-20230320   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230320   gcc  
i386                 randconfig-a016-20230320   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230319   gcc  
ia64                 randconfig-r014-20230319   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r031-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230319   gcc  
m68k                 randconfig-r031-20230319   gcc  
microblaze           randconfig-r005-20230319   gcc  
microblaze           randconfig-r011-20230319   gcc  
microblaze           randconfig-r016-20230320   gcc  
microblaze           randconfig-r026-20230320   gcc  
microblaze           randconfig-r034-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230319   clang
mips                 randconfig-r025-20230319   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r033-20230319   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230319   clang
powerpc              randconfig-r013-20230320   gcc  
powerpc              randconfig-r021-20230319   clang
powerpc              randconfig-r033-20230319   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r014-20230320   gcc  
riscv                randconfig-r015-20230319   clang
riscv                randconfig-r015-20230320   gcc  
riscv                randconfig-r016-20230320   gcc  
riscv                randconfig-r023-20230320   gcc  
riscv                randconfig-r036-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                randconfig-r042-20230320   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230319   clang
s390                 randconfig-r026-20230319   clang
s390                 randconfig-r044-20230319   clang
s390                 randconfig-r044-20230320   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r032-20230319   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r025-20230320   gcc  
sparc                randconfig-r035-20230319   gcc  
sparc64              randconfig-r013-20230319   gcc  
sparc64              randconfig-r022-20230319   gcc  
sparc64              randconfig-r024-20230320   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230320   clang
x86_64                        randconfig-a001   clang
x86_64               randconfig-a002-20230320   clang
x86_64               randconfig-a003-20230320   clang
x86_64                        randconfig-a003   clang
x86_64               randconfig-a004-20230320   clang
x86_64               randconfig-a005-20230320   clang
x86_64                        randconfig-a005   clang
x86_64               randconfig-a006-20230320   clang
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230320   gcc  
xtensa               randconfig-r013-20230320   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
