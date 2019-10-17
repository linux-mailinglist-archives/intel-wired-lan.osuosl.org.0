Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9D8DB585
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Oct 2019 20:07:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7F9A86C71;
	Thu, 17 Oct 2019 18:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IkBEM31CZu9Z; Thu, 17 Oct 2019 18:07:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C746386D4C;
	Thu, 17 Oct 2019 18:07:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0CFE1BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 18:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B7774885F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 18:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AaK3jZnvbh3x for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Oct 2019 18:07:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CCD4F885EC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2019 18:07:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 11:07:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="221468215"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2019 11:07:44 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iLABc-000EBm-BG; Fri, 18 Oct 2019 02:07:44 +0800
Date: Fri, 18 Oct 2019 02:06:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5da8adb4.iSV1Ns6oZDrgCOgd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 e31c32a05a0f894228f28db77880c62be4453fff
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
branch HEAD: e31c32a05a0f894228f28db77880c62be4453fff  ice: Fix return value when SR-IOV is not supported

Regressions in current branch:

drivers/net/ethernet/intel/ice/ice_txrx.c:1667:5: error: implicit declaration of function 'ice_build_ctob'; did you mean 'ice_build_skb'? [-Werror=implicit-function-declaration]
drivers/net/ethernet/intel/ice/ice_txrx_lib.c:218:33: error: implicit declaration of function 'ice_build_ctob'; did you mean '__build_skb'? [-Werror=implicit-function-declaration]
drivers/net/ethernet/intel/ice/ice_xsk.c:980:4: error: implicit declaration of function 'ice_build_ctob'; did you mean 'ice_bump_ntc'? [-Werror=implicit-function-declaration]

Error ids grouped by kconfigs:

recent_errors
|-- alpha-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
|-- alpha-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
|-- ia64-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
|-- ia64-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
|-- sparc-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
|-- sparc-allyesconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
|-- sparc64-allmodconfig
|   |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
|   |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
|   `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc
`-- sparc64-allyesconfig
    |-- drivers-net-ethernet-intel-ice-ice_txrx.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_build_skb
    |-- drivers-net-ethernet-intel-ice-ice_txrx_lib.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-__build_skb
    `-- drivers-net-ethernet-intel-ice-ice_xsk.c:error:implicit-declaration-of-function-ice_build_ctob-did-you-mean-ice_bump_ntc

elapsed time: 157m

configs tested: 137

x86_64                 randconfig-f001-201941
x86_64                 randconfig-f002-201941
x86_64                 randconfig-f003-201941
x86_64                 randconfig-f004-201941
i386                   randconfig-f001-201941
i386                   randconfig-f002-201941
i386                   randconfig-f003-201941
i386                   randconfig-f004-201941
x86_64                           allyesconfig
x86_64                           allmodconfig
i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                 randconfig-b001-201941
x86_64                 randconfig-b002-201941
x86_64                 randconfig-b003-201941
x86_64                 randconfig-b004-201941
i386                   randconfig-b001-201941
i386                   randconfig-b002-201941
i386                   randconfig-b003-201941
i386                   randconfig-b004-201941
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
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
x86_64                 randconfig-d001-201941
x86_64                 randconfig-d002-201941
x86_64                 randconfig-d003-201941
x86_64                 randconfig-d004-201941
i386                   randconfig-d001-201941
i386                   randconfig-d002-201941
i386                   randconfig-d003-201941
i386                   randconfig-d004-201941
x86_64                 randconfig-c001-201941
x86_64                 randconfig-c002-201941
i386                   randconfig-c001-201941
i386                   randconfig-c004-201941
i386                   randconfig-c003-201941
x86_64                 randconfig-c004-201941
i386                   randconfig-c002-201941
x86_64                 randconfig-c003-201941
i386                             allmodconfig
x86_64                 randconfig-h002-201941
x86_64                 randconfig-h001-201941
i386                   randconfig-h004-201941
i386                   randconfig-h003-201941
x86_64                 randconfig-h003-201941
i386                   randconfig-h002-201941
i386                   randconfig-h001-201941
x86_64                 randconfig-h004-201941
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-g002-201941
i386                   randconfig-g004-201941
x86_64                 randconfig-g001-201941
i386                   randconfig-g002-201941
x86_64                 randconfig-g004-201941
x86_64                 randconfig-g003-201941
i386                   randconfig-g003-201941
i386                   randconfig-g001-201941
x86_64                 randconfig-e004-201941
x86_64                 randconfig-e001-201941
x86_64                 randconfig-e003-201941
x86_64                 randconfig-e002-201941
i386                   randconfig-e003-201941
i386                   randconfig-e004-201941
i386                   randconfig-e001-201941
i386                   randconfig-e002-201941

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
