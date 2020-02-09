Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D95156A04
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Feb 2020 12:54:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 479FA85039;
	Sun,  9 Feb 2020 11:54:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NkahgvUtONMy; Sun,  9 Feb 2020 11:54:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7A0C841E9;
	Sun,  9 Feb 2020 11:54:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80C9A1BF427
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2020 11:54:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75DEB2049F
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2020 11:54:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R3V561562xFZ for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Feb 2020 11:54:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 70CF72039D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2020 11:54:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Feb 2020 03:54:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,421,1574150400"; d="scan'208";a="405314231"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 09 Feb 2020 03:54:46 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j0lAk-000Eup-CZ; Sun, 09 Feb 2020 19:54:46 +0800
Date: Sun, 09 Feb 2020 19:53:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e3ff2cc.bg5isaXwqSX63wq3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 efd2087941d2bc08b6c0a559aab0d8cdcfa38e0f
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
branch HEAD: efd2087941d2bc08b6c0a559aab0d8cdcfa38e0f  gwdpa: gswip: Introduce Gigabit Ethernet Switch (GSWIP) device driver

Regressions in current branch:

drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse:    expected void [noderef] <asn:2> *base
drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse:    got void *context
drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:32:30: sparse: sparse: incorrect type in initializer (different address spaces)
drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:77:30: sparse:    expected void *bus_context
drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:77:30: sparse:    got void [noderef] <asn:2> *[assigned] core
drivers/net/ethernet/intel/gwdpa/gswip/gswip_dev.c:77:30: sparse: sparse: incorrect type in argument 3 (different address spaces)
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:119:5: sparse: sparse: symbol 'mac_set_duplex' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:144:5: sparse: sparse: symbol 'mac_get_duplex' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:156:5: sparse: sparse: symbol 'mac_get_linksts' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:168:5: sparse: sparse: symbol 'mac_set_linksts' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:193:5: sparse: sparse: symbol 'mac_set_flowctrl' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:38:5: sparse: sparse: symbol 'mac_get_speed' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/mac_cfg.c:50:5: sparse: sparse: symbol 'mac_set_physpeed' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c:478:5: sparse: sparse: symbol 'xgmac_mdio_single_wr' was not declared. Should it be static?
drivers/net/ethernet/intel/gwdpa/gswip/xgmac.c:529:5: sparse: sparse: symbol 'xgmac_mdio_single_rd' was not declared. Should it be static?
drivers/net/ethernet/intel/ice/ice_flow.c:1048 ice_add_rss_cfg_sync() error: we previously assumed 'prof' could be null (see line 1030)

Error ids grouped by kconfigs:

recent_errors
|-- i386-allyesconfig
|   `-- drivers-net-ethernet-intel-ice-ice_flow.c-ice_add_rss_cfg_sync()-error:we-previously-assumed-prof-could-be-null-(see-line-)
`-- x86_64-allyesconfig
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_dev.c:sparse:expected-void-bus_context
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_dev.c:sparse:expected-void-noderef-asn-base
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_dev.c:sparse:got-void-context
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_dev.c:sparse:got-void-noderef-asn-assigned-core
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_dev.c:sparse:sparse:incorrect-type-in-argument-(different-address-spaces)
    |-- drivers-net-ethernet-intel-gwdpa-gswip-gswip_dev.c:sparse:sparse:incorrect-type-in-initializer-(different-address-spaces)
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_get_duplex-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_get_linksts-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_get_speed-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_set_duplex-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_set_flowctrl-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_set_linksts-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-mac_cfg.c:sparse:sparse:symbol-mac_set_physpeed-was-not-declared.-Should-it-be-static
    |-- drivers-net-ethernet-intel-gwdpa-gswip-xgmac.c:sparse:sparse:symbol-xgmac_mdio_single_rd-was-not-declared.-Should-it-be-static
    `-- drivers-net-ethernet-intel-gwdpa-gswip-xgmac.c:sparse:sparse:symbol-xgmac_mdio_single_wr-was-not-declared.-Should-it-be-static

TIMEOUT after 2885m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 3

ia64                             alldefconfig
ia64                             allmodconfig
ia64                             allyesconfig

configs tested: 137
configs skipped: 0

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
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
sparc                            allyesconfig
sh                          rsk7269_defconfig
ia64                                defconfig
riscv                             allnoconfig
parisc                           allyesconfig
um                                  defconfig
sparc64                          allyesconfig
arc                              allyesconfig
xtensa                          iss_defconfig
m68k                       m5475evb_defconfig
ia64                              allnoconfig
nios2                         3c120_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
nios2                         10m50_defconfig
sparc64                           allnoconfig
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
i386                              allnoconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
nds32                               defconfig
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
c6x                  randconfig-a001-20200209
h8300                randconfig-a001-20200209
microblaze           randconfig-a001-20200209
nios2                randconfig-a001-20200209
sparc64              randconfig-a001-20200209
h8300                randconfig-a001-20200207
nios2                randconfig-a001-20200207
sparc64              randconfig-a001-20200207
microblaze           randconfig-a001-20200207
c6x                  randconfig-a001-20200207
sh                   randconfig-a001-20200207
csky                 randconfig-a001-20200207
s390                 randconfig-a001-20200207
xtensa               randconfig-a001-20200207
openrisc             randconfig-a001-20200207
x86_64               randconfig-c001-20200207
x86_64               randconfig-c002-20200207
x86_64               randconfig-c003-20200207
i386                 randconfig-c001-20200207
i386                 randconfig-c002-20200207
i386                 randconfig-c003-20200207
x86_64               randconfig-d003-20200207
i386                 randconfig-d001-20200207
x86_64               randconfig-d002-20200207
i386                 randconfig-d003-20200207
x86_64               randconfig-d001-20200207
i386                 randconfig-d002-20200207
i386                 randconfig-e003-20200207
i386                 randconfig-e002-20200207
x86_64               randconfig-e001-20200207
x86_64               randconfig-e003-20200207
i386                 randconfig-e001-20200207
x86_64               randconfig-e002-20200207
x86_64               randconfig-g001-20200207
x86_64               randconfig-g002-20200207
x86_64               randconfig-g003-20200207
i386                 randconfig-g001-20200207
i386                 randconfig-g002-20200207
i386                 randconfig-g003-20200207
x86_64               randconfig-h001-20200208
x86_64               randconfig-h002-20200208
x86_64               randconfig-h003-20200208
i386                 randconfig-h001-20200208
i386                 randconfig-h002-20200208
i386                 randconfig-h003-20200208
riscv                            allmodconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                             defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
