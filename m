Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B13CF4CF1B6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Mar 2022 07:16:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42D9140909;
	Mon,  7 Mar 2022 06:16:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7-6XUg7qS6Z; Mon,  7 Mar 2022 06:16:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03CD740902;
	Mon,  7 Mar 2022 06:16:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8A931BF982
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E675815CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wv4pDqmED6ZV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Mar 2022 06:16:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA852815AC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Mar 2022 06:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646633799; x=1678169799;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4KMZCs90BTs7KMSBv9ATd77WMFVtofTSiXsQD+2SSS0=;
 b=d2MqqWC6qpJoCUR9xKl8LrGt8s+eMEvKjcNC/kW7DCrUp/sq2DDea1wb
 Do1ATyAMS0xUEDTpUYXTChmu/fIvKSRaQUIw2Vmk1QaWlw5blbm0GYnEr
 lXsMTeWI+zTUpyyExAeeq5UiK9NcWwBWU1JAUhGuQwRiz16oAhKzi8y0D
 aCsEhPgfEH1wcSJ6TXulESg7l3HgGqc7bHfbF++UZiuO4BMK6oSngRcAD
 ovrczcFvz+LUFvPrvkGdzbm/k4Ef2QhUXMrHp9UXcQ9fbR+MKFSGXBFu/
 ArKctLjTuSauW9A8XOo45lwai/uXGaYAR7rT/oyEU69SkRLJt0sRqWwH2 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="241744051"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="241744051"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2022 22:16:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="512558226"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 06 Mar 2022 22:16:37 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nR6fY-00001I-2x; Mon, 07 Mar 2022 06:16:32 +0000
Date: Mon, 07 Mar 2022 13:41:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <62259b1e.HOWqyp5fwc/+bYHu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 2fb84d36b097143f245c04016a1fb8c94bc4a58f
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
branch HEAD: 2fb84d36b097143f245c04016a1fb8c94bc4a58f  ice: add trace events for Tx timestamps

Unverified Warning (likely false positive, please contact us if interested):

net/ipv6/addrconf.c:4316 if6_get_next() warn: ignoring unreachable code.

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-m021
|   `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.
`-- x86_64-randconfig-m001
    `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.

elapsed time: 4819m

configs tested: 134
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
sh                            migor_defconfig
arm                           sunxi_defconfig
sh                             sh03_defconfig
m68k                       m5275evb_defconfig
sh                           se7751_defconfig
riscv                            allmodconfig
sh                 kfr2r09-romimage_defconfig
sh                               alldefconfig
sh                          sdk7780_defconfig
sh                            titan_defconfig
sh                          lboxre2_defconfig
sh                          kfr2r09_defconfig
sh                          r7780mp_defconfig
arm                           sama5_defconfig
arm                         lubbock_defconfig
sparc                       sparc64_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                         axm55xx_defconfig
xtensa                generic_kc705_defconfig
nds32                            alldefconfig
arm                            qcom_defconfig
um                             i386_defconfig
sh                        sh7757lcr_defconfig
parisc64                         alldefconfig
powerpc                     tqm8548_defconfig
powerpc                     sequoia_defconfig
powerpc                 mpc837x_mds_defconfig
arm                           h5000_defconfig
arm                       omap2plus_defconfig
arm                            mps2_defconfig
s390                          debug_defconfig
h8300                     edosk2674_defconfig
arc                        vdk_hs38_defconfig
arm                            hisi_defconfig
arm                  randconfig-c002-20220302
arm                  randconfig-c002-20220304
arm                  randconfig-c002-20220303
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
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
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
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
x86_64                        randconfig-a006
x86_64                        randconfig-a002
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                        randconfig-a011
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220303
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220303
riscv                randconfig-c006-20220303
i386                          randconfig-c001
arm                  randconfig-c002-20220303
mips                 randconfig-c004-20220303
powerpc                     tqm8560_defconfig
arm                        spear3xx_defconfig
powerpc                          g5_defconfig
mips                          ath25_defconfig
arm                       imx_v4_v5_defconfig
i386                             allyesconfig
powerpc                      ppc64e_defconfig
mips                        omega2p_defconfig
powerpc                          allmodconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220304
hexagon              randconfig-r041-20220304
hexagon              randconfig-r045-20220303
hexagon              randconfig-r041-20220303
riscv                randconfig-r042-20220303
s390                 randconfig-r044-20220303

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
