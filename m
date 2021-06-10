Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2CA93A28B4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 11:50:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 265AE40531;
	Thu, 10 Jun 2021 09:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKzTJRliD43X; Thu, 10 Jun 2021 09:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43AC54051E;
	Thu, 10 Jun 2021 09:50:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67A141BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 09:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 62AA060856
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 09:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRjuiVBMO7vQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 09:50:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E640B60862
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 09:50:14 +0000 (UTC)
IronPort-SDR: jjMcU+tHYIUJDN5QHowtM1snc9pSqzleRaJzokLwvkY/pZ+awovBju3VoFrgGy+zc0n9z7WRR+
 pRLqTT3aQdAQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="266418419"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="266418419"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 02:50:10 -0700
IronPort-SDR: lwxYgTGgKPlysGgne1xnCQ1OnnhpUQ31YIEO2ZiVKcm6kc+4G72ELCySXQts8fIS31gVFjAbvE
 GvlUUlWNsD9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="486102921"
Received: from lkp-server02.sh.intel.com (HELO 3cb98b298c7e) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2021 02:50:09 -0700
Received: from kbuild by 3cb98b298c7e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lrHKD-00004E-6m; Thu, 10 Jun 2021 09:50:09 +0000
Date: Thu, 10 Jun 2021 17:50:04 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60c1e04c.X9Raw0cJnhMY8VO+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 c5d559ead372e69651172ed0644e0fbfed4800bf
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
branch HEAD: c5d559ead372e69651172ed0644e0fbfed4800bf  ixgbe, xsk: clean up the resources in ixgbe_xsk_pool_enable error path

elapsed time: 723m

configs tested: 105
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                   sh7724_generic_defconfig
sh                          kfr2r09_defconfig
sparc                            alldefconfig
arm                             rpc_defconfig
arm                             ezx_defconfig
mips                        workpad_defconfig
powerpc                      mgcoge_defconfig
m68k                       m5249evb_defconfig
arm                           h5000_defconfig
microblaze                          defconfig
sh                             espt_defconfig
mips                     loongson1c_defconfig
m68k                          multi_defconfig
sh                           se7721_defconfig
sh                 kfr2r09-romimage_defconfig
arc                                 defconfig
powerpc                          allyesconfig
sparc64                             defconfig
riscv                               defconfig
openrisc                         alldefconfig
sh                            titan_defconfig
m68k                       bvme6000_defconfig
sh                     sh7710voipgw_defconfig
mips                           ci20_defconfig
m68k                        m5307c3_defconfig
nios2                         10m50_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                     sbc8548_defconfig
arm                          pxa168_defconfig
arm                         orion5x_defconfig
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
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
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
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210608
x86_64               randconfig-a002-20210608
x86_64               randconfig-a003-20210608
x86_64               randconfig-a006-20210608
x86_64               randconfig-a005-20210608
x86_64               randconfig-a001-20210608
i386                 randconfig-a002-20210610
i386                 randconfig-a006-20210610
i386                 randconfig-a004-20210610
i386                 randconfig-a001-20210610
i386                 randconfig-a005-20210610
i386                 randconfig-a003-20210610
i386                 randconfig-a015-20210608
i386                 randconfig-a013-20210608
i386                 randconfig-a016-20210608
i386                 randconfig-a011-20210608
i386                 randconfig-a012-20210608
i386                 randconfig-a014-20210608
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210608
x86_64               randconfig-a012-20210608
x86_64               randconfig-a014-20210608
x86_64               randconfig-a011-20210608
x86_64               randconfig-a016-20210608
x86_64               randconfig-a013-20210608

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
