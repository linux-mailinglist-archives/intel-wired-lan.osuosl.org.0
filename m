Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3C75EB982
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Sep 2022 07:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9E8A400C6;
	Tue, 27 Sep 2022 05:21:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9E8A400C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664256060;
	bh=pFTO4mpovjHSUrMBBqJY2fwH7pyTIpS1mO4EGEcLneE=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=B4FCww7YVV/F8tYY8jpx85TFPnRViqzPoqgwQLbqs8UnA9c4Hdkxb0XLPUMjaf0aP
	 9WMb+zpzLTogqAPfzJcCbP6dfCqvR/9URm8DgdxXIIK4KFC5Blc3yPZVToYd+q/Q7X
	 iPANts9aO/eNoqlyXrxqRHULulaaspdJXg5ZZMjLx/NWsAvBK3BCRNR6YAUjUm6V62
	 1KOyIqT/2xz1HfbWRsM+OECcModdS4bs3k0Mtop43Z4P9sejJ9OwR4gcv1DLmmGqkZ
	 5CsOcPXqu8Fe2NEbYZyn2hrI1Zg8SHPdEVcY1cAlES8Oo9IzaTPEr4dpXF7V+fP831
	 ZE39zZ+g3N77A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UZLvwT52ujSc; Tue, 27 Sep 2022 05:20:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20B61400EA;
	Tue, 27 Sep 2022 05:20:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20B61400EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A68C1BF385
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 05:20:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 330CA60B3D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 05:20:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 330CA60B3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TZ7Gk6-tS-U6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Sep 2022 05:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AF7B60AC0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1AF7B60AC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Sep 2022 05:20:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="327579044"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="327579044"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 22:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="683843998"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="683843998"
Received: from lkp-server02.sh.intel.com (HELO dfa2c9fcd321) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 26 Sep 2022 22:20:24 -0700
Received: from kbuild by dfa2c9fcd321 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1od316-0000dE-0y;
 Tue, 27 Sep 2022 05:20:24 +0000
Date: Tue, 27 Sep 2022 13:20:03 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <63328803.Qjxy0JbCt7yG6SC2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664256047; x=1695792047;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vuDKb//w4sPOoArh8dRoNMZ9RjmaE5CUVeSE6srA5PY=;
 b=UJzgHegq44Irq6qRE68OlWJmgz6hOD9kTlRyPVdoWhf99ve9DC4txaxm
 Vdhx1GF39KQp85T6ZCMsOeXs8g2dSs1sbGditf825biSA7RL0O3d1TW/x
 UZD3gyn8p8HNH0pN1ar2SVqGobBxCH3X/b7p8HXCEr48atIrXvP4M5t92
 ceR21j58P8nqSmy3g9sKzQTn1x41hHTIMF5whZOnRcukXf44fJZTsbzii
 u0XQIq9yuOZ/MZlGb0uxAWYPnzD03pg20+Ma/OWHRw0sLfAkyCa1lYYOV
 5h8fApJvydhl/sOBYwFGP7TQodFWaIWWs3Wk8FvZStkIRxhPBtWfcc3WF
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UJzgHegq
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 b7ca8d5f56e6c57b671ceb8de1361d2a5a495087
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
branch HEAD: b7ca8d5f56e6c57b671ceb8de1361d2a5a495087  sfc: correct filter_table_remove method for EF10 PFs

elapsed time: 4351m

