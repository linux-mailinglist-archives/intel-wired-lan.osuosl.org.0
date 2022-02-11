Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6484B1D96
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Feb 2022 06:12:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D0BA60E41;
	Fri, 11 Feb 2022 05:12:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VdERXaSO5mfX; Fri, 11 Feb 2022 05:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78CC160E49;
	Fri, 11 Feb 2022 05:12:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A7C451BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 05:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 85BA460B64
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 05:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tBHCGp1JaWdh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Feb 2022 05:12:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B9FF607B4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Feb 2022 05:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644556351; x=1676092351;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KwNtfp6Wqv+omPZyfIUCeH82sYZPBWAGr7tGAInsjgI=;
 b=CDyYwCnQ/iMGfiJAH4FKbgP3ZYYourywfJim7ODQ7CAcwJstFW0f5wTP
 Ue7EClBpT9ZKveJPsjCNMWyDoihTpqSVPFfORDhxNr2xzI4bfyKZQzDYV
 LIcbrxVBK6rR1X5O6mz/+BcZAJHnTOh20El4uHPZOP4oFu8MbuiLxVfNd
 0J/weILwBoAr9xjRxHixrs3tfuvKGgrw6N7gnx76x1mrzYEoZvHPNh4tk
 7qhXV7iHZWVPYIP8Ie/eNMDSA/XtGPjzsIJkvE2NPaM2umiCL/sLZdgQx
 p8DEinC0NyCGFn+fIveHOaaXVHnpj3XvPaUNfykPqqxzArX2rXPaI33VL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="249413747"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="249413747"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 21:12:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="500658611"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 10 Feb 2022 21:12:29 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIOEO-00049C-VQ; Fri, 11 Feb 2022 05:12:28 +0000
Date: Fri, 11 Feb 2022 13:12:01 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6205f021.1XDQ+zY4xiHrXxYI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 5dbbbd01cbba831233c6ea9a3e6bfa133606d3c0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git 100GbE
branch HEAD: 5dbbbd01cbba831233c6ea9a3e6bfa133606d3c0  ice: Avoid RTNL lock when re-creating auxiliary device

elapsed time: 721m

configs tested: 151
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
arc                           tb10x_defconfig
mips                       bmips_be_defconfig
ia64                         bigsur_defconfig
powerpc                 mpc834x_mds_defconfig
openrisc                            defconfig
mips                 decstation_r4k_defconfig
m68k                          multi_defconfig
nios2                            alldefconfig
powerpc                      pasemi_defconfig
sh                        sh7785lcr_defconfig
sh                          lboxre2_defconfig
arm                       omap2plus_defconfig
arc                    vdk_hs38_smp_defconfig
mips                    maltaup_xpa_defconfig
mips                          rb532_defconfig
arm                          simpad_defconfig
parisc                generic-64bit_defconfig
openrisc                 simple_smp_defconfig
arm                        shmobile_defconfig
arm                        mini2440_defconfig
mips                           ip32_defconfig
arm                           h3600_defconfig
powerpc                       eiger_defconfig
powerpc                     tqm8541_defconfig
arm                         s3c6400_defconfig
csky                             alldefconfig
arm                     eseries_pxa_defconfig
alpha                            alldefconfig
mips                            gpr_defconfig
riscv                    nommu_k210_defconfig
h8300                     edosk2674_defconfig
parisc                              defconfig
m68k                          hp300_defconfig
powerpc                     tqm8555_defconfig
arm                       multi_v4t_defconfig
xtensa                              defconfig
arm                      jornada720_defconfig
powerpc                 linkstation_defconfig
sh                         microdev_defconfig
arm                        multi_v7_defconfig
openrisc                         alldefconfig
sh                           se7724_defconfig
mips                     loongson1b_defconfig
m68k                       m5275evb_defconfig
arm                  randconfig-c002-20220211
arm                  randconfig-c002-20220210
arm                  randconfig-c002-20220209
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a003
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
riscv                randconfig-c006-20220211
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220211
arm                  randconfig-c002-20220211
i386                          randconfig-c001
mips                 randconfig-c004-20220211
riscv                randconfig-c006-20220209
powerpc              randconfig-c003-20220209
mips                 randconfig-c004-20220209
arm                  randconfig-c002-20220209
mips                            e55_defconfig
arm                        mvebu_v5_defconfig
powerpc                      katmai_defconfig
arm                                 defconfig
powerpc                     ksi8560_defconfig
mips                       lemote2f_defconfig
powerpc                     mpc5200_defconfig
powerpc                     akebono_defconfig
powerpc                       ebony_defconfig
mips                      pic32mzda_defconfig
mips                       rbtx49xx_defconfig
powerpc                     kilauea_defconfig
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig
powerpc                      ppc44x_defconfig
powerpc                        icon_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220211
hexagon              randconfig-r041-20220211
riscv                randconfig-r042-20220211
hexagon              randconfig-r045-20220210
hexagon              randconfig-r041-20220210

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
