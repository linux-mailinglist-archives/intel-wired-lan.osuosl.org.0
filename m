Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0457015A8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 May 2023 11:28:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19C69408DA;
	Sat, 13 May 2023 09:28:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19C69408DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683970098;
	bh=b11SGOMJkT/wHZ3IKN0E5XHFuM/uwdzSxj3v9Q9IeyE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4gJKAIEl81eEC11Vsymi1sd8LliXXqfkMixBLTEKRKEXJOV0TBHoEOGS9hq9XWoJB
	 JhBTNRifNvYjfpG7CiybnAj4Ege1DCovx9pr8yhjq8FgN67fBUKILfdtX9qvR2JGEa
	 mm1WM6r/BkwCySk8+Ha1lVMTtoYpTvQ+LMXFBI5DKJ9vs3iAp43WnKSuBsK0b6CmRM
	 puAU5O9hkgE/rF84/oWkYMm7DaYPZd3LdCIYtur1RA70ZJmI1rHC9IDbjmksWc0gqO
	 qyLbGyKsFt4bM+lcJyrco0w+z20zPJt0ilUPs1I3+tsjg/0wyIL/w9m9r7BF05Ovt0
	 SEbUD4Sbr/izw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ag4LHHU_R-Ze; Sat, 13 May 2023 09:28:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EED8409F0;
	Sat, 13 May 2023 09:28:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EED8409F0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 878971BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 09:28:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68E37841A7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 09:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E37841A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9C9SypPd3CQB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 May 2023 09:28:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34FEA84100
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34FEA84100
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 09:28:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="340276189"
X-IronPort-AV: E=Sophos;i="5.99,272,1677571200"; d="scan'208";a="340276189"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2023 02:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="874642377"
X-IronPort-AV: E=Sophos;i="5.99,272,1677571200"; d="scan'208";a="874642377"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 13 May 2023 02:28:08 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxlXr-0005Qa-2x
 for intel-wired-lan@lists.osuosl.org; Sat, 13 May 2023 09:28:07 +0000
Date: Sat, 13 May 2023 17:27:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <20230513092744.pw-9I%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683970090; x=1715506090;
 h=date:from:to:subject:message-id;
 bh=qx46OIiOdBGNqwMMicAWemFjeVnnqEcH3TGOngiJIQw=;
 b=OfXgn0RHwcvan09oz4ZpbG1F5M+zmD+zIfk87aUe1vb6p7RX886EYuLy
 hOkv55CdlOMis7U5+CNqPzE+OBDROUvMQ2vADuOqtoxyx0Ofe26L8FOOV
 G+NDZBhUlynQf/0sHzvKJSZHCQBOWYpbeIk8hw/bWtOyTmtwt5ilAWHhu
 s4PTwC3oPUYpmnJnPHp7J3Rxq4x53tmKKv3letL036DqsFHd+xWNVSwcL
 hHIrQE4WAjp97v8vJMk8GEsYpPBWb535tptyl+Z05lVfRc6zy2GlpgpQZ
 GKRdxX9sVpJ4eCES5GoqfflVSfuMoQsBtFngchd/LpDlLLdvAQwJdaNEW
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OfXgn0RH
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 ec27d92344ce9446605c6099bbb4bc7b2a442234
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
branch HEAD: ec27d92344ce9446605c6099bbb4bc7b2a442234  igc: Add workaround for missing timestamps

elapsed time: 883m

configs tested: 158
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r004-20230511   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230511   gcc  
alpha                randconfig-r013-20230511   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230512   gcc  
arc                  randconfig-r022-20230509   gcc  
arc                  randconfig-r036-20230512   gcc  
arc                  randconfig-r043-20230509   gcc  
arc                  randconfig-r043-20230511   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                            qcom_defconfig   gcc  
arm                  randconfig-r026-20230509   gcc  
arm                  randconfig-r046-20230509   gcc  
arm                  randconfig-r046-20230511   clang
arm                        spear6xx_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r003-20230511   gcc  
hexagon              randconfig-r004-20230509   clang
hexagon              randconfig-r005-20230509   clang
hexagon              randconfig-r024-20230509   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230511   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230511   clang
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
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230509   gcc  
loongarch            randconfig-r014-20230512   gcc  
m68k                             allmodconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k         buildonly-randconfig-r003-20230509   gcc  
m68k                                defconfig   gcc  
m68k                       m5249evb_defconfig   gcc  
m68k                 randconfig-r002-20230511   gcc  
m68k                 randconfig-r015-20230511   gcc  
m68k                 randconfig-r021-20230511   gcc  
m68k                 randconfig-r025-20230511   gcc  
m68k                 randconfig-r031-20230512   gcc  
microblaze           randconfig-r012-20230511   gcc  
microblaze           randconfig-r023-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips         buildonly-randconfig-r001-20230509   clang
mips                 randconfig-r003-20230509   clang
mips                 randconfig-r015-20230509   gcc  
mips                 randconfig-r024-20230511   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230511   gcc  
nios2                randconfig-r016-20230511   gcc  
nios2                randconfig-r033-20230512   gcc  
openrisc     buildonly-randconfig-r002-20230511   gcc  
openrisc     buildonly-randconfig-r006-20230511   gcc  
openrisc             randconfig-r006-20230509   gcc  
openrisc             randconfig-r011-20230509   gcc  
openrisc             randconfig-r016-20230509   gcc  
openrisc             randconfig-r025-20230509   gcc  
parisc                              defconfig   gcc  
parisc                generic-32bit_defconfig   gcc  
parisc               randconfig-r022-20230511   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                     akebono_defconfig   clang
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230511   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                     mpc83xx_defconfig   gcc  
powerpc              randconfig-r006-20230511   clang
powerpc              randconfig-r013-20230509   clang
powerpc              randconfig-r026-20230511   gcc  
powerpc                 xes_mpc85xx_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230509   clang
riscv        buildonly-randconfig-r004-20230509   clang
riscv                               defconfig   gcc  
riscv             nommu_k210_sdcard_defconfig   gcc  
riscv                randconfig-r005-20230511   clang
riscv                randconfig-r012-20230509   clang
riscv                randconfig-r014-20230511   gcc  
riscv                randconfig-r016-20230512   clang
riscv                randconfig-r021-20230509   clang
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230511   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r023-20230511   gcc  
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230511   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230509   gcc  
sh                          rsk7264_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230511   gcc  
sparc                randconfig-r012-20230512   gcc  
sparc                randconfig-r035-20230512   gcc  
sparc64      buildonly-randconfig-r005-20230511   gcc  
sparc64              randconfig-r032-20230512   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           alldefconfig   gcc  
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
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r006-20230509   gcc  
xtensa               randconfig-r001-20230509   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
