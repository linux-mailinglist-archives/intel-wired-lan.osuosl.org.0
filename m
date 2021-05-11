Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B74337A5ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 May 2021 13:44:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C9D796077B;
	Tue, 11 May 2021 11:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqTTm9L-pz7R; Tue, 11 May 2021 11:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEBCF60733;
	Tue, 11 May 2021 11:44:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E452A1BF588
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 11:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1781403CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 11:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FrfhYVLCVHVC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 May 2021 11:44:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B6970402F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 May 2021 11:44:46 +0000 (UTC)
IronPort-SDR: MzUofgPPTP7nO/G7/IRsdkLxzLh5M7er9o2UvX6hg6zbjNFXWbofD4z+yNvJT+IP1pJzIxqbFG
 I4uTC47FWuCw==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="179683098"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="179683098"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 04:44:27 -0700
IronPort-SDR: xkbgCtJpLd5qwWwGO7ZYb79/lZcgBWL03P+yKZ6Oj1ovQu5uYatfhjWf0PzDxe/bMq8/IsWPFn
 jm9xaGk7zODQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="434415885"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2021 04:44:26 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lgQoM-0000g5-3s; Tue, 11 May 2021 11:44:26 +0000
Date: Tue, 11 May 2021 19:44:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <609a6e0c.FnIWJTLjKEAJDUPx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9f568aa35a82ad697207fdf8872f5b00f86a77f7
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
branch HEAD: 9f568aa35a82ad697207fdf8872f5b00f86a77f7  igc: add correct exception tracing for XDP

elapsed time: 722m

configs tested: 126
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                    amigaone_defconfig
nios2                            allyesconfig
mips                      malta_kvm_defconfig
arm                           u8500_defconfig
sh                            hp6xx_defconfig
sh                  sh7785lcr_32bit_defconfig
i386                                defconfig
ia64                      gensparse_defconfig
arm                        neponset_defconfig
sh                         ap325rxa_defconfig
sh                          rsk7264_defconfig
arm                       aspeed_g5_defconfig
sh                        sh7763rdp_defconfig
arm                            pleb_defconfig
sh                   sh7770_generic_defconfig
sh                           se7751_defconfig
powerpc                     tqm5200_defconfig
powerpc                      walnut_defconfig
sh                           se7712_defconfig
arm                            hisi_defconfig
x86_64                              defconfig
sh                          sdk7780_defconfig
mips                     loongson1c_defconfig
arm                      footbridge_defconfig
powerpc                      ppc40x_defconfig
h8300                            alldefconfig
arm                        mvebu_v5_defconfig
arm                         lubbock_defconfig
powerpc                     ksi8560_defconfig
sh                           se7721_defconfig
sh                          lboxre2_defconfig
arm                         cm_x300_defconfig
arm                         socfpga_defconfig
sh                   sh7724_generic_defconfig
arc                        nsim_700_defconfig
arm                         nhk8815_defconfig
arc                        vdk_hs38_defconfig
mips                          rm200_defconfig
powerpc                     pseries_defconfig
arm                          iop32x_defconfig
sh                           se7750_defconfig
powerpc                    mvme5100_defconfig
ia64                          tiger_defconfig
arm                   milbeaut_m10v_defconfig
arm                       versatile_defconfig
ia64                             allyesconfig
sh                          polaris_defconfig
xtensa                    xip_kc705_defconfig
mips                        maltaup_defconfig
mips                         mpc30x_defconfig
arm                         vf610m4_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
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
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210511
i386                 randconfig-a001-20210511
i386                 randconfig-a005-20210511
i386                 randconfig-a004-20210511
i386                 randconfig-a002-20210511
i386                 randconfig-a006-20210511
x86_64               randconfig-a012-20210511
x86_64               randconfig-a015-20210511
x86_64               randconfig-a011-20210511
x86_64               randconfig-a013-20210511
x86_64               randconfig-a016-20210511
x86_64               randconfig-a014-20210511
i386                 randconfig-a016-20210511
i386                 randconfig-a014-20210511
i386                 randconfig-a011-20210511
i386                 randconfig-a015-20210511
i386                 randconfig-a012-20210511
i386                 randconfig-a013-20210511
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210511
x86_64               randconfig-a004-20210511
x86_64               randconfig-a001-20210511
x86_64               randconfig-a005-20210511
x86_64               randconfig-a002-20210511
x86_64               randconfig-a006-20210511

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
