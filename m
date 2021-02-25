Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF2A324F19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 12:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 231546F745;
	Thu, 25 Feb 2021 11:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rUE58fbMo9xB; Thu, 25 Feb 2021 11:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 131C06F740;
	Thu, 25 Feb 2021 11:26:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 701351BF378
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 11:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 690106F740
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 11:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n50k1_7GsRV2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 11:26:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79A7B600C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 11:26:43 +0000 (UTC)
IronPort-SDR: 3a9oNIP734wgaxpFkMmKV9h0ecHQa/NFYUMEvfEHl12EuR0HIpvIqVfF2PkE4yCZ2xfq7gkVjT
 16NMgQ84ht2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="185548070"
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; d="scan'208";a="185548070"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 03:26:42 -0800
IronPort-SDR: gr1vWU0eVY1PExvI2g0UjfKssoP/ZbBVh6yNAq0cHMZ5eTZT5TTHy+hdRiYK5RRTKcXm0wwPIx
 1TxkSZ2Gq+Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; d="scan'208";a="584137937"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2021 03:26:41 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lFEn3-0002h8-1K; Thu, 25 Feb 2021 11:26:41 +0000
Date: Thu, 25 Feb 2021 19:26:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60378961.9qriM+CSK0pv1Rr7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:master] BUILD SUCCESS
 88eee9b7b42e69fb622ddb3ff6f37e8e4347f5b2
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
branch HEAD: 88eee9b7b42e69fb622ddb3ff6f37e8e4347f5b2  net: usb: qmi_wwan: support ZTE P685M modem

elapsed time: 996m

configs tested: 138
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     tqm5200_defconfig
mips                         db1xxx_defconfig
arm                          pcm027_defconfig
ia64                            zx1_defconfig
sh                            migor_defconfig
powerpc                     ppa8548_defconfig
h8300                     edosk2674_defconfig
arm                        mvebu_v5_defconfig
arm                          ixp4xx_defconfig
sh                     magicpanelr2_defconfig
xtensa                generic_kc705_defconfig
sh                          urquell_defconfig
arm                         s3c6400_defconfig
arm                        magician_defconfig
mips                        bcm47xx_defconfig
sh                            shmin_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    ge_imp3a_defconfig
mips                           ip27_defconfig
mips                        omega2p_defconfig
arc                        nsim_700_defconfig
s390                             allmodconfig
riscv                            allyesconfig
arc                    vdk_hs38_smp_defconfig
powerpc                 canyonlands_defconfig
sh                     sh7710voipgw_defconfig
powerpc                 mpc836x_mds_defconfig
mips                         tb0219_defconfig
powerpc                 mpc832x_rdb_defconfig
i386                                defconfig
arm                  colibri_pxa270_defconfig
sh                               allmodconfig
parisc                generic-64bit_defconfig
arm                           tegra_defconfig
xtensa                              defconfig
sh                                  defconfig
mips                      malta_kvm_defconfig
powerpc                    mvme5100_defconfig
mips                         cobalt_defconfig
mips                      maltaaprp_defconfig
arm                           sama5_defconfig
mips                           xway_defconfig
powerpc                       holly_defconfig
mips                          rm200_defconfig
m68k                       m5275evb_defconfig
sh                        sh7785lcr_defconfig
sh                           se7721_defconfig
sh                      rts7751r2d1_defconfig
mips                           gcw0_defconfig
arm                         vf610m4_defconfig
arm                             ezx_defconfig
arm                        oxnas_v6_defconfig
arm                        shmobile_defconfig
mips                      pic32mzda_defconfig
mips                         mpc30x_defconfig
arc                     nsimosci_hs_defconfig
arm                       aspeed_g4_defconfig
sh                           se7750_defconfig
sh                          sdk7786_defconfig
mips                        nlm_xlr_defconfig
powerpc                     tqm8540_defconfig
arm                        spear3xx_defconfig
mips                           ip28_defconfig
arc                        vdk_hs38_defconfig
arm                        realview_defconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210223
i386                 randconfig-a006-20210223
i386                 randconfig-a004-20210223
i386                 randconfig-a003-20210223
i386                 randconfig-a001-20210223
i386                 randconfig-a002-20210223
x86_64               randconfig-a015-20210223
x86_64               randconfig-a011-20210223
x86_64               randconfig-a012-20210223
x86_64               randconfig-a016-20210223
x86_64               randconfig-a014-20210223
x86_64               randconfig-a013-20210223
i386                 randconfig-a013-20210223
i386                 randconfig-a012-20210223
i386                 randconfig-a011-20210223
i386                 randconfig-a014-20210223
i386                 randconfig-a016-20210223
i386                 randconfig-a015-20210223
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20210223
x86_64               randconfig-a002-20210223
x86_64               randconfig-a003-20210223
x86_64               randconfig-a005-20210223
x86_64               randconfig-a006-20210223
x86_64               randconfig-a004-20210223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
