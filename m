Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 172A8329ED9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Mar 2021 13:38:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3C7F6F66F;
	Tue,  2 Mar 2021 12:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gp5ML2clBtVC; Tue,  2 Mar 2021 12:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A08526F64A;
	Tue,  2 Mar 2021 12:38:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 85C141BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 12:38:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 743EB83F2D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 12:38:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hRll_Jo7472O for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Mar 2021 12:38:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F4A983E51
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Mar 2021 12:38:14 +0000 (UTC)
IronPort-SDR: 74KNZP7/yzyVUrkb9Ib+xxH2QoNHsH+syCJstwF0XEeOv5y906l2F8yt1YB//jfGtaGQ6gLpED
 D35OxECmObAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="271802566"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="271802566"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 04:38:13 -0800
IronPort-SDR: feLXMaI4Tye8SpVbPTEF4NzIAowQAB5CgWP03PGmQjiOtox547ErZennrBFOJkGaz3glpr34F+
 MbT7FxnlsGYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="383530498"
Received: from lkp-server02.sh.intel.com (HELO 2482ff9f8ac0) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2021 04:38:12 -0800
Received: from kbuild by 2482ff9f8ac0 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lH4Hz-0000Nl-KS; Tue, 02 Mar 2021 12:38:11 +0000
Date: Tue, 02 Mar 2021 20:37:15 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <603e317b.xBUT/Z5bX8jiiMw6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD REGRESSION
 3a3e187b7b489df5ae729aeee86b2db852b76a92
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
branch HEAD: 3a3e187b7b489df5ae729aeee86b2db852b76a92  igb: unbreak I2C bit-banging on i350

Error/Warning in current branch:

drivers/net/ethernet/intel/ice/ice_main.c:2074: undefined reference to `ice_flush_fdir_ctx'
drivers/net/ethernet/intel/ice/ice_txrx.c:1122: undefined reference to `ice_vc_fdir_irq_handler'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- i386-randconfig-a012-20210302
    |-- drivers-net-ethernet-intel-ice-ice_main.c:undefined-reference-to-ice_flush_fdir_ctx
    `-- drivers-net-ethernet-intel-ice-ice_txrx.c:undefined-reference-to-ice_vc_fdir_irq_handler

elapsed time: 722m

configs tested: 95
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                        nsim_700_defconfig
arm                        keystone_defconfig
ia64                             alldefconfig
arm                            mps2_defconfig
arm                          gemini_defconfig
arm                         at91_dt_defconfig
arm                             rpc_defconfig
ia64                            zx1_defconfig
powerpc                        cell_defconfig
arm                        shmobile_defconfig
parisc                generic-64bit_defconfig
x86_64                           alldefconfig
arm                            hisi_defconfig
powerpc                    gamecube_defconfig
sh                           se7705_defconfig
powerpc                      walnut_defconfig
powerpc                     sbc8548_defconfig
powerpc                   currituck_defconfig
m68k                        mvme147_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
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
i386                 randconfig-a005-20210302
i386                 randconfig-a003-20210302
i386                 randconfig-a002-20210302
i386                 randconfig-a004-20210302
i386                 randconfig-a006-20210302
i386                 randconfig-a001-20210302
i386                 randconfig-a016-20210302
i386                 randconfig-a012-20210302
i386                 randconfig-a014-20210302
i386                 randconfig-a013-20210302
i386                 randconfig-a011-20210302
i386                 randconfig-a015-20210302
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20210301
x86_64               randconfig-a001-20210301
x86_64               randconfig-a004-20210301
x86_64               randconfig-a002-20210301
x86_64               randconfig-a005-20210301
x86_64               randconfig-a003-20210301
x86_64               randconfig-a013-20210302
x86_64               randconfig-a016-20210302
x86_64               randconfig-a015-20210302
x86_64               randconfig-a014-20210302
x86_64               randconfig-a012-20210302
x86_64               randconfig-a011-20210302

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
