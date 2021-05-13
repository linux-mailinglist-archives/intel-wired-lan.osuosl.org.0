Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A37637FB5E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 May 2021 18:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98E9D40149;
	Thu, 13 May 2021 16:18:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDzdpvKscpPe; Thu, 13 May 2021 16:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86252400D9;
	Thu, 13 May 2021 16:18:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D4551BF403
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 16:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0849F4024D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 16:18:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nj34S10LclSq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 May 2021 16:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A35E840215
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 May 2021 16:18:50 +0000 (UTC)
IronPort-SDR: AHhTvSimhthliTxIFfr1U3EMa2Pcg3j77HHwiX0QPIemabMDSYPLh2Bbo+rcx4xE6EEaipleL1
 9l3GcohrGBTA==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="261226912"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="261226912"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 09:10:27 -0700
IronPort-SDR: BZ7uAfdl6ION84cnncnau0+mrCKiwaMxGUhCq9gTOulZ8u6DZGAvRdFwU2RN1LrgdTguxlqS0l
 tBxMSFZZrR4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="437712571"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2021 09:10:24 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lhDup-0000Kq-QB; Thu, 13 May 2021 16:10:23 +0000
Date: Fri, 14 May 2021 00:09:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <609d4f55.30nZ+z10SnVmt8yH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 98fc59dabfb6168f338bfabb84a39b3291578766
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
branch HEAD: 98fc59dabfb6168f338bfabb84a39b3291578766  ixgbe: fix large MTU request from VF

elapsed time: 722m

configs tested: 125
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       imx_v6_v7_defconfig
mips                          rm200_defconfig
riscv                             allnoconfig
mips                         tb0226_defconfig
m68k                          multi_defconfig
arm                         nhk8815_defconfig
sparc64                             defconfig
powerpc                     tqm8555_defconfig
arm                         vf610m4_defconfig
sh                 kfr2r09-romimage_defconfig
m68k                         apollo_defconfig
sh                          r7785rp_defconfig
arm                        mini2440_defconfig
powerpc                   currituck_defconfig
xtensa                              defconfig
nds32                               defconfig
arm                           h5000_defconfig
h8300                               defconfig
powerpc                     powernv_defconfig
sparc                       sparc64_defconfig
m68k                            mac_defconfig
powerpc                     kmeter1_defconfig
nios2                         3c120_defconfig
powerpc                 mpc834x_itx_defconfig
arm                      tct_hammer_defconfig
sh                             sh03_defconfig
powerpc                 mpc8313_rdb_defconfig
m68k                       m5249evb_defconfig
arm                         s5pv210_defconfig
arc                     nsimosci_hs_defconfig
xtensa                generic_kc705_defconfig
nios2                         10m50_defconfig
arm                           spitz_defconfig
sh                           se7619_defconfig
powerpc                     kilauea_defconfig
mips                           ip27_defconfig
sh                           se7751_defconfig
arm                       spear13xx_defconfig
arc                          axs103_defconfig
mips                         tb0219_defconfig
arm                         palmz72_defconfig
arm                         assabet_defconfig
arm                          pxa910_defconfig
powerpc                 mpc836x_mds_defconfig
i386                             alldefconfig
sh                         ap325rxa_defconfig
sh                          sdk7780_defconfig
mips                           xway_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210513
i386                 randconfig-a001-20210513
i386                 randconfig-a005-20210513
i386                 randconfig-a004-20210513
i386                 randconfig-a002-20210513
i386                 randconfig-a006-20210513
x86_64               randconfig-a012-20210513
x86_64               randconfig-a015-20210513
x86_64               randconfig-a011-20210513
x86_64               randconfig-a013-20210513
x86_64               randconfig-a016-20210513
x86_64               randconfig-a014-20210513
i386                 randconfig-a016-20210513
i386                 randconfig-a014-20210513
i386                 randconfig-a011-20210513
i386                 randconfig-a015-20210513
i386                 randconfig-a012-20210513
i386                 randconfig-a013-20210513
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210513
x86_64               randconfig-a004-20210513
x86_64               randconfig-a001-20210513
x86_64               randconfig-a005-20210513
x86_64               randconfig-a002-20210513
x86_64               randconfig-a006-20210513

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
