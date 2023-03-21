Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA5A6C2A9A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 07:44:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F287D4026F;
	Tue, 21 Mar 2023 06:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F287D4026F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679381074;
	bh=XjzY40JTVSMLArhV2Qaj/5TTtRJaK/mbd83+wbERn8k=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=VnWqAFH+hIbtLmYtzlJsge4gXjjsFSk6IHxY/LlSqd5OTlKIZldGlRDE+vr9Pt6du
	 lQ1PnFW8y+ppL1hV8TgHG7gVBDNiY/XZZu2hbw0MidKhMVmaj6siea6AJpqILN1qb4
	 c4rHIuUnJfDqJoqPXm30BdzJflbnOJK4Wdby1LrAx85+NPd5JI2Xrlg9/BJvsE+35C
	 cYV9TL1TRpzUVKIa3FLSZYUnnhUWpK8fzhL42EHbpCnYd/F1AsvUphxkRP/IJcOJgG
	 T2S2/YgHKsCMkHJS8Rp38pjqvnrbf+5LTtAEr3F5Vj9+Xh5GUtkK+BLfv8r9idAmQz
	 w9Qy7EyQdS/fA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MuA2dV69Tpvp; Tue, 21 Mar 2023 06:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC89A400E7;
	Tue, 21 Mar 2023 06:44:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC89A400E7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E34E1BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 06:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5475481444
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 06:44:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5475481444
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uyn1I9xcaRK0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 06:44:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E94FB8140D
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E94FB8140D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 06:44:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="336366571"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="336366571"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 23:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="805210177"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="805210177"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Mar 2023 23:44:17 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1peVjE-000BgP-2L;
 Tue, 21 Mar 2023 06:44:16 +0000
Date: Tue, 21 Mar 2023 14:43:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6419522a.dKSn8qiyMHrXYncO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679381066; x=1710917066;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FM57Sgs4Is5O6bLi3jLmWx4weK4kwtJWtKX3RMeXag4=;
 b=mAoM0Mkp+noYzjLV9Sz8aMrwk42e2Zh5buYIvx5gcWh6WL9dYq3pO1Ki
 P7CM9tLswJiPunCJr9c4mOpYf/KET+ZIpAG49DSGy3ieVMl+qK/ZOFe8a
 DRAPSBVv84UFJRFiwCFgSm13pi5bzn7i2JHRznl+5ZrgW7EtDZ+qdbn95
 q4drwtytI88K6J/c1tVNYkiR+q+d3DN1tSQKeN2QHymlTXFlb10q6pisD
 BHEPo9GgyFork3w+AEDVnMp0EgvGDKtPVVCinXp5tHZRBzs2i3KGPVTaY
 vuGy5JGum9RcREbiRDYfhqa1cMWpDvXcSAuoydiRJlUR8E85g9lPjB+TX
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mAoM0Mkp
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 fcd88ad5b463643dcb458f5d8097e21486c870ae
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
branch HEAD: fcd88ad5b463643dcb458f5d8097e21486c870ae  ice: identify aRFS flows using L3/L4 dissector info

elapsed time: 720m

