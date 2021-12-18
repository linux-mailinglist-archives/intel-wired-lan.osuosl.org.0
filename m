Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A3B479DFE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Dec 2021 23:25:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4D3884CB2;
	Sat, 18 Dec 2021 22:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1_-Ysu5Uif0T; Sat, 18 Dec 2021 22:25:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD17F84CD3;
	Sat, 18 Dec 2021 22:25:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 583A81BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Dec 2021 22:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4833341D7B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Dec 2021 22:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMo_OAFuf_Yq for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Dec 2021 22:25:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11DB04201F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Dec 2021 22:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639866306; x=1671402306;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hIzBjNkm6EnBEn0LvAjVQLcauV0nYWMU5T05FIYcpx8=;
 b=DwvFfJKLb1ZzuGLM6gjoM+s88ug4F85NVd0dw7ovN0qSS+stOPtdkS8s
 jz7eCZfi3PzmISYoRfTeoQkm6JJdcrb4FW5mzxT84OlA8BpuZJtvDPnmc
 NwsRUQFfbEmkqbup6YzRmH1DpbsbAwqazEHJa1TIJdXbkiBNNzstqTJ44
 kR4WMqdM0UkvWzxOMAMjjoYI1VZViVWjiyj/pRrpfBTZ6o4QB0w+/18nz
 B1Bka7pR3KbOGs3VlhIl8M6NuDWmxIH36foM7WRF0DTz+2Ln+NThgyh7q
 lCxCVp9J/wpSIuv95eAkSnjhxO3rP0IoNLJuv1k9DeLSR0Y9ZU1oG8Mu9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10202"; a="219966792"
X-IronPort-AV: E=Sophos;i="5.88,217,1635231600"; d="scan'208";a="219966792"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2021 14:25:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,217,1635231600"; d="scan'208";a="507196030"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 18 Dec 2021 14:25:04 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1myi8V-0006RY-4l; Sat, 18 Dec 2021 22:25:03 +0000
Date: Sun, 19 Dec 2021 06:24:21 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61be5f95.i5nhAVbp8g21u+Y+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 dcbaf72aa4232a7aa5db5e483972a6fe4ba2b41c
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
branch HEAD: dcbaf72aa4232a7aa5db5e483972a6fe4ba2b41c  ice: xsk: fix cleaned_count setting

elapsed time: 1409m

