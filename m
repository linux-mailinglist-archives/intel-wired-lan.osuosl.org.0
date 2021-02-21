Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54DF0320E2B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Feb 2021 23:12:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9371387069;
	Sun, 21 Feb 2021 22:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnRmMbqg5cKA; Sun, 21 Feb 2021 22:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D667D87054;
	Sun, 21 Feb 2021 22:12:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 547F51BF410
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 22:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F41383265
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 22:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KF2NKii-T2Uv for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Feb 2021 22:12:42 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 0D4D58328E; Sun, 21 Feb 2021 22:12:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD19783267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Feb 2021 22:12:39 +0000 (UTC)
IronPort-SDR: NfuWiW4kMKDJCrMBhIDvW+lnVcDXc0ros2SUpYkDkxaJdrVH2bmekDgQCKs8UWt/Giz0sWud0A
 BN2xJ5AaeaPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="245714341"
X-IronPort-AV: E=Sophos;i="5.81,195,1610438400"; d="scan'208";a="245714341"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 14:12:38 -0800
IronPort-SDR: B0FhoG09tMjEFWBX420Wr5ERaaRy6APp3kg2P7x+UEHlx8nHGY5Vupj0Dj0aUTz9Durz5CZCq/
 FYWrosgeJygQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,195,1610438400"; d="scan'208";a="363755691"
Received: from lkp-server01.sh.intel.com (HELO 48acba29b68a) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Feb 2021 14:12:35 -0800
Received: from kbuild by 48acba29b68a with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lDwxv-0000Ve-7Y; Sun, 21 Feb 2021 22:12:35 +0000
Date: Mon, 22 Feb 2021 06:11:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6032da99.njxV4KBdD0erTYP2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 3954b5f2908a757c545eff4f0b8bc6ea1d366f3f
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
branch HEAD: 3954b5f2908a757c545eff4f0b8bc6ea1d366f3f  igc: Fix Supported Pause Frame Link Setting

elapsed time: 723m

configs tested: 120
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     cu1830-neo_defconfig
powerpc                   bluestone_defconfig
powerpc                      obs600_defconfig
arc                 nsimosci_hs_smp_defconfig
sh                            titan_defconfig
ia64                         bigsur_defconfig
sh                          landisk_defconfig
um                           x86_64_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                 linkstation_defconfig
arm                             mxs_defconfig
arm                       mainstone_defconfig
arm                         s3c6400_defconfig
arm                           sama5_defconfig
sh                         apsh4a3a_defconfig
x86_64                           alldefconfig
h8300                    h8300h-sim_defconfig
arm                          moxart_defconfig
sh                   secureedge5410_defconfig
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     kilauea_defconfig
powerpc                    sam440ep_defconfig
nios2                            alldefconfig
sh                         microdev_defconfig
powerpc                     pseries_defconfig
powerpc                     mpc512x_defconfig
arm                          imote2_defconfig
mips                malta_qemu_32r6_defconfig
sh                            migor_defconfig
ia64                             alldefconfig
arm                          collie_defconfig
powerpc                      makalu_defconfig
mips                         rt305x_defconfig
arc                         haps_hs_defconfig
mips                        jmr3927_defconfig
mips                          ath25_defconfig
m68k                        stmark2_defconfig
sh                         ap325rxa_defconfig
sh                          r7785rp_defconfig
arm                       cns3420vb_defconfig
m68k                        m5272c3_defconfig
arm                      integrator_defconfig
arc                        nsimosci_defconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210221
i386                 randconfig-a006-20210221
i386                 randconfig-a004-20210221
i386                 randconfig-a003-20210221
i386                 randconfig-a001-20210221
i386                 randconfig-a002-20210221
x86_64               randconfig-a015-20210221
x86_64               randconfig-a011-20210221
x86_64               randconfig-a012-20210221
x86_64               randconfig-a016-20210221
x86_64               randconfig-a014-20210221
x86_64               randconfig-a013-20210221
i386                 randconfig-a013-20210221
i386                 randconfig-a012-20210221
i386                 randconfig-a011-20210221
i386                 randconfig-a014-20210221
i386                 randconfig-a016-20210221
i386                 randconfig-a015-20210221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
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
x86_64               randconfig-a001-20210221
x86_64               randconfig-a002-20210221
x86_64               randconfig-a003-20210221
x86_64               randconfig-a005-20210221
x86_64               randconfig-a006-20210221
x86_64               randconfig-a004-20210221

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
