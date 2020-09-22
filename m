Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3209E273CFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Sep 2020 10:10:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7A0048714E;
	Tue, 22 Sep 2020 08:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wTfUZI2JC0lq; Tue, 22 Sep 2020 08:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8421187193;
	Tue, 22 Sep 2020 08:10:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B813D1BF271
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 08:10:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A63E20018
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 08:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELn4qkolMgZG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Sep 2020 08:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id B3ACD20002
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Sep 2020 08:10:01 +0000 (UTC)
IronPort-SDR: +i6zmmAuTE0zxp4nTZZ/LAqEYI0ANgzvH/N3wVvNCVoFT7ms9IZN8BaKHbeMxhryet3fxpEu70
 ZKOyk4eo+FRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="245396051"
X-IronPort-AV: E=Sophos;i="5.77,289,1596524400"; d="scan'208";a="245396051"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 01:10:01 -0700
IronPort-SDR: iHMcmodnvJGY0hrYK5l00jhQLJ1L6MMxGBCP/d3LaLKYHGrKKO6iCt6XPo0+RCBRMaMyNDheqo
 U6pKZ/tT92RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,289,1596524400"; d="scan'208";a="511074484"
Received: from lkp-server01.sh.intel.com (HELO 928d8e596b58) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2020 01:10:00 -0700
Received: from kbuild by 928d8e596b58 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kKdN9-0000RI-LM; Tue, 22 Sep 2020 08:09:59 +0000
Date: Tue, 22 Sep 2020 16:09:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f69b14b.cqSV+gIGkBzamGTW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 1a2d24cdfb3950f0e05ed97a331adba38704ee25
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 1a2d24cdfb3950f0e05ed97a331adba38704ee25  idpf: Introduce idpf driver

elapsed time: 723m

configs tested: 143
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                     eseries_pxa_defconfig
arm                            xcep_defconfig
powerpc                      acadia_defconfig
mips                 decstation_r4k_defconfig
arc                     nsimosci_hs_defconfig
powerpc                      ep88xc_defconfig
powerpc                          g5_defconfig
sh                        apsh4ad0a_defconfig
arm                         orion5x_defconfig
c6x                        evmc6474_defconfig
xtensa                  cadence_csp_defconfig
parisc                           alldefconfig
powerpc                      mgcoge_defconfig
arm                         palmz72_defconfig
arm                          pxa168_defconfig
powerpc                     kilauea_defconfig
arm                           sunxi_defconfig
powerpc                         ps3_defconfig
mips                       bmips_be_defconfig
mips                        bcm47xx_defconfig
arm                          ixp4xx_defconfig
riscv                               defconfig
powerpc                  mpc866_ads_defconfig
arm                        clps711x_defconfig
x86_64                              defconfig
ia64                            zx1_defconfig
arm                  colibri_pxa300_defconfig
mips                      malta_kvm_defconfig
mips                            ar7_defconfig
arc                        nsim_700_defconfig
sh                            hp6xx_defconfig
arm                          exynos_defconfig
sh                           se7343_defconfig
powerpc                     tqm8540_defconfig
arm                          pxa910_defconfig
m68k                             alldefconfig
arm                            pleb_defconfig
arm                      footbridge_defconfig
mips                        nlm_xlr_defconfig
m68k                         apollo_defconfig
sparc                       sparc64_defconfig
arm                        trizeps4_defconfig
powerpc                 mpc836x_mds_defconfig
i386                                defconfig
h8300                            allyesconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
powerpc                     tqm8548_defconfig
powerpc                      makalu_defconfig
parisc                           allyesconfig
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
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20200920
x86_64               randconfig-a003-20200920
x86_64               randconfig-a004-20200920
x86_64               randconfig-a002-20200920
x86_64               randconfig-a006-20200920
x86_64               randconfig-a001-20200920
i386                 randconfig-a002-20200920
i386                 randconfig-a006-20200920
i386                 randconfig-a003-20200920
i386                 randconfig-a004-20200920
i386                 randconfig-a005-20200920
i386                 randconfig-a001-20200920
i386                 randconfig-a002-20200921
i386                 randconfig-a006-20200921
i386                 randconfig-a003-20200921
i386                 randconfig-a004-20200921
i386                 randconfig-a005-20200921
i386                 randconfig-a001-20200921
x86_64               randconfig-a011-20200921
x86_64               randconfig-a013-20200921
x86_64               randconfig-a014-20200921
x86_64               randconfig-a015-20200921
x86_64               randconfig-a012-20200921
x86_64               randconfig-a016-20200921
i386                 randconfig-a012-20200921
i386                 randconfig-a014-20200921
i386                 randconfig-a016-20200921
i386                 randconfig-a013-20200921
i386                 randconfig-a011-20200921
i386                 randconfig-a015-20200921
i386                 randconfig-a012-20200920
i386                 randconfig-a014-20200920
i386                 randconfig-a016-20200920
i386                 randconfig-a013-20200920
i386                 randconfig-a011-20200920
i386                 randconfig-a015-20200920
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20200921
x86_64               randconfig-a003-20200921
x86_64               randconfig-a004-20200921
x86_64               randconfig-a002-20200921
x86_64               randconfig-a006-20200921
x86_64               randconfig-a001-20200921
x86_64               randconfig-a011-20200920
x86_64               randconfig-a013-20200920
x86_64               randconfig-a014-20200920
x86_64               randconfig-a015-20200920
x86_64               randconfig-a012-20200920
x86_64               randconfig-a016-20200920

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
