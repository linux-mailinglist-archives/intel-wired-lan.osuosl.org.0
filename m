Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0DE31C378
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Feb 2021 22:19:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C345E8578C;
	Mon, 15 Feb 2021 21:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JU8eLOq8aT07; Mon, 15 Feb 2021 21:19:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8399A850E6;
	Mon, 15 Feb 2021 21:18:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4361BF34C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 21:18:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 65EDB87135
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 21:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NZ-4EueLvAmu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Feb 2021 21:18:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6893A86FF6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Feb 2021 21:18:57 +0000 (UTC)
IronPort-SDR: ffkEP/WGIsyMIbRLuGiG630nWLrNU8rd56mCTQJw0dNsLQ2+s72Q1P2swRzLASVX6OEilq0u2k
 E86bbYbbqzrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="244240607"
X-IronPort-AV: E=Sophos;i="5.81,181,1610438400"; d="scan'208";a="244240607"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2021 13:18:56 -0800
IronPort-SDR: wfZEKeopn91tgTCJmuuJ/bbnWN1bsWliOXiZJJsxhYkkqSrzJETh80A827WMeFHpEqeVWn8hXt
 OLodD83Ii3IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,181,1610438400"; d="scan'208";a="377330307"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 15 Feb 2021 13:18:55 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lBlGg-0007Xr-Lp; Mon, 15 Feb 2021 21:18:54 +0000
Date: Tue, 16 Feb 2021 05:18:25 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <602ae521.4AYMJdmrTyepkAFn%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 9db0da9087c3dcf2f0b2b93b4e5e652310f1bbcd
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
branch HEAD: 9db0da9087c3dcf2f0b2b93b4e5e652310f1bbcd  iavf: Fix return of set the new channel count

elapsed time: 725m

configs tested: 129
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                  mpc885_ads_defconfig
m68k                          hp300_defconfig
sh                          rsk7264_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                     rainier_defconfig
arm                         nhk8815_defconfig
arm                      tct_hammer_defconfig
sh                           se7751_defconfig
ia64                      gensparse_defconfig
arm                           viper_defconfig
sh                           se7721_defconfig
arm                             pxa_defconfig
mips                          rm200_defconfig
powerpc                     pseries_defconfig
arm                          badge4_defconfig
powerpc64                        alldefconfig
xtensa                    xip_kc705_defconfig
m68k                       m5208evb_defconfig
openrisc                            defconfig
mips                        omega2p_defconfig
sh                                  defconfig
sh                           se7722_defconfig
sh                          landisk_defconfig
arm                         socfpga_defconfig
mips                       bmips_be_defconfig
sh                           se7343_defconfig
arm                        neponset_defconfig
powerpc                      walnut_defconfig
arm                         s3c6400_defconfig
riscv                    nommu_virt_defconfig
arm                           tegra_defconfig
s390                                defconfig
riscv                    nommu_k210_defconfig
mips                           ip27_defconfig
arm                            pleb_defconfig
arm                      jornada720_defconfig
powerpc                      chrp32_defconfig
arm                         hackkit_defconfig
c6x                        evmc6457_defconfig
arc                      axs103_smp_defconfig
powerpc                   lite5200b_defconfig
m68k                        mvme147_defconfig
powerpc                      obs600_defconfig
powerpc                     sbc8548_defconfig
xtensa                  audio_kc705_defconfig
arm                         vf610m4_defconfig
mips                          ath79_defconfig
powerpc                    sam440ep_defconfig
powerpc                   motionpro_defconfig
powerpc                 mpc832x_rdb_defconfig
m68k                          atari_defconfig
mips                           ci20_defconfig
powerpc                       maple_defconfig
powerpc                      cm5200_defconfig
arm                        multi_v7_defconfig
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
i386                 randconfig-a003-20210215
i386                 randconfig-a005-20210215
i386                 randconfig-a002-20210215
i386                 randconfig-a006-20210215
i386                 randconfig-a004-20210215
i386                 randconfig-a001-20210215
x86_64               randconfig-a016-20210215
x86_64               randconfig-a013-20210215
x86_64               randconfig-a012-20210215
x86_64               randconfig-a015-20210215
x86_64               randconfig-a014-20210215
x86_64               randconfig-a011-20210215
i386                 randconfig-a016-20210215
i386                 randconfig-a014-20210215
i386                 randconfig-a012-20210215
i386                 randconfig-a013-20210215
i386                 randconfig-a011-20210215
i386                 randconfig-a015-20210215
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210215
x86_64               randconfig-a002-20210215
x86_64               randconfig-a001-20210215
x86_64               randconfig-a004-20210215
x86_64               randconfig-a005-20210215
x86_64               randconfig-a006-20210215

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
