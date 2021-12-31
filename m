Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B5F482272
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Dec 2021 07:20:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 389E8828B3;
	Fri, 31 Dec 2021 06:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9hHOeISR-X81; Fri, 31 Dec 2021 06:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19C7A828AF;
	Fri, 31 Dec 2021 06:20:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47AB31BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Dec 2021 06:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4297560A83
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Dec 2021 06:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqEbtRVssNXz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Dec 2021 06:20:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 49FB76080A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Dec 2021 06:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640931649; x=1672467649;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=v5AwruAEEZryTRBPpY/j9KShWlyraZNynghI1W6D4gQ=;
 b=RQCs6GjbEReWNK+yRgral3TL/wjJpK/HFY2UP086YaFK3+DeGM8AxuRw
 E0hre0kK7v8brupfRE5DQzAESsNM6xJ+DM3UM/4xGLfRzX6Q+h2iQHN6Z
 uvUgVv/w8KmW96C1Txt5naaInuH62vMBJ4RAwCxqOnD+6UMVzr+8ZiulX
 JEx0/psCMp8ugn9x97mPFOQWYd/eX+w2AQUc8zLU4NZWmRjYCE58CMvGB
 bP4v1tZ+H/pkimiz6WlFv7H5RQcLcH8FgbzgEdkCh290iJ/ADYzDXKMO6
 F4n9v6pfdOHqjKTE3BESj/+h9j7eT7jqH7pUjoOKBZsAGr/bgmvFv12T4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10213"; a="302529532"
X-IronPort-AV: E=Sophos;i="5.88,250,1635231600"; d="scan'208";a="302529532"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2021 22:20:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,250,1635231600"; d="scan'208";a="554982089"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 30 Dec 2021 22:20:46 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n3BHS-000B2V-6T; Fri, 31 Dec 2021 06:20:46 +0000
Date: Fri, 31 Dec 2021 14:20:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61cea112.TDViwcsue3pne+os%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 bdf92669afcd4689dd7b16ec9b3607fa73710a77
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
branch HEAD: bdf92669afcd4689dd7b16ec9b3607fa73710a77  i40e: Add a stat for tracking busy rx pages

elapsed time: 722m

configs tested: 176
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211230
i386                 randconfig-c001-20211228
mips                 randconfig-c004-20211230
arm                         cm_x300_defconfig
mips                           rs90_defconfig
arm                            mps2_defconfig
powerpc                    socrates_defconfig
powerpc                   currituck_defconfig
sh                             sh03_defconfig
sh                   secureedge5410_defconfig
powerpc                 canyonlands_defconfig
sh                            hp6xx_defconfig
arc                        nsimosci_defconfig
arm                            hisi_defconfig
mips                       lemote2f_defconfig
powerpc                     ppa8548_defconfig
powerpc                      makalu_defconfig
sh                           se7780_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                          sdk7780_defconfig
powerpc                    mvme5100_defconfig
ia64                        generic_defconfig
powerpc               mpc834x_itxgp_defconfig
arm64                            alldefconfig
mips                     cu1000-neo_defconfig
powerpc                     taishan_defconfig
powerpc                    gamecube_defconfig
mips                         cobalt_defconfig
mips                          rm200_defconfig
powerpc                      pmac32_defconfig
powerpc                     kilauea_defconfig
sh                          lboxre2_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                          collie_defconfig
powerpc                 mpc8315_rdb_defconfig
arc                          axs103_defconfig
sh                                  defconfig
mips                     loongson2k_defconfig
openrisc                         alldefconfig
csky                                defconfig
mips                        bcm63xx_defconfig
sh                          rsk7203_defconfig
arm                      footbridge_defconfig
riscv             nommu_k210_sdcard_defconfig
mips                            e55_defconfig
powerpc                     ksi8560_defconfig
h8300                       h8s-sim_defconfig
arm                           spitz_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                          pxa168_defconfig
powerpc                          g5_defconfig
openrisc                  or1klitex_defconfig
powerpc                      cm5200_defconfig
arm                            dove_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                   lite5200b_defconfig
h8300                               defconfig
parisc                           allyesconfig
arm                         nhk8815_defconfig
um                               alldefconfig
mips                            gpr_defconfig
m68k                           sun3_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                    ge_imp3a_defconfig
mips                           mtx1_defconfig
sh                ecovec24-romimage_defconfig
arm                        mini2440_defconfig
xtensa                           alldefconfig
sh                            migor_defconfig
sparc64                          alldefconfig
xtensa                  cadence_csp_defconfig
arm                        spear3xx_defconfig
xtensa                generic_kc705_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                        warp_defconfig
arm                         orion5x_defconfig
arm                       cns3420vb_defconfig
powerpc                  storcenter_defconfig
sh                        sh7785lcr_defconfig
arm                  colibri_pxa300_defconfig
arc                      axs103_smp_defconfig
riscv                            alldefconfig
arm                        realview_defconfig
powerpc                      tqm8xx_defconfig
sh                   sh7724_generic_defconfig
sh                        edosk7705_defconfig
arm                  randconfig-c002-20211230
arm                  randconfig-c002-20211231
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a013-20211230
x86_64               randconfig-a015-20211230
x86_64               randconfig-a012-20211230
x86_64               randconfig-a011-20211230
x86_64               randconfig-a016-20211230
x86_64               randconfig-a014-20211230
i386                 randconfig-a016-20211230
i386                 randconfig-a011-20211230
i386                 randconfig-a012-20211230
i386                 randconfig-a013-20211230
i386                 randconfig-a014-20211230
i386                 randconfig-a015-20211230
arc                  randconfig-r043-20211230
riscv                randconfig-r042-20211230
s390                 randconfig-r044-20211230
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20211230
x86_64               randconfig-a001-20211230
x86_64               randconfig-a003-20211230
x86_64               randconfig-a006-20211230
x86_64               randconfig-a004-20211230
x86_64               randconfig-a005-20211230
i386                 randconfig-a001-20211230
i386                 randconfig-a005-20211230
i386                 randconfig-a004-20211230
i386                 randconfig-a002-20211230
i386                 randconfig-a006-20211230
i386                 randconfig-a003-20211230
x86_64               randconfig-a015-20211228
x86_64               randconfig-a014-20211228
x86_64               randconfig-a013-20211228
x86_64               randconfig-a012-20211228
x86_64               randconfig-a011-20211228
x86_64               randconfig-a016-20211228
hexagon              randconfig-r041-20211230
hexagon              randconfig-r045-20211230

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
