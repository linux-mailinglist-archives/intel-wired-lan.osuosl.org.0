Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 99311279649
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Sep 2020 04:46:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3189286B59;
	Sat, 26 Sep 2020 02:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGMJMt5b9kfi; Sat, 26 Sep 2020 02:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD17E86AB3;
	Sat, 26 Sep 2020 02:45:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E48491BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Sep 2020 02:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB82420356
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Sep 2020 02:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LJqZTUB5ks2V for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Sep 2020 02:45:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id BB8F22034A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Sep 2020 02:45:54 +0000 (UTC)
IronPort-SDR: 1s0hSH+ImK0oQa3D8HUmy1tHJ46H239yoKm/BllKHJCXqyB9sdEiGyu/7fBgNHt30J+lKpCVR8
 hiityl66m9uQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="141713592"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="141713592"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 19:45:53 -0700
IronPort-SDR: FvD6eciaPt7aou/0nbIZveiqWL7IKM8RQYkoUS+ma0dLH2mQR9zOsmTDlQLFdl7kTLNQPzxT4F
 FHeNhtoIgGKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; d="scan'208";a="456103135"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 25 Sep 2020 19:45:52 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kM0Df-0000Lq-R1; Sat, 26 Sep 2020 02:45:51 +0000
Date: Sat, 26 Sep 2020 10:45:00 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f6eab2c.5IB6oqVbvVd0TgWw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:100GbE] BUILD SUCCESS
 f6a07271bb1535d9549380461437cc48d9e19958
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  100GbE
branch HEAD: f6a07271bb1535d9549380461437cc48d9e19958  ice: fix memory leak in ice_vsi_setup

elapsed time: 724m

configs tested: 117
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           gcw0_defconfig
powerpc                    ge_imp3a_defconfig
m68k                       m5208evb_defconfig
sh                          sdk7786_defconfig
powerpc                        fsp2_defconfig
sh                          rsk7264_defconfig
mips                    maltaup_xpa_defconfig
arm                         lpc32xx_defconfig
powerpc                     tqm8548_defconfig
sh                          landisk_defconfig
sh                            titan_defconfig
xtensa                    smp_lx200_defconfig
arm                       versatile_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7780_defconfig
arm                         at91_dt_defconfig
m68k                        m5307c3_defconfig
mips                      bmips_stb_defconfig
m68k                       m5275evb_defconfig
mips                            gpr_defconfig
powerpc                        icon_defconfig
mips                         tb0287_defconfig
mips                         db1xxx_defconfig
arm                            dove_defconfig
mips                         rt305x_defconfig
arm                            pleb_defconfig
powerpc                 mpc832x_mds_defconfig
arm                            mmp2_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                         virt_defconfig
sh                                  defconfig
sh                           se7724_defconfig
arm                            hisi_defconfig
parisc                           allyesconfig
arm                     davinci_all_defconfig
arm                         hackkit_defconfig
ia64                          tiger_defconfig
ia64                            zx1_defconfig
powerpc                        cell_defconfig
arc                          axs103_defconfig
c6x                         dsk6455_defconfig
mips                         mpc30x_defconfig
sh                            migor_defconfig
microblaze                          defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
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
i386                 randconfig-a002-20200925
i386                 randconfig-a006-20200925
i386                 randconfig-a003-20200925
i386                 randconfig-a004-20200925
i386                 randconfig-a005-20200925
i386                 randconfig-a001-20200925
x86_64               randconfig-a011-20200925
x86_64               randconfig-a013-20200925
x86_64               randconfig-a014-20200925
x86_64               randconfig-a015-20200925
x86_64               randconfig-a012-20200925
x86_64               randconfig-a016-20200925
i386                 randconfig-a012-20200925
i386                 randconfig-a014-20200925
i386                 randconfig-a016-20200925
i386                 randconfig-a013-20200925
i386                 randconfig-a011-20200925
i386                 randconfig-a015-20200925
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20200925
x86_64               randconfig-a003-20200925
x86_64               randconfig-a004-20200925
x86_64               randconfig-a002-20200925
x86_64               randconfig-a006-20200925
x86_64               randconfig-a001-20200925

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
