Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D8D37341C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 May 2021 06:00:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9872401BA;
	Wed,  5 May 2021 04:00:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AEvkZYkMv50H; Wed,  5 May 2021 04:00:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D347401B8;
	Wed,  5 May 2021 04:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71F451BF239
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 03:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 589B8401B8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 03:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KCk4lBoPh-3A for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 May 2021 03:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B322401B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 May 2021 03:59:57 +0000 (UTC)
IronPort-SDR: K4uUxnnPYw0CEfAk0RjPEzKnmPpAP6ynoN3GuQOs0sTD/rvjGi0tB+8jw4C9XHP58R7Ak+LXPB
 Gay2cemd5z+A==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="194995517"
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; d="scan'208";a="194995517"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 20:59:56 -0700
IronPort-SDR: tAbhUXk38dZMU771uaPlIAaGU6qS42QSvMX4PVt2yZE3xJs2Ey0oqohTQt5hXYvTXuH/Uu4XRV
 gBruqGmI2Xvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; d="scan'208";a="458393481"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 04 May 2021 20:59:55 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1le8hX-0009qF-3s; Wed, 05 May 2021 03:59:55 +0000
Date: Wed, 05 May 2021 11:59:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60921813.rciP4USnlOCOajAR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 ac3ae13a867225197f59ada7b38914280ebbb15f
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
branch HEAD: ac3ae13a867225197f59ada7b38914280ebbb15f  igc: Remove unused MDICNFG register

elapsed time: 726m

configs tested: 132
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
arm                       imx_v6_v7_defconfig
arm                          pcm027_defconfig
powerpc                     tqm8560_defconfig
mips                             allmodconfig
arm                            zeus_defconfig
mips                      fuloong2e_defconfig
powerpc               mpc834x_itxgp_defconfig
arc                 nsimosci_hs_smp_defconfig
arc                        nsim_700_defconfig
mips                           ci20_defconfig
mips                            ar7_defconfig
powerpc                     asp8347_defconfig
sparc64                          alldefconfig
mips                            e55_defconfig
mips                        vocore2_defconfig
powerpc                        icon_defconfig
powerpc                    socrates_defconfig
powerpc                     tqm5200_defconfig
sh                          sdk7780_defconfig
m68k                          atari_defconfig
m68k                        mvme147_defconfig
arm                      integrator_defconfig
powerpc                     powernv_defconfig
arm                           sama5_defconfig
arm                           spitz_defconfig
m68k                        m5272c3_defconfig
powerpc                        cell_defconfig
powerpc                    mvme5100_defconfig
sh                   sh7770_generic_defconfig
mips                       rbtx49xx_defconfig
sh                           se7343_defconfig
openrisc                    or1ksim_defconfig
mips                          rm200_defconfig
mips                           xway_defconfig
sparc64                             defconfig
powerpc                 mpc834x_mds_defconfig
arm                          pxa3xx_defconfig
arc                         haps_hs_defconfig
sh                           se7712_defconfig
arm                          collie_defconfig
s390                       zfcpdump_defconfig
sh                             sh03_defconfig
powerpc                 mpc832x_mds_defconfig
arm                           stm32_defconfig
arm                        keystone_defconfig
sh                        dreamcast_defconfig
arm                          gemini_defconfig
arm                        spear6xx_defconfig
parisc                           allyesconfig
m68k                        stmark2_defconfig
sh                           se7780_defconfig
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
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210504
i386                 randconfig-a006-20210504
i386                 randconfig-a001-20210504
i386                 randconfig-a005-20210504
i386                 randconfig-a004-20210504
i386                 randconfig-a002-20210504
i386                 randconfig-a003-20210503
i386                 randconfig-a006-20210503
i386                 randconfig-a001-20210503
i386                 randconfig-a005-20210503
i386                 randconfig-a004-20210503
i386                 randconfig-a002-20210503
x86_64               randconfig-a014-20210504
x86_64               randconfig-a015-20210504
x86_64               randconfig-a012-20210504
x86_64               randconfig-a013-20210504
i386                 randconfig-a015-20210504
i386                 randconfig-a013-20210504
i386                 randconfig-a016-20210504
i386                 randconfig-a014-20210504
i386                 randconfig-a012-20210504
i386                 randconfig-a011-20210504
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
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
x86_64               randconfig-a006-20210504
x86_64               randconfig-a014-20210503
x86_64               randconfig-a015-20210503
x86_64               randconfig-a012-20210503
x86_64               randconfig-a011-20210503
x86_64               randconfig-a013-20210503
x86_64               randconfig-a016-20210503

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
