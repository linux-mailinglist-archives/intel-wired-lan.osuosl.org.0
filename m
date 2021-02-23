Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D1322B37
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 14:09:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 565A4871B4;
	Tue, 23 Feb 2021 13:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ry6Uv2rdyHHl; Tue, 23 Feb 2021 13:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9BE3871CC;
	Tue, 23 Feb 2021 13:09:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7CBDD1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 13:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 76FC2871B4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 13:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQT0RwpQsyUx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 13:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B9AF5871A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 13:09:23 +0000 (UTC)
IronPort-SDR: rkweybIDt61zZA4Nb6kZNyBH0UXSFk5YhTtomvmlAv1o1hNxEm+VtcUiqMYdoUEyhTqbFgMsR2
 Tu3aYaxDsv7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="171931232"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="171931232"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 05:09:23 -0800
IronPort-SDR: /xK034OI7StcXRKzRAiKmBm4qwBxb9UrU7DDpPJ/GTPTY9apy6i2Sd89kQVoALV2xxB6hW5hMj
 LRTSqQQ/ucaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="364496193"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 23 Feb 2021 05:09:21 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lEXRJ-0001DQ-7c; Tue, 23 Feb 2021 13:09:21 +0000
Date: Tue, 23 Feb 2021 21:08:34 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6034fe52.6NCsJ+BwPReDjgza%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c0593e1d6e66c973b4d67a33d094a2f77cfbfd64
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
branch HEAD: c0593e1d6e66c973b4d67a33d094a2f77cfbfd64  igb: Fix duplicate include guard

elapsed time: 726m

configs tested: 108
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                   bluestone_defconfig
mips                      pic32mzda_defconfig
m68k                          atari_defconfig
powerpc                        cell_defconfig
mips                           ip22_defconfig
sh                             sh03_defconfig
powerpc                        warp_defconfig
sh                        sh7757lcr_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         db1xxx_defconfig
powerpc                   lite5200b_defconfig
mips                  decstation_64_defconfig
sh                   rts7751r2dplus_defconfig
mips                           ci20_defconfig
xtensa                  cadence_csp_defconfig
arm                            lart_defconfig
powerpc                      arches_defconfig
arc                        nsim_700_defconfig
arm                        multi_v7_defconfig
arm                        clps711x_defconfig
openrisc                  or1klitex_defconfig
powerpc                      ep88xc_defconfig
powerpc                 mpc8315_rdb_defconfig
um                           x86_64_defconfig
m68k                        m5407c3_defconfig
powerpc                      ppc6xx_defconfig
sh                            migor_defconfig
um                            kunit_defconfig
sh                   sh7724_generic_defconfig
arc                      axs103_smp_defconfig
arm                       netwinder_defconfig
m68k                       bvme6000_defconfig
m68k                            mac_defconfig
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
i386                 randconfig-a005-20210222
i386                 randconfig-a006-20210222
i386                 randconfig-a004-20210222
i386                 randconfig-a003-20210222
i386                 randconfig-a001-20210222
i386                 randconfig-a002-20210222
i386                 randconfig-a013-20210222
i386                 randconfig-a012-20210222
i386                 randconfig-a011-20210222
i386                 randconfig-a014-20210222
i386                 randconfig-a015-20210222
x86_64               randconfig-a001-20210222
x86_64               randconfig-a002-20210222
x86_64               randconfig-a003-20210222
x86_64               randconfig-a005-20210222
x86_64               randconfig-a006-20210222
x86_64               randconfig-a004-20210222
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
x86_64               randconfig-a015-20210222
x86_64               randconfig-a011-20210222
x86_64               randconfig-a012-20210222
x86_64               randconfig-a016-20210222
x86_64               randconfig-a014-20210222
x86_64               randconfig-a013-20210222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
