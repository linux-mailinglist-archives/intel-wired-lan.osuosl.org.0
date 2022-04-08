Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1814F90D6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 10:32:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFA71612DA;
	Fri,  8 Apr 2022 08:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RNjUgJ47u2uA; Fri,  8 Apr 2022 08:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C3A560BA8;
	Fri,  8 Apr 2022 08:32:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D55981BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8EF740207
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMoLGZltU9_x for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 08:32:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0E7E40181
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649406731; x=1680942731;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ox5oIkI0Ou43wruJQuZSMgRQnV+8YetzBjubrrDlxCI=;
 b=M5eh/l78KP2WRhguyPjW23iVKENdoYlgrK9W4lQP0IOL2TR6sCvx0A5r
 xt4Uh5+dZ/KL+HIyJSoHpr/uH8hwojYCZ17gsEPfEbFRv3XCJ/yHJaU1m
 aOekhoZIKO6SHBXpiRbxM3aADVZ7BJssaZB/pMBj3fS31CaXtmTWED8qH
 rSOjhWgohlS91CuAEPSMX3iM2CiqHM/gTXMoNA7iF1Ub9jZ3CqCGF9kDE
 8Qnr13T1brrhgQTK27siKDgYApTPWDzI5N0cmw+pUzNOAdY2RIvaANrzj
 mLwpLLlZgxOPqRB8ey7wqou487zGC73CZ3uCfwMvgE4RTFmTXjgOfHPmR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="261538141"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="261538141"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="589149520"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 08 Apr 2022 01:32:09 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nck2K-000047-Tb;
 Fri, 08 Apr 2022 08:32:08 +0000
Date: Fri, 08 Apr 2022 16:31:54 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <624ff2fa.Xf8Fi35w2JI3lL63%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 2a72fc8153cfba9ecb0e2933af9879654269b13a
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
branch HEAD: 2a72fc8153cfba9ecb0e2933af9879654269b13a  igc: Fix suspending when PTM is active

elapsed time: 727m

configs tested: 175
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arc                        nsim_700_defconfig
arm                        mvebu_v7_defconfig
arm                      integrator_defconfig
powerpc                     taishan_defconfig
sh                          polaris_defconfig
arm                          iop32x_defconfig
sh                           se7722_defconfig
arc                            hsdk_defconfig
powerpc                      bamboo_defconfig
sh                        apsh4ad0a_defconfig
arm                         axm55xx_defconfig
arm                             rpc_defconfig
mips                  maltasmvp_eva_defconfig
powerpc                      ep88xc_defconfig
powerpc                      ppc6xx_defconfig
sh                           se7780_defconfig
sparc64                          alldefconfig
mips                     decstation_defconfig
arm                            hisi_defconfig
arm                           h5000_defconfig
arm                         lubbock_defconfig
sh                              ul2_defconfig
arm                        cerfcube_defconfig
ia64                      gensparse_defconfig
arm                          gemini_defconfig
sh                     sh7710voipgw_defconfig
openrisc                    or1ksim_defconfig
arm                       imx_v6_v7_defconfig
m68k                        mvme16x_defconfig
sh                        sh7757lcr_defconfig
powerpc                      mgcoge_defconfig
powerpc                      tqm8xx_defconfig
powerpc                  iss476-smp_defconfig
powerpc                    sam440ep_defconfig
powerpc                 mpc8540_ads_defconfig
mips                            ar7_defconfig
arm                         nhk8815_defconfig
sh                   secureedge5410_defconfig
sh                   rts7751r2dplus_defconfig
arm                             pxa_defconfig
sparc                               defconfig
powerpc                      pcm030_defconfig
powerpc64                           defconfig
powerpc                       ppc64_defconfig
ia64                        generic_defconfig
arm                       multi_v4t_defconfig
ia64                         bigsur_defconfig
arm                        multi_v7_defconfig
arc                        vdk_hs38_defconfig
m68k                          multi_defconfig
xtensa                           alldefconfig
sh                          sdk7780_defconfig
i386                             alldefconfig
mips                        vocore2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220408
arm                  randconfig-c002-20220406
arm                  randconfig-c002-20220407
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220408
s390                 randconfig-r044-20220408
riscv                randconfig-r042-20220408
arc                  randconfig-r043-20220406
arc                  randconfig-r043-20220407
s390                 randconfig-r044-20220406
riscv                randconfig-r042-20220406
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
x86_64                        randconfig-c007
i386                          randconfig-c001
powerpc              randconfig-c003-20220408
riscv                randconfig-c006-20220408
mips                 randconfig-c004-20220408
arm                  randconfig-c002-20220408
powerpc              randconfig-c003-20220406
riscv                randconfig-c006-20220406
mips                 randconfig-c004-20220406
arm                  randconfig-c002-20220406
powerpc                      pasemi_defconfig
arm                            mps2_defconfig
powerpc                   bluestone_defconfig
mips                        qi_lb60_defconfig
mips                           ip28_defconfig
arm                          ep93xx_defconfig
arm                     am200epdkit_defconfig
powerpc                      ppc64e_defconfig
powerpc                     skiroot_defconfig
arm                        magician_defconfig
powerpc                       ebony_defconfig
powerpc                   microwatt_defconfig
powerpc                    socrates_defconfig
mips                     loongson1c_defconfig
powerpc                  mpc885_ads_defconfig
mips                     cu1000-neo_defconfig
arm                          pcm027_defconfig
riscv                             allnoconfig
arm                          collie_defconfig
arm                       mainstone_defconfig
riscv                            alldefconfig
powerpc                     powernv_defconfig
mips                           rs90_defconfig
arm                                 defconfig
arm                         socfpga_defconfig
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
hexagon              randconfig-r045-20220408
hexagon              randconfig-r041-20220408

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
