Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2E047E188
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Dec 2021 11:35:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04F4A60E7A;
	Thu, 23 Dec 2021 10:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ouY-xZk1UzAA; Thu, 23 Dec 2021 10:35:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF18A60D94;
	Thu, 23 Dec 2021 10:35:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1213D1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 10:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F352A60B79
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 10:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zU8DZFcaldxC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Dec 2021 10:35:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08A7560D94
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 10:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640255739; x=1671791739;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oDhqUL/Uvn5HfrT9OVgL+eEkNwPk8uyfkAf7FGkUn8o=;
 b=G2gevmSrMyBif5RBzeozyAY4cdBznLHz+IFT8icxBBKEbGkiUMouatSe
 eQQcXNQMyRgBGRYnFDI5+kBs7NYA/mmdgPLX8iEw7DTwZzbRlsqtmTS5J
 kDQfm4BjqO3aQ+Tl69W2zD0fzRYymHAMci4TnnvT6SGxP665r0zd2BFn7
 ZNZiM/8I0/zS9+SQW6ZJwyIVJ4qk8gQvZ0lM1dV2mYQVLQkelPCli7QOq
 D/0vZKEv0R+lT+cUR4pBKCTHw5K1SFZdCMr6jX/DMzcdOYQjc+TfnhKqP
 LPAmPj8ePPfaJw6YYhu26QukqBkFrTThvk9JYxh/Z5mA419oEzh4P++s/ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="240605529"
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="240605529"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 02:35:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="587286853"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 23 Dec 2021 02:35:36 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n0LRg-0001hA-7p; Thu, 23 Dec 2021 10:35:36 +0000
Date: Thu, 23 Dec 2021 18:34:43 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61c450c3.t9zsweZBcfBjELZT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:master] BUILD SUCCESS
 f4f2970dfd87e5132c436e6125148914596a9863
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git master
branch HEAD: f4f2970dfd87e5132c436e6125148914596a9863  Merge branch '1GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue

elapsed time: 1768m

configs tested: 197
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211223
mips                         tb0287_defconfig
arm                      pxa255-idp_defconfig
mips                          ath25_defconfig
arc                        nsimosci_defconfig
arm                          pxa3xx_defconfig
sh                          r7780mp_defconfig
sh                            titan_defconfig
arm                          pcm027_defconfig
parisc                generic-32bit_defconfig
riscv                               defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                      pcm030_defconfig
powerpc64                        alldefconfig
arc                     nsimosci_hs_defconfig
powerpc                     tqm5200_defconfig
mips                     loongson1b_defconfig
mips                         bigsur_defconfig
powerpc                  storcenter_defconfig
powerpc                     taishan_defconfig
xtensa                         virt_defconfig
sh                          polaris_defconfig
powerpc                      katmai_defconfig
mips                         tb0226_defconfig
microblaze                      mmu_defconfig
sh                        sh7757lcr_defconfig
powerpc                     tqm8541_defconfig
sh                         apsh4a3a_defconfig
arm                           stm32_defconfig
arm                             pxa_defconfig
sh                          rsk7203_defconfig
m68k                       m5249evb_defconfig
arm64                            alldefconfig
powerpc                   motionpro_defconfig
arm                        clps711x_defconfig
sh                           se7343_defconfig
ia64                      gensparse_defconfig
h8300                     edosk2674_defconfig
arc                        vdk_hs38_defconfig
m68k                       m5208evb_defconfig
powerpc                     tqm8555_defconfig
arm                         lpc32xx_defconfig
mips                   sb1250_swarm_defconfig
xtensa                           allyesconfig
powerpc                  mpc866_ads_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                           rs90_defconfig
arm                       aspeed_g4_defconfig
sh                          kfr2r09_defconfig
powerpc                 mpc832x_mds_defconfig
ia64                             allyesconfig
powerpc                     skiroot_defconfig
arm                  colibri_pxa300_defconfig
sh                          landisk_defconfig
xtensa                  audio_kc705_defconfig
sh                            shmin_defconfig
mips                        vocore2_defconfig
sh                          rsk7264_defconfig
powerpc64                           defconfig
sh                        edosk7760_defconfig
powerpc                     kilauea_defconfig
arm                         cm_x300_defconfig
powerpc                       ebony_defconfig
arm                            pleb_defconfig
xtensa                          iss_defconfig
mips                           ip32_defconfig
m68k                             allyesconfig
sh                          sdk7786_defconfig
sparc                       sparc64_defconfig
arm                          pxa168_defconfig
powerpc                      makalu_defconfig
arm                        trizeps4_defconfig
arm                          moxart_defconfig
arm                         mv78xx0_defconfig
arm                          lpd270_defconfig
sh                      rts7751r2d1_defconfig
s390                             allyesconfig
openrisc                            defconfig
m68k                       bvme6000_defconfig
alpha                               defconfig
riscv             nommu_k210_sdcard_defconfig
parisc                           alldefconfig
mips                       bmips_be_defconfig
mips                            gpr_defconfig
sh                             shx3_defconfig
mips                  cavium_octeon_defconfig
arm                         lpc18xx_defconfig
m68k                          atari_defconfig
powerpc                 canyonlands_defconfig
arm                        neponset_defconfig
sh                            migor_defconfig
powerpc                      walnut_defconfig
arm                           h3600_defconfig
m68k                          amiga_defconfig
arm                       aspeed_g5_defconfig
riscv                             allnoconfig
powerpc                 mpc8313_rdb_defconfig
h8300                            alldefconfig
sh                          lboxre2_defconfig
arm                  randconfig-c002-20211222
arm                  randconfig-c002-20211223
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211222
x86_64               randconfig-a003-20211222
x86_64               randconfig-a005-20211222
x86_64               randconfig-a006-20211222
x86_64               randconfig-a004-20211222
x86_64               randconfig-a002-20211222
i386                 randconfig-a006-20211222
i386                 randconfig-a004-20211222
i386                 randconfig-a002-20211222
i386                 randconfig-a003-20211222
i386                 randconfig-a001-20211222
i386                 randconfig-a005-20211222
x86_64               randconfig-a013-20211223
x86_64               randconfig-a015-20211223
x86_64               randconfig-a014-20211223
x86_64               randconfig-a011-20211223
x86_64               randconfig-a012-20211223
x86_64               randconfig-a016-20211223
i386                 randconfig-a012-20211223
i386                 randconfig-a011-20211223
i386                 randconfig-a014-20211223
i386                 randconfig-a016-20211223
i386                 randconfig-a015-20211223
i386                 randconfig-a013-20211223
arc                  randconfig-r043-20211223
riscv                randconfig-r042-20211223
s390                 randconfig-r044-20211223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig

clang tested configs:
x86_64               randconfig-a001-20211223
x86_64               randconfig-a003-20211223
x86_64               randconfig-a005-20211223
x86_64               randconfig-a006-20211223
x86_64               randconfig-a004-20211223
x86_64               randconfig-a002-20211223
i386                 randconfig-a006-20211223
i386                 randconfig-a004-20211223
i386                 randconfig-a002-20211223
i386                 randconfig-a003-20211223
i386                 randconfig-a005-20211223
i386                 randconfig-a001-20211223
i386                 randconfig-a011-20211222
i386                 randconfig-a014-20211222
i386                 randconfig-a016-20211222
i386                 randconfig-a015-20211222
i386                 randconfig-a013-20211222
i386                 randconfig-a012-20211222
hexagon              randconfig-r041-20211222
hexagon              randconfig-r045-20211222
riscv                randconfig-r042-20211222
s390                 randconfig-r044-20211222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
