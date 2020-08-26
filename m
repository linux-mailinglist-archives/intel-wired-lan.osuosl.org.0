Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B62AA2531EF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 16:50:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5ADBF8691A;
	Wed, 26 Aug 2020 14:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NvXi8bnC_GTp; Wed, 26 Aug 2020 14:50:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 494798685B;
	Wed, 26 Aug 2020 14:50:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 072401BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 14:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE27E86AB6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 14:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OiLqPd9TDm9C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 14:50:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4BA6186A14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 14:50:07 +0000 (UTC)
IronPort-SDR: 678sb8xDEy/g4ohSZhX0/q5rFkoCIpcHKqcqf3LXkioCU6uaPBlwjIOxIasHEfYDbkmwYYSdRj
 vtVbQjHBOiVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="144068459"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="144068459"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 07:49:45 -0700
IronPort-SDR: eAdzAwHBR37o+hsPyhbZQg50bn/WVRORchQNnRgQNajcgI++gCP1F67kKMKoylmebNNWl5gjnx
 F0ubeueUne7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="280327097"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 26 Aug 2020 07:49:44 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kAwkB-0001UI-Gv; Wed, 26 Aug 2020 14:49:43 +0000
Date: Wed, 26 Aug 2020 22:49:20 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f467670.tU4S10HDvNxVfGmv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD REGRESSION
 c4eb4d81f82a47410cc1a393dfc7f3aa3b66392f
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
branch HEAD: c4eb4d81f82a47410cc1a393dfc7f3aa3b66392f  i40e: switch kvzalloc to allocate rx/tx_bi buffer

Error/Warning in current branch:

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2278:15: error: redefinition of 'truesize'
net/ipv4/udp_tunnel_nic.c:849:6-10: ERROR: invalid reference to the index variable of the iterator on line 846

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- alpha-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- arc-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allmodconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- ia64-allyesconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- powerpc-defconfig
|   `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize
|-- s390-randconfig-c003-20200826
|   `-- net-ipv4-udp_tunnel_nic.c:ERROR:invalid-reference-to-the-index-variable-of-the-iterator-on-line
`-- sparc-allyesconfig
    `-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c:error:redefinition-of-truesize

elapsed time: 1016m

configs tested: 89
configs skipped: 5

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                          alldefconfig
mips                    maltaup_xpa_defconfig
sh                            shmin_defconfig
h8300                    h8300h-sim_defconfig
arc                                 defconfig
powerpc                    mvme5100_defconfig
mips                             allyesconfig
arc                            hsdk_defconfig
mips                          rb532_defconfig
arm                          moxart_defconfig
powerpc                 linkstation_defconfig
arc                        nsim_700_defconfig
openrisc                 simple_smp_defconfig
mips                        nlm_xlp_defconfig
arm                    vt8500_v6_v7_defconfig
arc                        vdk_hs38_defconfig
mips                         bigsur_defconfig
arm                           omap1_defconfig
arm                           h5000_defconfig
arm                          pcm027_defconfig
mips                 decstation_r4k_defconfig
arm                          imote2_defconfig
arm                       aspeed_g4_defconfig
sparc                               defconfig
sh                        dreamcast_defconfig
mips                      maltaaprp_defconfig
m68k                             allyesconfig
powerpc                         ps3_defconfig
c6x                        evmc6457_defconfig
c6x                                 defconfig
sh                          r7785rp_defconfig
sh                           se7712_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
i386                                defconfig
i386                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20200826
i386                 randconfig-a004-20200826
i386                 randconfig-a003-20200826
i386                 randconfig-a005-20200826
i386                 randconfig-a006-20200826
i386                 randconfig-a001-20200826
x86_64               randconfig-a015-20200826
x86_64               randconfig-a016-20200826
i386                 randconfig-a013-20200826
i386                 randconfig-a012-20200826
i386                 randconfig-a011-20200826
i386                 randconfig-a016-20200826
i386                 randconfig-a015-20200826
i386                 randconfig-a014-20200826
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
