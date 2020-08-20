Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A3424B8E9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Aug 2020 13:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8A3787CF9;
	Thu, 20 Aug 2020 11:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EDD+W5KPU855; Thu, 20 Aug 2020 11:34:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7133C87DDC;
	Thu, 20 Aug 2020 11:34:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D34551BF355
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 11:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C66828659E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 11:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DtBuEM6e0aD3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Aug 2020 11:34:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0AB378654C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Aug 2020 11:34:38 +0000 (UTC)
IronPort-SDR: Jkz/eDsLscnvnnos/WboUnwue1wy36yTP6GieOTphs89P1HEew0W9EncBm9J2pViYw+Pljg99a
 L6IEfIFA4BbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="154544683"
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="154544683"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 04:34:38 -0700
IronPort-SDR: kLMMcE0NUBWx/BlWQ41t2m5H2zDqwatOkLbFkIn8LsrAgHgF3aFOo9uFKdsxg6dkhigvNXcuA5
 PXYia7MrUN6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="320844202"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 20 Aug 2020 04:34:37 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k8iq4-00003J-V6; Thu, 20 Aug 2020 11:34:36 +0000
Date: Thu, 20 Aug 2020 19:34:24 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f3e5fc0.4vaz1OOd8dO7dx4Z%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 ecb4203e85ea61fef623f9df41b0a68285c48361
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
branch HEAD: ecb4203e85ea61fef623f9df41b0a68285c48361  ice: refactor devlink_port to be per-VSI

Error/Warning in current branch:

drivers/net/ethernet/intel/i40e/i40e_xsk.c:379 i40e_clean_rx_irq_zc() error: uninitialized symbol 'failure'.
drivers/net/ethernet/intel/iecm/iecm_txrx.c:1370:12: error: 'struct iecm_tx_buf' has no member named 'dma'
drivers/net/ethernet/intel/iecm/iecm_txrx.c:1371:12: error: 'struct iecm_tx_buf' has no member named 'len'
drivers/net/ethernet/intel/igb/igb_main.c:8430 igb_run_xdp() error: (-2147483647) too low for ERR_PTR
drivers/net/ethernet/intel/igb/igb_main.c:8761 igb_clean_rx_irq() error: 'skb' dereferencing possible ERR_PTR()
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2269:15: error: redefinition of 'truesize'

Error/Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- i386-randconfig-a004-20200820
|   |-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:struct-iecm_tx_buf-has-no-member-named-dma
|   `-- drivers-net-ethernet-intel-iecm-iecm_txrx.c:error:struct-iecm_tx_buf-has-no-member-named-len
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- sparc-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
`-- x86_64-randconfig-m001-20200819
    |-- drivers-net-ethernet-intel-i40e-i40e_xsk.c-i40e_clean_rx_irq_zc()-error:uninitialized-symbol-failure-.
    |-- drivers-net-ethernet-intel-igb-igb_main.c-igb_clean_rx_irq()-error:skb-dereferencing-possible-ERR_PTR()
    `-- drivers-net-ethernet-intel-igb-igb_main.c-igb_run_xdp()-error:too-low-for-ERR_PTR

elapsed time: 725m

configs tested: 89
configs skipped: 3

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     powernv_defconfig
arm                          pcm027_defconfig
arm                        mvebu_v7_defconfig
arm                          pxa168_defconfig
powerpc                     skiroot_defconfig
sh                         ap325rxa_defconfig
arc                 nsimosci_hs_smp_defconfig
microblaze                      mmu_defconfig
arm                         vf610m4_defconfig
arm                           h5000_defconfig
mips                        nlm_xlp_defconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200818
i386                 randconfig-a002-20200818
i386                 randconfig-a001-20200818
i386                 randconfig-a006-20200818
i386                 randconfig-a003-20200818
i386                 randconfig-a004-20200818
i386                 randconfig-a005-20200819
i386                 randconfig-a002-20200819
i386                 randconfig-a001-20200819
i386                 randconfig-a006-20200819
i386                 randconfig-a003-20200819
i386                 randconfig-a004-20200819
i386                 randconfig-a002-20200820
i386                 randconfig-a004-20200820
i386                 randconfig-a005-20200820
i386                 randconfig-a003-20200820
i386                 randconfig-a006-20200820
i386                 randconfig-a001-20200820
x86_64               randconfig-a013-20200818
x86_64               randconfig-a016-20200818
x86_64               randconfig-a012-20200818
x86_64               randconfig-a011-20200818
x86_64               randconfig-a014-20200818
x86_64               randconfig-a015-20200818
i386                 randconfig-a016-20200818
i386                 randconfig-a011-20200818
i386                 randconfig-a015-20200818
i386                 randconfig-a013-20200818
i386                 randconfig-a012-20200818
i386                 randconfig-a014-20200818
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