configs tested: 249
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                           x86_64_defconfig
um                             i386_defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allmodconfig
arc                  randconfig-r043-20220923
riscv                randconfig-r042-20220923
s390                 randconfig-r044-20220923
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
i386                                defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
riscv                randconfig-r042-20220925
arc                  randconfig-r043-20220925
s390                 randconfig-r044-20220925
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-c001
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
sparc                             allnoconfig
sparc                       sparc32_defconfig
sh                            shmin_defconfig
mips                           gcw0_defconfig
ia64                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
sh                   secureedge5410_defconfig
sh                        sh7757lcr_defconfig
parisc64                         alldefconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                               defconfig
ia64                             allyesconfig
arm                              allmodconfig
m68k                                defconfig
mips                             allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
m68k                       m5208evb_defconfig
loongarch                 loongson3_defconfig
powerpc                     tqm8555_defconfig
m68k                        stmark2_defconfig
powerpc                      pasemi_defconfig
sh                         apsh4a3a_defconfig
powerpc                     stx_gp3_defconfig
mips                         db1xxx_defconfig
sh                        sh7785lcr_defconfig
sh                             sh03_defconfig
powerpc                      pcm030_defconfig
sh                           se7780_defconfig
arm                          badge4_defconfig
mips                           ci20_defconfig
m68k                       m5275evb_defconfig
arm                           corgi_defconfig
x86_64                           alldefconfig
arm                           stm32_defconfig
sparc                       sparc64_defconfig
mips                     loongson1b_defconfig
arm                          pxa910_defconfig
nios2                            alldefconfig
arc                              alldefconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                      chrp32_defconfig
mips                    maltaup_xpa_defconfig
xtensa                  audio_kc705_defconfig
sh                           se7206_defconfig
sh                        apsh4ad0a_defconfig
sh                        sh7763rdp_defconfig
powerpc                    adder875_defconfig
mips                  maltasmvp_eva_defconfig
m68k                       m5249evb_defconfig
m68k                       m5475evb_defconfig
parisc                generic-32bit_defconfig
sparc64                             defconfig
sh                          r7780mp_defconfig
sh                          polaris_defconfig
xtensa                              defconfig
sh                          sdk7780_defconfig
powerpc                      ppc40x_defconfig
sh                ecovec24-romimage_defconfig
sh                          rsk7203_defconfig
arm                        oxnas_v6_defconfig
powerpc                      makalu_defconfig
m68k                          sun3x_defconfig
arm                           sama5_defconfig
m68k                       bvme6000_defconfig
openrisc                         alldefconfig
m68k                         amcore_defconfig
microblaze                      mmu_defconfig
sh                           se7705_defconfig
arm                     eseries_pxa_defconfig
ia64                        generic_defconfig
arm                           h3600_defconfig
xtensa                          iss_defconfig
arc                        nsim_700_defconfig
sh                           se7751_defconfig
arm                            pleb_defconfig
mips                      maltasmvp_defconfig
sh                          lboxre2_defconfig
sh                           se7724_defconfig
powerpc                     taishan_defconfig
sh                   sh7724_generic_defconfig
arm                         assabet_defconfig
arm                       multi_v4t_defconfig
parisc                generic-64bit_defconfig
xtensa                       common_defconfig
i386                 randconfig-a003-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a002-20220926
microblaze                          defconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a003-20220926
arm                        mini2440_defconfig
ia64                      gensparse_defconfig
powerpc                    klondike_defconfig
arm                          gemini_defconfig
powerpc                      tqm8xx_defconfig
sh                               alldefconfig
m68k                        m5307c3_defconfig
powerpc                      cm5200_defconfig
s390                          debug_defconfig
arc                  randconfig-r043-20220926
powerpc                     mpc83xx_defconfig
arm                         vf610m4_defconfig
openrisc                    or1ksim_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                         axm55xx_defconfig
powerpc                 canyonlands_defconfig

clang tested configs:
hexagon              randconfig-r041-20220923
hexagon              randconfig-r045-20220923
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                  mpc885_ads_defconfig
arm                         lpc32xx_defconfig
powerpc                     akebono_defconfig
arm                              alldefconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                        maltaup_defconfig
arm                          ixp4xx_defconfig
mips                malta_qemu_32r6_defconfig
hexagon              randconfig-r041-20220925
hexagon              randconfig-r045-20220925
x86_64                        randconfig-c007
arm                  randconfig-c002-20220925
i386                          randconfig-c001
s390                 randconfig-c005-20220925
riscv                randconfig-c006-20220925
mips                 randconfig-c004-20220925
powerpc              randconfig-c003-20220925
arm                   milbeaut_m10v_defconfig
mips                           ip22_defconfig
powerpc                        icon_defconfig
mips                        omega2p_defconfig
hexagon                          alldefconfig
powerpc                       ebony_defconfig
arm                             mxs_defconfig
s390                             alldefconfig
arm                       netwinder_defconfig
mips                     cu1000-neo_defconfig
i386                 randconfig-a011-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a016-20220926
hexagon              randconfig-r041-20220926
hexagon              randconfig-r045-20220926
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
x86_64               randconfig-a016-20220926
x86_64               randconfig-a012-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a015-20220926
powerpc                      katmai_defconfig
powerpc                      ppc44x_defconfig
powerpc                          allmodconfig
arm                          collie_defconfig
mips                           mtx1_defconfig
powerpc                   microwatt_defconfig
mips                          ath25_defconfig
arm                     davinci_all_defconfig
mips                        bcm63xx_defconfig
riscv                             allnoconfig
arm                         s3c2410_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
