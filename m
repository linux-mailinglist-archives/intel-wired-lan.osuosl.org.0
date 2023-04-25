Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC006EDB5F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Apr 2023 07:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2FEE40E47;
	Tue, 25 Apr 2023 05:52:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2FEE40E47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682401959;
	bh=7t1YjuAK1sGnz0NlahMU2EfklVleSHJh5tqGRdtqg38=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=J8XjhAd9tepxYLGBP3Zv6IjhknVML2tTQQ8lFisdSBnzfdfj5F9JuM7ptLiO28DhY
	 mFV0cWEc8rTBB8VCCx0thbaj1IDABDk0mozTqspC1NtMZVu2QZDuWIBMdmY/GMVSK8
	 ZRTapbR4qH1SqF/00iuHVZeo2nTAh2dEqIcZTV1NXYSotVaWttJWtXlFtuS73QacQy
	 c1mbrwxlc/1vfz1Wzc6r/ghK9tBptLdyZ54plOcaGMNYymJqDfSUbocNM0tbrD4Eqq
	 RL4H5blqD4B5RJAr3IJWA9sQwDebCpPSXUZxSkvQIjwy83p0gHY/w38UhagR41QsPf
	 vxCkQy1MDui8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id meuLxZ_tRihj; Tue, 25 Apr 2023 05:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 28F86409A1;
	Tue, 25 Apr 2023 05:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28F86409A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6D5051BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 05:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 46C3181E2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 05:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 46C3181E2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fO9DgLsBsFXz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Apr 2023 05:52:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1DBB81E19
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1DBB81E19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Apr 2023 05:52:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="348579385"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="348579385"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 22:52:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="1023002992"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="1023002992"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 24 Apr 2023 22:52:24 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1prBb8-000j3a-2p;
 Tue, 25 Apr 2023 05:52:18 +0000
Date: Tue, 25 Apr 2023 13:51:51 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <64476a77.iu7sFB+r85pAAuAu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682401946; x=1713937946;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8wDvF/qUxHrMzYQ25kTEmiSJmjhvnQLZ+3oQmUZf6WU=;
 b=N/Hu+603TF6Ai2Jyj9ROchjfwi/wzTQt2zH0HB23NquzMtNHy+8YFhWE
 cjikABPVni8/+kwvWTTNrKVx6cQN/TMOW+kp4xlb3vWnKCVbM1bZKaoC0
 brUwBoDgnKblYeBhZgAQoSSDqLEsZM8Oe1Lbuu4jXJ2PpQN8UWsd4F4FC
 4mMYzX2a7zOHKv3L30qWeetchIZl+YH5DlzHD1IKtbFRzl93WHdz877rH
 uuKmLjVfi42m4xr/yG1aohUgNW/A0GeqqEBj9YTWQU1hVZiUt3+Brr5gC
 OnQWb90gmNlscBGE/1ZOsLZ1ENePGt6TxRKjIv9etXgARikRf5Z/MNcqy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N/Hu+603
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d15a5df649ee6351197170c855148f07caf69d0b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
branch HEAD: d15a5df649ee6351197170c855148f07caf69d0b  igc: Avoid transmit queue timeout for XDP

elapsed time: 725m

configs tested: 122
configs skipped: 14

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r026-20230423   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230423   gcc  
arc                  randconfig-r043-20230423   gcc  
arc                  randconfig-r043-20230424   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230423   gcc  
arm                  randconfig-r016-20230424   clang
arm                  randconfig-r023-20230423   gcc  
arm                  randconfig-r046-20230423   gcc  
arm                  randconfig-r046-20230424   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r034-20230425   gcc  
arm64                randconfig-r036-20230425   gcc  
csky         buildonly-randconfig-r006-20230424   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r022-20230423   gcc  
csky                 randconfig-r026-20230424   gcc  
hexagon      buildonly-randconfig-r004-20230424   clang
hexagon      buildonly-randconfig-r005-20230423   clang
hexagon              randconfig-r012-20230423   clang
hexagon              randconfig-r041-20230423   clang
hexagon              randconfig-r041-20230424   clang
hexagon              randconfig-r045-20230423   clang
hexagon              randconfig-r045-20230424   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230424   clang
i386                 randconfig-a002-20230424   clang
i386                 randconfig-a003-20230424   clang
i386                 randconfig-a004-20230424   clang
i386                 randconfig-a005-20230424   clang
i386                 randconfig-a006-20230424   clang
i386                 randconfig-a011-20230424   gcc  
i386                 randconfig-a012-20230424   gcc  
i386                 randconfig-a013-20230424   gcc  
i386                 randconfig-a014-20230424   gcc  
i386                 randconfig-a015-20230424   gcc  
i386                 randconfig-a016-20230424   gcc  
i386                 randconfig-r013-20230424   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r004-20230423   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r011-20230423   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230424   gcc  
m68k                 randconfig-r021-20230424   gcc  
m68k                 randconfig-r033-20230425   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230423   clang
mips                 randconfig-r003-20230423   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230424   gcc  
nios2                randconfig-r005-20230423   gcc  
nios2                randconfig-r025-20230424   gcc  
nios2                randconfig-r032-20230425   gcc  
openrisc             randconfig-r014-20230424   gcc  
openrisc             randconfig-r031-20230425   gcc  
parisc       buildonly-randconfig-r006-20230423   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r021-20230423   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230424   clang
riscv                randconfig-r042-20230423   clang
riscv                randconfig-r042-20230424   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230423   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230423   clang
s390                 randconfig-r044-20230424   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r023-20230424   gcc  
sh                   randconfig-r025-20230423   gcc  
sparc        buildonly-randconfig-r002-20230423   gcc  
sparc        buildonly-randconfig-r005-20230424   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r001-20230423   gcc  
sparc                randconfig-r002-20230423   gcc  
sparc64              randconfig-r003-20230424   gcc  
sparc64              randconfig-r006-20230423   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230424   clang
x86_64       buildonly-randconfig-r002-20230424   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230424   clang
x86_64               randconfig-a002-20230424   clang
x86_64               randconfig-a003-20230424   clang
x86_64               randconfig-a004-20230424   clang
x86_64               randconfig-a005-20230424   clang
x86_64               randconfig-a006-20230424   clang
x86_64               randconfig-a011-20230424   gcc  
x86_64               randconfig-a012-20230424   gcc  
x86_64               randconfig-a013-20230424   gcc  
x86_64               randconfig-a014-20230424   gcc  
x86_64               randconfig-a015-20230424   gcc  
x86_64               randconfig-a016-20230424   gcc  
x86_64               randconfig-r011-20230424   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r004-20230424   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
