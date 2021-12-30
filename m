Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66542481A8C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Dec 2021 08:58:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F1E1D60B7C;
	Thu, 30 Dec 2021 07:57:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RnEDYjJF9o_G; Thu, 30 Dec 2021 07:57:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C423060B6A;
	Thu, 30 Dec 2021 07:57:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 309721BF39C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CE1D40297
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WpGGXRDTPMVN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Dec 2021 07:57:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF77A400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Dec 2021 07:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640851067; x=1672387067;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GuGlfTo5ewvSyzDw0QfX3HlFGQzsJ0SPsgmFJC8oe9w=;
 b=FvV2Ofdeanl0l44SHrNOS9+7hzp2LLjPiu/Y3IVe0CNtFdiEgbBT9JO0
 4la8RKfS61cr/YRSek1DAEA24xCkpFfYlBiNeMOYOKo11Ay99eRrTpDX0
 XsY50s8p6mjkGzwCNc+NCG18Y++62F+7WWakFP20YvEFp3t3W8LfuKFKY
 5bJz5wf/VOpGrRKgimGXl2zT6YUobEUK293VWhRHAGUFpSsSjxpqxrI+O
 QxVx67C7BX/KWPsly3qMxftnYYnMoKIt/6qWfLknyQNcxtTz5eRhS3gH6
 YhMpfk+yJqG0Elg8HRtLzDTKYtxXHktWLV0otJ3pqWK1d0vNsX92x1wLG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10212"; a="304995539"
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; d="scan'208";a="304995539"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2021 23:57:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,247,1635231600"; d="scan'208";a="666495025"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2021 23:57:45 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n2qJl-0009tg-6b; Thu, 30 Dec 2021 07:57:45 +0000
Date: Thu, 30 Dec 2021 15:57:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61cd664e.snWDhmloXBaypqCk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 eb69791100c5f8f2580c5ba78f52ce316dd1f60b
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
branch HEAD: eb69791100c5f8f2580c5ba78f52ce316dd1f60b  iavf: Remove extra cancel_delayed_work_sync() call

elapsed time: 726m

configs tested: 167
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211229
i386                 randconfig-c001-20211230
arm                        mvebu_v5_defconfig
mips                        qi_lb60_defconfig
sh                        apsh4ad0a_defconfig
sh                            hp6xx_defconfig
sh                     sh7710voipgw_defconfig
powerpc                 mpc834x_mds_defconfig
nios2                               defconfig
powerpc                      pasemi_defconfig
arm                        shmobile_defconfig
powerpc                 linkstation_defconfig
mips                         bigsur_defconfig
powerpc                 mpc832x_mds_defconfig
arc                     haps_hs_smp_defconfig
mips                      malta_kvm_defconfig
arm                            pleb_defconfig
mips                        omega2p_defconfig
xtensa                  cadence_csp_defconfig
s390                          debug_defconfig
mips                       capcella_defconfig
powerpc                         wii_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                      pcm030_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                     ep8248e_defconfig
i386                             alldefconfig
arm                            qcom_defconfig
sh                             sh03_defconfig
powerpc                    klondike_defconfig
m68k                                defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                       eiger_defconfig
xtensa                          iss_defconfig
ia64                            zx1_defconfig
arm                       spear13xx_defconfig
mips                   sb1250_swarm_defconfig
sh                          landisk_defconfig
openrisc                         alldefconfig
mips                     loongson1b_defconfig
arc                     nsimosci_hs_defconfig
sh                           se7721_defconfig
arc                          axs101_defconfig
nios2                         10m50_defconfig
arm                           sama5_defconfig
mips                            ar7_defconfig
xtensa                       common_defconfig
powerpc                      mgcoge_defconfig
arm                  colibri_pxa270_defconfig
h8300                               defconfig
arm                        trizeps4_defconfig
powerpc                  mpc866_ads_defconfig
parisc                           alldefconfig
mips                       rbtx49xx_defconfig
mips                       bmips_be_defconfig
m68k                          atari_defconfig
arm                         s5pv210_defconfig
arm                        mvebu_v7_defconfig
mips                         tb0226_defconfig
m68k                        stmark2_defconfig
arc                        nsimosci_defconfig
powerpc                      cm5200_defconfig
mips                           rs90_defconfig
arm                      pxa255-idp_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                     tqm8560_defconfig
arm                  randconfig-c002-20211229
arm                  randconfig-c002-20211230
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
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
x86_64               randconfig-a005-20211228
x86_64               randconfig-a001-20211228
x86_64               randconfig-a003-20211228
x86_64               randconfig-a006-20211228
x86_64               randconfig-a004-20211228
x86_64               randconfig-a002-20211228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
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
x86_64               randconfig-a005-20211229
x86_64               randconfig-a001-20211229
x86_64               randconfig-a003-20211229
x86_64               randconfig-a006-20211229
x86_64               randconfig-a004-20211229
x86_64               randconfig-a002-20211229
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
hexagon              randconfig-r041-20211228
riscv                randconfig-r042-20211228
s390                 randconfig-r044-20211228
hexagon              randconfig-r045-20211228
hexagon              randconfig-r041-20211230
hexagon              randconfig-r045-20211230

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
