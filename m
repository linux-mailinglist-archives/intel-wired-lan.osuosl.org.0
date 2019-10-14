Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EB9D6BF3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Oct 2019 01:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C14B386E21;
	Mon, 14 Oct 2019 23:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXy-FiZvxRFQ; Mon, 14 Oct 2019 23:11:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A9EF386D29;
	Mon, 14 Oct 2019 23:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 890101BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2019 23:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8181588075
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2019 23:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Y65ld7jztF0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2019 23:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 754F087F8E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2019 23:11:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 16:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="185634274"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 16:11:17 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iK9Uj-000Gxf-Bt; Tue, 15 Oct 2019 07:11:17 +0800
Date: Tue, 15 Oct 2019 07:10:22 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5da5005e.p6FTnIwoxtX+BX1r%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 ab6984b6134690d6345109a0679beabc0c52e2cf
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
branch HEAD: ab6984b6134690d6345109a0679beabc0c52e2cf  ice: print unsupported module message

Regressions in current branch:

drivers/net//ethernet/intel/ice/ice_txrx.c:1690:5: error: implicit declaration of function 'ice_build_ctob'; did you mean 'ice_build_skb'? [-Werror=implicit-function-declaration]
drivers/net//ethernet/intel/ice/ice_txrx_lib.c:218:33: error: implicit declaration of function 'ice_build_ctob'; did you mean '__build_skb'? [-Werror=implicit-function-declaration]
drivers/net//ethernet/intel/ice/ice_xsk.c:980:4: error: implicit declaration of function 'ice_build_ctob'; did you mean 'ice_bump_ntc'? [-Werror=implicit-function-declaration]

Error ids grouped by kconfigs:

recent_errors
`-- sparc64-allmodconfig
    |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
    |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
    `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc

elapsed time: 237m

configs tested: 129

um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                           allyesconfig
x86_64                           allmodconfig
i386                             alldefconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
i386                              allnoconfig
i386                                defconfig
arm                              allmodconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
x86_64                 randconfig-b001-201941
x86_64                 randconfig-b002-201941
x86_64                 randconfig-b003-201941
x86_64                 randconfig-b004-201941
i386                   randconfig-b001-201941
i386                   randconfig-b002-201941
i386                   randconfig-b003-201941
i386                   randconfig-b004-201941
x86_64                 randconfig-e004-201941
x86_64                 randconfig-e001-201941
x86_64                 randconfig-e003-201941
x86_64                 randconfig-e002-201941
i386                   randconfig-e003-201941
i386                   randconfig-e004-201941
i386                   randconfig-e001-201941
i386                   randconfig-e002-201941
i386                   randconfig-f002-201941
i386                   randconfig-f001-201941
x86_64                 randconfig-f003-201941
x86_64                 randconfig-f004-201941
x86_64                 randconfig-f002-201941
i386                   randconfig-f003-201941
x86_64                 randconfig-f001-201941
i386                   randconfig-f004-201941
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-a004-201941
x86_64                 randconfig-a001-201941
i386                   randconfig-a002-201941
x86_64                 randconfig-a002-201941
i386                   randconfig-a001-201941
i386                   randconfig-a003-201941
i386                   randconfig-a004-201941
x86_64                 randconfig-a003-201941
i386                             allmodconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64                 randconfig-g002-201941
i386                   randconfig-g004-201941
x86_64                 randconfig-g001-201941
i386                   randconfig-g002-201941
x86_64                 randconfig-g004-201941
x86_64                 randconfig-g003-201941
i386                   randconfig-g003-201941
i386                   randconfig-g001-201941
x86_64                 randconfig-h002-201941
x86_64                 randconfig-h001-201941
i386                   randconfig-h004-201941
i386                   randconfig-h003-201941
x86_64                 randconfig-h003-201941
i386                   randconfig-h002-201941
i386                   randconfig-h001-201941
x86_64                 randconfig-h004-201941
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
