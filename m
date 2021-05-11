Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C58837A75D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 15:14:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71EC060ABF;
	Tue, 11 May 2021 13:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2cRC9RO0XvE; Tue, 11 May 2021 13:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1ED976071E;
	Tue, 11 May 2021 13:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 283951BF31D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 13:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1789E82ED1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 13:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGSF7bzYO8JZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 13:14:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A788982E2A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 13:14:33 +0000 (UTC)
IronPort-SDR: Xl5nBqMggZ0WlYCYia4iwKRVijLvp4LJobDuVtRXJWMpCqnNvWpXXvOaFGy/JQAND6/Q6x9L9k
 QcqAKyYAeSnQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="179030851"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="179030851"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 06:14:32 -0700
IronPort-SDR: eDlcJYvK8eoU2vOCxw53TixK1Hrj7QQaT6+Qif5szwr6v9mY73cEzik7N+EhoJPA5vzNuP3EEb
 A3SHw/pjVQMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="391394848"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 11 May 2021 06:14:31 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgSDX-0000iD-81; Tue, 11 May 2021 13:14:31 +0000
Date: Tue, 11 May 2021 21:13:42 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <609a8306.dSuRhMJPH6gQAtNl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 638b1d43ee5443a91d3b4d839e71757971159100
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
branch HEAD: 638b1d43ee5443a91d3b4d839e71757971159100  virtchnl: Use the BIT() macro for capability/offload flags

elapsed time: 728m

configs tested: 158
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
i386                                defconfig
ia64                      gensparse_defconfig
arm                        neponset_defconfig
arm                         axm55xx_defconfig
m68k                       m5475evb_defconfig
sparc                       sparc64_defconfig
powerpc                   currituck_defconfig
m68k                        mvme147_defconfig
sh                             shx3_defconfig
arm                            qcom_defconfig
sh                          urquell_defconfig
arm                          exynos_defconfig
sparc                       sparc32_defconfig
riscv                             allnoconfig
mips                     loongson1c_defconfig
arm                        mvebu_v5_defconfig
mips                          ath25_defconfig
sh                            migor_defconfig
sh                          polaris_defconfig
sparc                            allyesconfig
mips                       capcella_defconfig
arm                           sunxi_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                      chrp32_defconfig
arm                         s3c6400_defconfig
um                             i386_defconfig
arc                        nsim_700_defconfig
arm                             ezx_defconfig
arm                          pxa3xx_defconfig
powerpc                 mpc834x_itx_defconfig
mips                     decstation_defconfig
arm                        magician_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                       lemote2f_defconfig
arm                        spear3xx_defconfig
arm                              alldefconfig
sh                          lboxre2_defconfig
powerpc                      tqm8xx_defconfig
sh                          kfr2r09_defconfig
m68k                           sun3_defconfig
arm                          lpd270_defconfig
nios2                               defconfig
mips                        workpad_defconfig
csky                             alldefconfig
riscv             nommu_k210_sdcard_defconfig
powerpc                     skiroot_defconfig
arm                        clps711x_defconfig
powerpc                     pq2fads_defconfig
mips                            ar7_defconfig
arc                              alldefconfig
powerpc                     kilauea_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                          rb532_defconfig
mips                           ci20_defconfig
arc                     nsimosci_hs_defconfig
powerpc                  mpc866_ads_defconfig
arm                           h3600_defconfig
powerpc                        fsp2_defconfig
um                               alldefconfig
powerpc                     ksi8560_defconfig
arm                           sama5_defconfig
powerpc                   lite5200b_defconfig
arc                        vdk_hs38_defconfig
sh                           se7751_defconfig
mips                          rm200_defconfig
powerpc                     pseries_defconfig
arm                          iop32x_defconfig
riscv                    nommu_k210_defconfig
mips                           rs90_defconfig
powerpc                    gamecube_defconfig
sh                     sh7710voipgw_defconfig
mips                         tb0287_defconfig
m68k                            q40_defconfig
arm                            pleb_defconfig
arm                         assabet_defconfig
mips                           gcw0_defconfig
sh                        edosk7760_defconfig
mips                      pistachio_defconfig
mips                  decstation_64_defconfig
arm                      jornada720_defconfig
arm                      tct_hammer_defconfig
arm                     am200epdkit_defconfig
powerpc                     tqm8540_defconfig
um                            kunit_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210511
i386                 randconfig-a001-20210511
i386                 randconfig-a005-20210511
i386                 randconfig-a004-20210511
i386                 randconfig-a002-20210511
i386                 randconfig-a006-20210511
x86_64               randconfig-a012-20210511
x86_64               randconfig-a015-20210511
x86_64               randconfig-a011-20210511
x86_64               randconfig-a013-20210511
x86_64               randconfig-a016-20210511
x86_64               randconfig-a014-20210511
i386                 randconfig-a016-20210511
i386                 randconfig-a014-20210511
i386                 randconfig-a011-20210511
i386                 randconfig-a015-20210511
i386                 randconfig-a012-20210511
i386                 randconfig-a013-20210511
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210511
x86_64               randconfig-a004-20210511
x86_64               randconfig-a001-20210511
x86_64               randconfig-a005-20210511
x86_64               randconfig-a002-20210511
x86_64               randconfig-a006-20210511

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
