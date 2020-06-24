Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A44D20727D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 13:48:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F1F221FD90;
	Wed, 24 Jun 2020 11:48:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mx1-Ki8mOJxK; Wed, 24 Jun 2020 11:48:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6236A2014B;
	Wed, 24 Jun 2020 11:48:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 652571BF599
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 11:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 568DD1FEBF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 11:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lg6dHloVmmYC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 11:48:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 944441FD90
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 11:48:19 +0000 (UTC)
IronPort-SDR: FB2atBPShmZgb3Cxmv24XKlhYxGLCm+qS99lYdZtM5eQHHunj9PFf2vShDtRUXGO5Whz+CaKkU
 0kYvnzI5cMhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="144448470"
X-IronPort-AV: E=Sophos;i="5.75,275,1589266800"; d="scan'208";a="144448470"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 04:48:18 -0700
IronPort-SDR: Hq91l18WKqUWniQEfnG64zKlgPw7gZZKhkctVtwoCf0CrZaqtocV8Gt+3ahV+q50GixwhLIYHF
 JgV5M2madnWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,275,1589266800"; d="scan'208";a="301596124"
Received: from lkp-server01.sh.intel.com (HELO 538b5e3c8319) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2020 04:48:17 -0700
Received: from kbuild by 538b5e3c8319 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jo3t3-0000tr-73; Wed, 24 Jun 2020 11:48:17 +0000
Date: Wed, 24 Jun 2020 19:47:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ef33d45.OVaf1YXQI4zfDM20%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD REGRESSION
 a9ce8ef80a26ae6dabd0a77dac5de045072d81d6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: a9ce8ef80a26ae6dabd0a77dac5de045072d81d6  idpf: Introduce idpf driver

Error/Warning in current branch:

drivers/net/ethernet/intel/idpf/idpf_main.c:46:5: warning: no previous prototype for 'idpf_probe' [-Wmissing-prototypes]
include/linux/avf/virtchnl.h:1090:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rss_hash' is not an integer constant
include/linux/avf/virtchnl.h:809:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_get_capabilities' is not an integer constant
include/linux/avf/virtchnl.h:891:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_txq_info_v2' is not an integer constant
include/linux/avf/virtchnl.h:907:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_tx_queues' is not an integer constant
include/linux/avf/virtchnl.h:937:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_rxq_info_v2' is not an integer constant
include/linux/avf/virtchnl.h:952:31: error: enumerator value for 'virtchnl_static_assert_virtchnl_config_rx_queues' is not an integer constant

Error/Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arc-allyesconfig
|   |-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- arm-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm64-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- arm64-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- i386-allyesconfig
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- i386-debian-10.3
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_rx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_config_tx_queues-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_get_capabilities-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rss_hash-is-not-an-integer-constant
|   |-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_rxq_info_v2-is-not-an-integer-constant
|   `-- include-linux-avf-virtchnl.h:error:enumerator-value-for-virtchnl_static_assert_virtchnl_txq_info_v2-is-not-an-integer-constant
|-- microblaze-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- mips-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- mips-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- riscv-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- riscv-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- s390-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- s390-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- sparc-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- sparc64-allmodconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
|-- sparc64-allyesconfig
|   `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe
`-- xtensa-allyesconfig
    `-- drivers-net-ethernet-intel-idpf-idpf_main.c:warning:no-previous-prototype-for-idpf_probe

elapsed time: 722m

configs tested: 92
configs skipped: 2

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
powerpc                      mgcoge_defconfig
sh                ecovec24-romimage_defconfig
arm                        mvebu_v7_defconfig
arm                        multi_v5_defconfig
h8300                       h8s-sim_defconfig
powerpc                          allyesconfig
s390                              allnoconfig
mips                        qi_lb60_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20200624
i386                 randconfig-a006-20200624
i386                 randconfig-a003-20200624
i386                 randconfig-a001-20200624
i386                 randconfig-a005-20200624
i386                 randconfig-a004-20200624
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
