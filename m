Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7627F258CF9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Sep 2020 12:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2018A20427;
	Tue,  1 Sep 2020 10:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nru2AkpWgKJL; Tue,  1 Sep 2020 10:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6C192050D;
	Tue,  1 Sep 2020 10:44:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 35DB61BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Sep 2020 10:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2B8482043D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Sep 2020 10:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y-M7blG5pEPJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Sep 2020 10:44:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 22DAF20427
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Sep 2020 10:44:48 +0000 (UTC)
IronPort-SDR: ltShhXAjHLk9ajx9QR5s4dxSYYSPJqvTpEFGBoTTSE9uUF8Lz5m7AwHtoJsGWjMbt3PeX7AROp
 xZkOzAg1jgNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9730"; a="137189727"
X-IronPort-AV: E=Sophos;i="5.76,378,1592895600"; d="scan'208";a="137189727"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 03:44:47 -0700
IronPort-SDR: mB/9tctAf7aih2Y5VNLJeRH399Vj6FAZlfNnmc6Fe+0StaGw4fMxGdhx7urkFfe6bugJXo4gCx
 cOPjLRRhkY1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,378,1592895600"; d="scan'208";a="314687501"
Received: from lkp-server01.sh.intel.com (HELO 6fed54b23e67) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 01 Sep 2020 03:44:46 -0700
Received: from kbuild by 6fed54b23e67 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kD3mP-00005s-Du; Tue, 01 Sep 2020 10:44:45 +0000
Date: Tue, 01 Sep 2020 18:43:47 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f4e25e3.RUcsRK4bSm8jNEhT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 6d046ecc1304263afa6f58b7617da6927a08fa72
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
branch HEAD: 6d046ecc1304263afa6f58b7617da6927a08fa72  igc: Remove reset disable flag

Error/Warning in current branch:

drivers/net/ethernet/intel/igb/igb_main.c:2880:6: warning: no previous prototype for 'igb_xdp_ring_update_tail' [-Wmissing-prototypes]
drivers/net/ethernet/intel/igb/igb_main.c:2881:6: warning: no previous prototype for 'igb_xdp_ring_update_tail' [-Wmissing-prototypes]
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2273:15: error: redefinition of 'truesize'
include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant
net/ipv4/udp_tunnel_nic.c:849:6-10: ERROR: invalid reference to the index variable of the iterator on line 846

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- alpha-allyesconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- alpha-randconfig-r004-20200831
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- arc-allyesconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- arm-allmodconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- arm-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- arm-defconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- arm64-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- arm64-defconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- arm64-randconfig-r022-20200831
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- i386-allyesconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- i386-randconfig-a015-20200901
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- i386-randconfig-r026-20200831
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- ia64-allmodconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allyesconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-defconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- ia64-randconfig-c003-20200831
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-randconfig-r005-20200831
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- ia64-randconfig-r013-20200831
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- mips-allmodconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- mips-loongson3_defconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- parisc-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- powerpc-allmodconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- powerpc-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- powerpc-defconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- powerpc-powernv_defconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- powerpc-ppc6xx_defconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- powerpc64-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- sparc-allyesconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- sparc-randconfig-c004-20200831
|   `-- net-ipv4-udp_tunnel_nic.c:ERROR:invalid-reference-to-the-index-variable-of-the-iterator-on-line
|-- sparc64-allyesconfig
|   |-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- x86_64-allmodconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- x86_64-allyesconfig
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- x86_64-kexec
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- x86_64-rhel
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- x86_64-rhel-7.6-kselftests
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
|-- x86_64-rhel-8.3
|   `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail
`-- xtensa-allyesconfig
    `-- drivers-net-ethernet-intel-igb-igb_main.c:warning:no-previous-prototype-for-igb_xdp_ring_update_tail

elapsed time: 724m

configs tested: 135
configs skipped: 9

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         hackkit_defconfig
powerpc                     pq2fads_defconfig
arm                           h3600_defconfig
sh                           se7712_defconfig
powerpc64                        alldefconfig
nds32                            alldefconfig
arm                       omap2plus_defconfig
m68k                        mvme16x_defconfig
arm                             mxs_defconfig
sh                ecovec24-romimage_defconfig
mips                        nlm_xlp_defconfig
arm                         s3c6400_defconfig
m68k                          sun3x_defconfig
ia64                            zx1_defconfig
sh                           se7750_defconfig
nios2                         3c120_defconfig
ia64                      gensparse_defconfig
mips                 decstation_r4k_defconfig
sh                   sh7724_generic_defconfig
m68k                         apollo_defconfig
powerpc                      ppc6xx_defconfig
arc                           tb10x_defconfig
sh                        edosk7705_defconfig
arm                        mini2440_defconfig
arm                        cerfcube_defconfig
h8300                               defconfig
arm                       spear13xx_defconfig
mips                       capcella_defconfig
i386                                defconfig
mips                      loongson3_defconfig
arm                            zeus_defconfig
sparc                               defconfig
m68k                          atari_defconfig
sh                     sh7710voipgw_defconfig
powerpc                    mvme5100_defconfig
mips                       lemote2f_defconfig
powerpc                     powernv_defconfig
arc                            hsdk_defconfig
nios2                               defconfig
arm                       imx_v6_v7_defconfig
mips                           rs90_defconfig
arm                            mps2_defconfig
powerpc                      tqm8xx_defconfig
nios2                            alldefconfig
powerpc                      ppc64e_defconfig
sh                               alldefconfig
mips                      bmips_stb_defconfig
arm                           stm32_defconfig
mips                        jmr3927_defconfig
arc                     haps_hs_smp_defconfig
mips                malta_qemu_32r6_defconfig
sh                        dreamcast_defconfig
ia64                             alldefconfig
arm                      jornada720_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
x86_64               randconfig-a004-20200901
x86_64               randconfig-a006-20200901
x86_64               randconfig-a003-20200901
x86_64               randconfig-a005-20200901
x86_64               randconfig-a001-20200901
x86_64               randconfig-a002-20200901
i386                 randconfig-a004-20200901
i386                 randconfig-a005-20200901
i386                 randconfig-a006-20200901
i386                 randconfig-a002-20200901
i386                 randconfig-a001-20200901
i386                 randconfig-a003-20200901
i386                 randconfig-a001-20200831
i386                 randconfig-a002-20200831
i386                 randconfig-a004-20200831
i386                 randconfig-a006-20200831
i386                 randconfig-a005-20200831
i386                 randconfig-a003-20200831
x86_64               randconfig-a012-20200831
x86_64               randconfig-a015-20200831
x86_64               randconfig-a014-20200831
x86_64               randconfig-a011-20200831
x86_64               randconfig-a016-20200831
x86_64               randconfig-a013-20200831
i386                 randconfig-a013-20200831
i386                 randconfig-a011-20200831
i386                 randconfig-a012-20200831
i386                 randconfig-a015-20200831
i386                 randconfig-a016-20200831
i386                 randconfig-a014-20200831
i386                 randconfig-a016-20200901
i386                 randconfig-a015-20200901
i386                 randconfig-a011-20200901
i386                 randconfig-a013-20200901
i386                 randconfig-a014-20200901
i386                 randconfig-a012-20200901
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