configs tested: 218
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211216
mips                 randconfig-c004-20211218
mips                         rt305x_defconfig
sh                      rts7751r2d1_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                      bamboo_defconfig
powerpc                     ppa8548_defconfig
sh                           se7780_defconfig
powerpc                   motionpro_defconfig
powerpc                    socrates_defconfig
powerpc                      arches_defconfig
powerpc                          g5_defconfig
powerpc                 canyonlands_defconfig
arm                        trizeps4_defconfig
powerpc                      chrp32_defconfig
nios2                         10m50_defconfig
arm                          lpd270_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                   sb1250_swarm_defconfig
parisc                              defconfig
xtensa                         virt_defconfig
powerpc                       ppc64_defconfig
powerpc                      ppc6xx_defconfig
microblaze                      mmu_defconfig
arc                        nsimosci_defconfig
mips                malta_qemu_32r6_defconfig
mips                             allmodconfig
powerpc                 mpc85xx_cds_defconfig
alpha                            alldefconfig
arc                        nsim_700_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                            ar7_defconfig
m68k                       bvme6000_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                              alldefconfig
powerpc                 mpc8560_ads_defconfig
powerpc                     powernv_defconfig
powerpc                      mgcoge_defconfig
um                           x86_64_defconfig
powerpc                      katmai_defconfig
arm                        vexpress_defconfig
arc                                 defconfig
sparc                               defconfig
arm                       imx_v6_v7_defconfig
powerpc                      cm5200_defconfig
arm                   milbeaut_m10v_defconfig
arm                        multi_v7_defconfig
arm                      pxa255-idp_defconfig
h8300                            alldefconfig
arm                       spear13xx_defconfig
mips                         cobalt_defconfig
nios2                            alldefconfig
powerpc                      pasemi_defconfig
m68k                        m5407c3_defconfig
ia64                          tiger_defconfig
arm                       netwinder_defconfig
powerpc                      pmac32_defconfig
mips                             allyesconfig
sh                   sh7770_generic_defconfig
arm                         mv78xx0_defconfig
powerpc                     tqm8560_defconfig
mips                  cavium_octeon_defconfig
powerpc                 mpc832x_mds_defconfig
mips                    maltaup_xpa_defconfig
m68k                        stmark2_defconfig
powerpc                      makalu_defconfig
powerpc                    adder875_defconfig
m68k                            q40_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                         s5pv210_defconfig
mips                  decstation_64_defconfig
arm                         shannon_defconfig
sh                        sh7785lcr_defconfig
arm                           corgi_defconfig
arc                        vdk_hs38_defconfig
sh                            titan_defconfig
arm                           stm32_defconfig
arm                        neponset_defconfig
h8300                       h8s-sim_defconfig
mips                     cu1830-neo_defconfig
i386                             alldefconfig
arm                           u8500_defconfig
m68k                        mvme147_defconfig
ia64                         bigsur_defconfig
arm                       aspeed_g4_defconfig
sh                             espt_defconfig
parisc                           allyesconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                      walnut_defconfig
mips                        omega2p_defconfig
arm                         lubbock_defconfig
arm                        magician_defconfig
sh                           se7721_defconfig
arc                     haps_hs_smp_defconfig
mips                          rb532_defconfig
mips                        bcm47xx_defconfig
m68k                            mac_defconfig
arc                     nsimosci_hs_defconfig
mips                        bcm63xx_defconfig
arm                         s3c6400_defconfig
mips                      pic32mzda_defconfig
arm                          iop32x_defconfig
arm                         vf610m4_defconfig
arm                         assabet_defconfig
powerpc                    mvme5100_defconfig
arm                  randconfig-c002-20211218
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211216
x86_64               randconfig-a005-20211216
x86_64               randconfig-a001-20211216
x86_64               randconfig-a002-20211216
x86_64               randconfig-a003-20211216
x86_64               randconfig-a004-20211216
i386                 randconfig-a002-20211218
i386                 randconfig-a005-20211218
i386                 randconfig-a003-20211218
i386                 randconfig-a006-20211218
i386                 randconfig-a004-20211218
i386                 randconfig-a001-20211216
i386                 randconfig-a005-20211216
i386                 randconfig-a003-20211216
i386                 randconfig-a006-20211216
i386                 randconfig-a002-20211216
i386                 randconfig-a004-20211216
x86_64               randconfig-a006-20211218
x86_64               randconfig-a005-20211218
x86_64               randconfig-a001-20211218
x86_64               randconfig-a002-20211218
x86_64               randconfig-a004-20211218
x86_64               randconfig-a011-20211217
x86_64               randconfig-a014-20211217
x86_64               randconfig-a012-20211217
x86_64               randconfig-a013-20211217
x86_64               randconfig-a016-20211217
x86_64               randconfig-a015-20211217
x86_64               randconfig-a011-20211219
x86_64               randconfig-a013-20211219
x86_64               randconfig-a012-20211219
x86_64               randconfig-a014-20211219
x86_64               randconfig-a015-20211219
x86_64               randconfig-a016-20211219
i386                 randconfig-a011-20211219
i386                 randconfig-a015-20211219
i386                 randconfig-a012-20211219
i386                 randconfig-a013-20211219
i386                 randconfig-a014-20211219
i386                 randconfig-a016-20211219
arc                  randconfig-r043-20211216
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
i386                 randconfig-a002-20211219
i386                 randconfig-a001-20211219
i386                 randconfig-a005-20211219
i386                 randconfig-a003-20211219
i386                 randconfig-a006-20211219
i386                 randconfig-a004-20211219
x86_64               randconfig-a011-20211216
x86_64               randconfig-a012-20211216
x86_64               randconfig-a013-20211216
x86_64               randconfig-a016-20211216
x86_64               randconfig-a015-20211216
x86_64               randconfig-a014-20211214
x86_64               randconfig-a012-20211214
x86_64               randconfig-a013-20211214
x86_64               randconfig-a016-20211214
x86_64               randconfig-a015-20211214
x86_64               randconfig-a014-20211216
x86_64               randconfig-a011-20211218
x86_64               randconfig-a015-20211218
x86_64               randconfig-a016-20211218
hexagon              randconfig-r045-20211216
s390                 randconfig-r044-20211216
riscv                randconfig-r042-20211216
hexagon              randconfig-r041-20211216

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
