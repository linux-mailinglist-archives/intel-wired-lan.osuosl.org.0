Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F26E74F90D8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Apr 2022 10:32:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AF0A6130C;
	Fri,  8 Apr 2022 08:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnUNoa_9KXlI; Fri,  8 Apr 2022 08:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80D5A60BA8;
	Fri,  8 Apr 2022 08:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E79741C1190
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:32:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2C8C8439A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:32:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9QMoSn4u7vN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Apr 2022 08:32:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A805684399
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Apr 2022 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649406731; x=1680942731;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/CIpf3dt6O+SXAg89Qf/Dnsh4E3CluKEzuTJQ/ICGBM=;
 b=PHrO0ybrGR9E4Qx+uRAYtvZL0WzJuQgMqSrWn9uYxLPHAU3SNnpEgvIr
 FOmcNcXMmZ9ylxZE6xRpCmsjGCkqMoLgWrJ3kVx9T3BvaCzM1v5v/CqWW
 FXs/A4p0wmXW6VlQT6qqQUlpRb2XjHsKroy+ISWUmByKdoU8/1JaRM+k1
 YH5zvWel1dR7yg7sPv4L40cNisgw4DuILjOxwLuOYaTChPH6WWSORDUnK
 kAp4Qvk+sTqDvTWtXt/LJP+ITHGqC7ASOT8nqW3bk/8SZqpqnsoVYgRR5
 1ruqWHv0zSpJDAA9VJmi++EZeVpRqKtNFMjKag48tgqz6fXyxPxS8JOAs w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="324707087"
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="324707087"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 01:32:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,244,1643702400"; d="scan'208";a="609677702"
Received: from lkp-server02.sh.intel.com (HELO 7e80bc2a00a0) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 08 Apr 2022 01:32:09 -0700
Received: from kbuild by 7e80bc2a00a0 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nck2K-00004A-U4;
 Fri, 08 Apr 2022 08:32:08 +0000
Date: Fri, 08 Apr 2022 16:31:44 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <624ff2f0.r2W2aGvLUjRDsK+i%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 ec4eb8a86ade4d22633e1da2a7d85a846b7d1798
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
branch HEAD: ec4eb8a86ade4d22633e1da2a7d85a846b7d1798  drivers: net: slip: fix NPD bug in sl_tx_timeout()

elapsed time: 1430m

