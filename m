Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8EF339C4D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Mar 2021 06:53:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEE36430AB;
	Sat, 13 Mar 2021 05:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xM5-4iknNcuI; Sat, 13 Mar 2021 05:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CCC5C430A6;
	Sat, 13 Mar 2021 05:53:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60CB21BF298
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 05:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4E05460623
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 05:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HcM3pq1dA6vp for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Mar 2021 05:53:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF7CB605C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Mar 2021 05:53:47 +0000 (UTC)
IronPort-SDR: x4DWemjexLwhjK/1BSif8Jrr70SGlEkfGP7HT418nZ9SIx4Zlqa39Gw1vxywrHht0th949Rha2
 iUOri8n7ONDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="176050995"
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="176050995"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 21:53:46 -0800
IronPort-SDR: DxhoCY66Qe1cSG2tc54lvOVeNSdEixCVGZ/AAskLA/rN1qeyNGCCmeNz+SrlKqpZhJX7oJHclL
 kw7LeVl8zxzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,245,1610438400"; d="scan'208";a="410076489"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 12 Mar 2021 21:53:45 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lKxDd-0001rM-85; Sat, 13 Mar 2021 05:53:45 +0000
Date: Sat, 13 Mar 2021 13:53:38 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <604c5362.KrwL7dC5QM0DZxF6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:100GbE] BUILD SUCCESS
 98dfb02aa22280bd8833836d1b00ab0488fa951f
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
branch HEAD: 98dfb02aa22280bd8833836d1b00ab0488fa951f  igb: avoid premature Rx buffer reuse

elapsed time: 726m

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
s390                          debug_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                       aspeed_g5_defconfig
arm                        oxnas_v6_defconfig
h8300                       h8s-sim_defconfig
arm                       imx_v4_v5_defconfig
powerpc                     tqm8541_defconfig
m68k                       m5475evb_defconfig
arm                             mxs_defconfig
powerpc64                        alldefconfig
arm                         s3c2410_defconfig
powerpc                     mpc512x_defconfig
openrisc                 simple_smp_defconfig
mips                        nlm_xlp_defconfig
mips                   sb1250_swarm_defconfig
arm                             pxa_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                     pseries_defconfig
arm                        mini2440_defconfig
arm                        keystone_defconfig
sh                           se7780_defconfig
sh                          sdk7786_defconfig
sparc                            alldefconfig
m68k                            mac_defconfig
powerpc                      ppc44x_defconfig
sh                         ap325rxa_defconfig
powerpc                      pcm030_defconfig
arm                          ep93xx_defconfig
mips                            gpr_defconfig
arm                          pxa168_defconfig
mips                           ip22_defconfig
sh                                  defconfig
powerpc64                           defconfig
xtensa                          iss_defconfig
sh                            hp6xx_defconfig
sh                     sh7710voipgw_defconfig
sh                          r7785rp_defconfig
mips                    maltaup_xpa_defconfig
arm                         assabet_defconfig
arm                          ixp4xx_defconfig
parisc                              defconfig
arm                         s3c6400_defconfig
m68k                             allmodconfig
arm                      footbridge_defconfig
h8300                    h8300h-sim_defconfig
m68k                          hp300_defconfig
powerpc                 linkstation_defconfig
powerpc                      walnut_defconfig
csky                                defconfig
mips                           gcw0_defconfig
m68k                             alldefconfig
sh                             espt_defconfig
powerpc                       eiger_defconfig
arm                          simpad_defconfig
xtensa                  cadence_csp_defconfig
sh                           se7705_defconfig
sh                 kfr2r09-romimage_defconfig
arm                       cns3420vb_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                         ps3_defconfig
nios2                         10m50_defconfig
sparc                       sparc64_defconfig
arc                           tb10x_defconfig
mips                         tb0226_defconfig
mips                     cu1830-neo_defconfig
sh                        edosk7705_defconfig
riscv                            allyesconfig
m68k                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allmodconfig
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
i386                 randconfig-a001-20210312
i386                 randconfig-a005-20210312
i386                 randconfig-a002-20210312
i386                 randconfig-a003-20210312
i386                 randconfig-a004-20210312
i386                 randconfig-a006-20210312
x86_64               randconfig-a011-20210312
x86_64               randconfig-a016-20210312
x86_64               randconfig-a013-20210312
x86_64               randconfig-a014-20210312
x86_64               randconfig-a015-20210312
x86_64               randconfig-a012-20210312
i386                 randconfig-a013-20210312
i386                 randconfig-a016-20210312
i386                 randconfig-a011-20210312
i386                 randconfig-a015-20210312
i386                 randconfig-a014-20210312
i386                 randconfig-a012-20210312
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
x86_64               randconfig-a006-20210312
x86_64               randconfig-a001-20210312
x86_64               randconfig-a005-20210312
x86_64               randconfig-a003-20210312
x86_64               randconfig-a002-20210312
x86_64               randconfig-a004-20210312

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