configs tested: 182
configs skipped: 17

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230319   gcc  
alpha        buildonly-randconfig-r005-20230319   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r004-20230319   gcc  
alpha                randconfig-r025-20230320   gcc  
alpha                randconfig-r031-20230319   gcc  
alpha                randconfig-r036-20230319   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r024-20230319   gcc  
arc                  randconfig-r035-20230319   gcc  
arc                  randconfig-r043-20230319   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230319   gcc  
arm          buildonly-randconfig-r004-20230319   gcc  
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                  randconfig-r025-20230319   gcc  
arm                  randconfig-r046-20230319   gcc  
arm                  randconfig-r046-20230320   clang
arm                         socfpga_defconfig   clang
arm                        vexpress_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230321   clang
arm64                randconfig-r032-20230319   gcc  
csky         buildonly-randconfig-r003-20230319   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230319   gcc  
csky                 randconfig-r006-20230319   gcc  
csky                 randconfig-r021-20230320   gcc  
hexagon              randconfig-r003-20230319   clang
hexagon              randconfig-r006-20230319   clang
hexagon              randconfig-r015-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r041-20230320   clang
hexagon              randconfig-r045-20230319   clang
hexagon              randconfig-r045-20230320   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r003-20230320   clang
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230320   clang
i386                 randconfig-a002-20230320   clang
i386                 randconfig-a003-20230320   clang
i386                 randconfig-a004-20230320   clang
i386                 randconfig-a005-20230320   clang
i386                 randconfig-a006-20230320   clang
i386                 randconfig-a011-20230320   gcc  
i386                 randconfig-a012-20230320   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230320   gcc  
i386                 randconfig-a014-20230320   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230320   gcc  
i386                 randconfig-a016-20230320   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                             allyesconfig   gcc  
ia64         buildonly-randconfig-r002-20230319   gcc  
ia64         buildonly-randconfig-r003-20230319   gcc  
ia64                                defconfig   gcc  
ia64                        generic_defconfig   gcc  
ia64                 randconfig-r022-20230320   gcc  
ia64                          tiger_defconfig   gcc  
ia64                            zx1_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r022-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r004-20230319   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r023-20230320   gcc  
m68k                 randconfig-r031-20230319   gcc  
m68k                 randconfig-r034-20230319   gcc  
microblaze           randconfig-r005-20230319   gcc  
microblaze           randconfig-r011-20230319   gcc  
microblaze           randconfig-r014-20230319   gcc  
microblaze           randconfig-r026-20230319   gcc  
microblaze           randconfig-r033-20230319   gcc  
microblaze           randconfig-r034-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r003-20230319   clang
mips                 randconfig-r002-20230319   clang
mips                 randconfig-r005-20230320   gcc  
mips                 randconfig-r021-20230319   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230319   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                mpc7448_hpc2_defconfig   gcc  
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r002-20230319   gcc  
powerpc              randconfig-r016-20230319   clang
powerpc              randconfig-r032-20230319   gcc  
powerpc              randconfig-r033-20230319   gcc  
powerpc              randconfig-r034-20230319   gcc  
powerpc              randconfig-r036-20230319   gcc  
powerpc                     tqm8555_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230320   gcc  
riscv        buildonly-randconfig-r002-20230320   gcc  
riscv        buildonly-randconfig-r005-20230319   clang
riscv                               defconfig   gcc  
riscv                randconfig-r005-20230319   gcc  
riscv                randconfig-r014-20230320   gcc  
riscv                randconfig-r015-20230320   gcc  
riscv                randconfig-r016-20230320   gcc  
riscv                randconfig-r026-20230320   gcc  
riscv                randconfig-r035-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230319   clang
s390                       zfcpdump_defconfig   gcc  
sh                               alldefconfig   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230319   gcc  
sh           buildonly-randconfig-r004-20230320   gcc  
sh                            hp6xx_defconfig   gcc  
sh                   randconfig-r002-20230319   gcc  
sh                   randconfig-r011-20230319   gcc  
sh                   randconfig-r031-20230319   gcc  
sh                   randconfig-r032-20230319   gcc  
sh                          rsk7269_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc        buildonly-randconfig-r006-20230319   gcc  
sparc        buildonly-randconfig-r006-20230320   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230319   gcc  
sparc                randconfig-r024-20230319   gcc  
sparc                randconfig-r025-20230319   gcc  
sparc                randconfig-r035-20230319   gcc  
sparc64              randconfig-r001-20230320   gcc  
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
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r002-20230320   gcc  
xtensa               randconfig-r003-20230319   gcc  
xtensa               randconfig-r013-20230320   gcc  
xtensa               randconfig-r024-20230320   gcc  
xtensa               randconfig-r026-20230319   gcc  
xtensa               randconfig-r033-20230319   gcc  
xtensa               randconfig-r036-20230319   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