configs tested: 238
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
arm                        spear6xx_defconfig
sh                        sh7757lcr_defconfig
xtensa                generic_kc705_defconfig
sh                           se7712_defconfig
arc                        nsim_700_defconfig
arm                        mvebu_v7_defconfig
sh                           se7343_defconfig
openrisc                            defconfig
openrisc                         alldefconfig
sh                        edosk7705_defconfig
arm                        multi_v7_defconfig
arm                        keystone_defconfig
powerpc                     sequoia_defconfig
sh                          sdk7780_defconfig
s390                             allyesconfig
h8300                    h8300h-sim_defconfig
arm                           h5000_defconfig
sh                         apsh4a3a_defconfig
arm                        shmobile_defconfig
sh                          rsk7201_defconfig
powerpc                     asp8347_defconfig
arm                      integrator_defconfig
powerpc                     taishan_defconfig
sh                          polaris_defconfig
ia64                             allmodconfig
m68k                        m5407c3_defconfig
powerpc                         wii_defconfig
arc                        vdk_hs38_defconfig
arm                            pleb_defconfig
powerpc                      bamboo_defconfig
sh                           se7722_defconfig
arm                          iop32x_defconfig
arc                            hsdk_defconfig
sh                        apsh4ad0a_defconfig
arm                         axm55xx_defconfig
arm                             rpc_defconfig
mips                  maltasmvp_eva_defconfig
arm                         s3c6400_defconfig
powerpc                         ps3_defconfig
h8300                       h8s-sim_defconfig
powerpc                      ep88xc_defconfig
powerpc                      ppc6xx_defconfig
sh                           se7780_defconfig
sparc64                          alldefconfig
mips                     decstation_defconfig
arm                            hisi_defconfig
arm                         lubbock_defconfig
sh                              ul2_defconfig
arm                        cerfcube_defconfig
ia64                      gensparse_defconfig
arm                     eseries_pxa_defconfig
arc                                 defconfig
powerpc                    sam440ep_defconfig
arm                          pxa910_defconfig
arm                          gemini_defconfig
sh                     sh7710voipgw_defconfig
openrisc                    or1ksim_defconfig
arm                        clps711x_defconfig
sh                   secureedge5410_defconfig
arm                       imx_v6_v7_defconfig
m68k                        mvme16x_defconfig
arc                              alldefconfig
sparc                       sparc32_defconfig
m68k                          sun3x_defconfig
sh                          urquell_defconfig
arm                        trizeps4_defconfig
m68k                            q40_defconfig
powerpc                 linkstation_defconfig
nios2                         3c120_defconfig
ia64                          tiger_defconfig
sparc64                             defconfig
m68k                                defconfig
arm                             ezx_defconfig
powerpc                 mpc834x_itx_defconfig
sh                   sh7770_generic_defconfig
ia64                            zx1_defconfig
powerpc                        warp_defconfig
ia64                         bigsur_defconfig
mips                       capcella_defconfig
sh                          lboxre2_defconfig
powerpc                      mgcoge_defconfig
powerpc                      tqm8xx_defconfig
powerpc                  iss476-smp_defconfig
powerpc                 mpc8540_ads_defconfig
mips                            ar7_defconfig
arm                         nhk8815_defconfig
sh                        sh7763rdp_defconfig
sh                               j2_defconfig
um                           x86_64_defconfig
powerpc                       eiger_defconfig
sh                         ap325rxa_defconfig
powerpc                   currituck_defconfig
sh                ecovec24-romimage_defconfig
mips                     loongson1b_defconfig
powerpc                    adder875_defconfig
parisc                           alldefconfig
sh                           se7619_defconfig
arc                      axs103_smp_defconfig
sh                   rts7751r2dplus_defconfig
mips                      loongson3_defconfig
arm                             pxa_defconfig
sparc                               defconfig
powerpc                      pcm030_defconfig
powerpc64                           defconfig
powerpc                       ppc64_defconfig
ia64                        generic_defconfig
arm                       multi_v4t_defconfig
powerpc                     tqm8541_defconfig
mips                      maltasmvp_defconfig
riscv                               defconfig
powerpc                     stx_gp3_defconfig
xtensa                          iss_defconfig
sh                               allmodconfig
m68k                          multi_defconfig
xtensa                           alldefconfig
i386                             alldefconfig
mips                        vocore2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220406
arm                  randconfig-c002-20220407
arm                  randconfig-c002-20220408
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
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
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220406
arc                  randconfig-r043-20220407
arc                  randconfig-r043-20220408
s390                 randconfig-r044-20220408
s390                 randconfig-r044-20220406
riscv                randconfig-r042-20220406
riscv                randconfig-r042-20220408
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
riscv                    nommu_k210_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
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
powerpc              randconfig-c003-20220407
powerpc              randconfig-c003-20220406
riscv                randconfig-c006-20220407
riscv                randconfig-c006-20220406
mips                 randconfig-c004-20220407
mips                 randconfig-c004-20220406
arm                  randconfig-c002-20220406
arm                  randconfig-c002-20220407
s390                 randconfig-c005-20220406
s390                 randconfig-c005-20220407
powerpc                      pasemi_defconfig
arm                            mps2_defconfig
arm                       aspeed_g4_defconfig
arm                     davinci_all_defconfig
powerpc                   bluestone_defconfig
mips                        qi_lb60_defconfig
mips                           ip28_defconfig
powerpc                      ppc64e_defconfig
powerpc                     skiroot_defconfig
arm                        magician_defconfig
powerpc                       ebony_defconfig
mips                     cu1000-neo_defconfig
powerpc                      ppc44x_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                   microwatt_defconfig
powerpc                    socrates_defconfig
mips                     loongson1c_defconfig
powerpc                  mpc885_ads_defconfig
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
i386                          randconfig-a006
i386                          randconfig-a004
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
