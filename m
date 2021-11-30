Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1579B462F3B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Nov 2021 10:05:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 80F5340251;
	Tue, 30 Nov 2021 09:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBHx69olal7I; Tue, 30 Nov 2021 09:05:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12FA340133;
	Tue, 30 Nov 2021 09:05:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C16341BF281
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 09:05:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BBA3640251
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 09:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bx8fQ-bP4xuJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Nov 2021 09:05:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A027F40133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Nov 2021 09:05:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="260131522"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="260131522"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 01:05:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="459524259"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2021 01:05:36 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mrz4x-000D0t-Qx; Tue, 30 Nov 2021 09:05:35 +0000
Date: Tue, 30 Nov 2021 17:05:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61a5e94a.rmrWxMtgNp3QKiMQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 008b13e86219f60cc0c4b490e4bb8ec098f375f9
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
branch HEAD: 008b13e86219f60cc0c4b490e4bb8ec098f375f9  i40e: Fix queues reservation for XDP

elapsed time: 727m

configs tested: 139
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211128
i386                 randconfig-c001-20211130
powerpc                     tqm8555_defconfig
arm                         mv78xx0_defconfig
mips                       capcella_defconfig
arm                        multi_v5_defconfig
m68k                           sun3_defconfig
powerpc                     tqm8540_defconfig
um                                  defconfig
powerpc                     akebono_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                       ebony_defconfig
mips                          rm200_defconfig
sh                   sh7770_generic_defconfig
arm                          lpd270_defconfig
arm                        realview_defconfig
powerpc                     taishan_defconfig
arm                         palmz72_defconfig
powerpc                         wii_defconfig
mips                       rbtx49xx_defconfig
sh                          rsk7201_defconfig
mips                           ip28_defconfig
arm                         bcm2835_defconfig
sh                               j2_defconfig
powerpc                     tqm8548_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                          pcm027_defconfig
mips                 decstation_r4k_defconfig
openrisc                            defconfig
powerpc                        warp_defconfig
powerpc                 mpc834x_itx_defconfig
m68k                          atari_defconfig
arm                          ixp4xx_defconfig
sh                           se7712_defconfig
mips                           gcw0_defconfig
powerpc                      ep88xc_defconfig
powerpc                     redwood_defconfig
i386                                defconfig
arm                          simpad_defconfig
arm                  randconfig-c002-20211129
arm                  randconfig-c002-20211128
ia64                                defconfig
ia64                             allmodconfig
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
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211130
x86_64               randconfig-a006-20211130
x86_64               randconfig-a003-20211130
x86_64               randconfig-a004-20211130
x86_64               randconfig-a005-20211130
x86_64               randconfig-a002-20211130
i386                 randconfig-a001-20211129
i386                 randconfig-a002-20211129
i386                 randconfig-a006-20211129
i386                 randconfig-a005-20211129
i386                 randconfig-a004-20211129
i386                 randconfig-a003-20211129
x86_64               randconfig-a011-20211128
x86_64               randconfig-a014-20211128
x86_64               randconfig-a012-20211128
x86_64               randconfig-a013-20211128
x86_64               randconfig-a015-20211128
x86_64               randconfig-a016-20211128
i386                 randconfig-a015-20211128
i386                 randconfig-a016-20211128
i386                 randconfig-a013-20211128
i386                 randconfig-a012-20211128
i386                 randconfig-a014-20211128
i386                 randconfig-a011-20211128
arc                  randconfig-r043-20211128
s390                 randconfig-r044-20211128
riscv                randconfig-r042-20211128
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a001-20211128
x86_64               randconfig-a006-20211128
x86_64               randconfig-a003-20211128
x86_64               randconfig-a005-20211128
x86_64               randconfig-a004-20211128
x86_64               randconfig-a002-20211128
i386                 randconfig-a001-20211128
i386                 randconfig-a002-20211128
i386                 randconfig-a006-20211128
i386                 randconfig-a005-20211128
i386                 randconfig-a004-20211128
i386                 randconfig-a003-20211128
hexagon              randconfig-r045-20211129
hexagon              randconfig-r041-20211129
s390                 randconfig-r044-20211129
riscv                randconfig-r042-20211129
hexagon              randconfig-r045-20211128
hexagon              randconfig-r041-20211128

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
