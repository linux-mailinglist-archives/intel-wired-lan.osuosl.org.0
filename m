Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6BD488950
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jan 2022 13:17:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F98A404B7;
	Sun,  9 Jan 2022 12:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-G21lS6e-lS; Sun,  9 Jan 2022 12:17:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D26F40497;
	Sun,  9 Jan 2022 12:17:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E526A1BF417
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 12:17:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFFD160792
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 12:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftD-pbhazUle for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jan 2022 12:17:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EAB6860B0E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jan 2022 12:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641730654; x=1673266654;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tmVUBXFHWoeX9EdhzwcsvqtuVov/S8NbrmqWZhJsp+U=;
 b=bt8WID1PEt4uehBgV5xQSPiU2T5eFogpkrQ48svk1y6WAckdeeEUnfiC
 XkTqpN3j0bKZq7FXhM+yYvsvAOuzTQTuOrVbPDUT1RgaqyuZD43CtTcnB
 JrWp2Xm730CfG5/rgDGrsdhYTJfsigXaCyRIInCSIvfhKzVgosdvmkK7V
 OPVxFz84ivYzHIKX84VunROgDpRAWhwLf+IKuHD5MRxWMjUqIfVWEpKzx
 Jg79X2qKK5BgstQOPLx+V5DZ9ImhjlVjdoeWx8WgTz459hwg08PjdQ5TO
 b2Aj4Taa4t0nFV9+rSVD8lpnLZY7ts7tgkO5+lKc14iRM2Rz1NDTASzOo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10221"; a="243284017"
X-IronPort-AV: E=Sophos;i="5.88,274,1635231600"; d="scan'208";a="243284017"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2022 04:17:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,274,1635231600"; d="scan'208";a="527718821"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jan 2022 04:17:33 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n6X8e-0001a2-MP; Sun, 09 Jan 2022 12:17:32 +0000
Date: Sun, 09 Jan 2022 20:16:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61dad21e.j2FavaJD/NvU4KIS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 6dc9a23e29061e50c36523270de60039ccf536fa
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
branch HEAD: 6dc9a23e29061e50c36523270de60039ccf536fa  octeontx2-af: Fix interrupt name strings

elapsed time: 1462m

configs tested: 212
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220108
arm                            zeus_defconfig
nios2                         10m50_defconfig
mips                         db1xxx_defconfig
m68k                        m5272c3_defconfig
riscv                            allmodconfig
mips                            ar7_defconfig
powerpc                     taishan_defconfig
powerpc                        warp_defconfig
sh                        dreamcast_defconfig
arm                         cm_x300_defconfig
arm                         lpc18xx_defconfig
sh                          landisk_defconfig
sparc                               defconfig
sh                            shmin_defconfig
m68k                             alldefconfig
powerpc                 mpc8540_ads_defconfig
um                                  defconfig
arm                        realview_defconfig
m68k                       m5275evb_defconfig
mips                        vocore2_defconfig
arm                           sunxi_defconfig
um                             i386_defconfig
powerpc                      ppc6xx_defconfig
m68k                            mac_defconfig
sh                            migor_defconfig
sh                           se7750_defconfig
arm                          iop32x_defconfig
powerpc                 canyonlands_defconfig
nds32                            alldefconfig
arc                          axs101_defconfig
arc                     nsimosci_hs_defconfig
sh                        edosk7760_defconfig
powerpc                     mpc83xx_defconfig
ia64                         bigsur_defconfig
openrisc                  or1klitex_defconfig
sh                            hp6xx_defconfig
arm                        multi_v7_defconfig
arc                        vdk_hs38_defconfig
arc                    vdk_hs38_smp_defconfig
arm                          badge4_defconfig
powerpc                           allnoconfig
powerpc                     tqm8541_defconfig
i386                             alldefconfig
alpha                               defconfig
powerpc                mpc7448_hpc2_defconfig
m68k                        stmark2_defconfig
powerpc                    sam440ep_defconfig
um                           x86_64_defconfig
arm64                            alldefconfig
h8300                            allyesconfig
riscv             nommu_k210_sdcard_defconfig
sh                           sh2007_defconfig
sh                           se7619_defconfig
arm                        oxnas_v6_defconfig
sh                      rts7751r2d1_defconfig
m68k                       m5475evb_defconfig
arm                            mps2_defconfig
mips                  maltasmvp_eva_defconfig
mips                           jazz_defconfig
arm                       aspeed_g5_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc837x_mds_defconfig
sh                                  defconfig
nios2                            alldefconfig
powerpc                      bamboo_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                          kfr2r09_defconfig
sh                     sh7710voipgw_defconfig
m68k                                defconfig
arm                            qcom_defconfig
arm                          exynos_defconfig
powerpc                      makalu_defconfig
sh                           se7780_defconfig
s390                          debug_defconfig
powerpc                 linkstation_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      cm5200_defconfig
x86_64                           alldefconfig
sh                        sh7757lcr_defconfig
sh                          r7780mp_defconfig
sparc                       sparc32_defconfig
alpha                            allyesconfig
powerpc                      chrp32_defconfig
m68k                            q40_defconfig
sh                          rsk7264_defconfig
mips                         bigsur_defconfig
arm                  randconfig-c002-20220109
arm                  randconfig-c002-20220108
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a005-20220109
x86_64               randconfig-a001-20220109
x86_64               randconfig-a004-20220109
x86_64               randconfig-a006-20220109
x86_64               randconfig-a003-20220109
x86_64               randconfig-a002-20220109
i386                 randconfig-a003-20220109
i386                 randconfig-a005-20220109
i386                 randconfig-a006-20220109
i386                 randconfig-a004-20220109
i386                 randconfig-a001-20220109
i386                 randconfig-a002-20220109
x86_64               randconfig-a015-20220108
x86_64               randconfig-a012-20220108
x86_64               randconfig-a014-20220108
x86_64               randconfig-a013-20220108
x86_64               randconfig-a011-20220108
x86_64               randconfig-a016-20220108
i386                 randconfig-a012-20220108
i386                 randconfig-a016-20220108
i386                 randconfig-a015-20220108
i386                 randconfig-a014-20220108
i386                 randconfig-a011-20220108
i386                 randconfig-a013-20220108
s390                 randconfig-r044-20220108
arc                  randconfig-r043-20220108
riscv                randconfig-r042-20220108
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220108
mips                 randconfig-c004-20220108
i386                 randconfig-c001-20220108
riscv                randconfig-c006-20220108
powerpc              randconfig-c003-20220108
x86_64               randconfig-c007-20220108
arm                  randconfig-c002-20220109
mips                 randconfig-c004-20220109
i386                 randconfig-c001-20220109
riscv                randconfig-c006-20220109
powerpc              randconfig-c003-20220109
x86_64               randconfig-c007-20220109
s390                 randconfig-c005-20220108
mips                 randconfig-c004-20220107
arm                  randconfig-c002-20220107
i386                 randconfig-c001-20220107
riscv                randconfig-c006-20220107
powerpc              randconfig-c003-20220107
x86_64               randconfig-c007-20220107
powerpc                     ppa8548_defconfig
mips                      maltaaprp_defconfig
arm                        mvebu_v5_defconfig
powerpc                     tqm8560_defconfig
powerpc                     skiroot_defconfig
powerpc                          allyesconfig
powerpc                     ksi8560_defconfig
x86_64               randconfig-a005-20220108
x86_64               randconfig-a001-20220108
x86_64               randconfig-a004-20220108
x86_64               randconfig-a006-20220108
x86_64               randconfig-a003-20220108
x86_64               randconfig-a002-20220108
i386                 randconfig-a003-20220108
i386                 randconfig-a005-20220108
i386                 randconfig-a006-20220108
i386                 randconfig-a004-20220108
i386                 randconfig-a001-20220108
i386                 randconfig-a002-20220108
x86_64               randconfig-a015-20220109
x86_64               randconfig-a012-20220109
x86_64               randconfig-a014-20220109
x86_64               randconfig-a013-20220109
x86_64               randconfig-a011-20220109
x86_64               randconfig-a016-20220109
i386                 randconfig-a012-20220109
i386                 randconfig-a016-20220109
i386                 randconfig-a015-20220109
i386                 randconfig-a014-20220109
i386                 randconfig-a011-20220109
i386                 randconfig-a013-20220109
hexagon              randconfig-r041-20220109
riscv                randconfig-r042-20220109
hexagon              randconfig-r045-20220109
s390                 randconfig-r044-20220109

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
