Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C99324FFD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 13:55:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E4376F762;
	Thu, 25 Feb 2021 12:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xGbGBMLNRubt; Thu, 25 Feb 2021 12:55:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A882606E2;
	Thu, 25 Feb 2021 12:55:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB6451BF41E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 12:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8DCA6F745
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 12:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D_DFzf9sbhol for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Feb 2021 12:54:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80CC9606E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Feb 2021 12:54:58 +0000 (UTC)
IronPort-SDR: /ptW848nMIW7UjBDspPCV0Z21UnLcU6BPiYFadROeqdx/3Q1rguyHGWzDDRGAOBaAYNZm5jfiZ
 eQAw/fInwA8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="249570684"
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; d="scan'208";a="249570684"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 04:54:57 -0800
IronPort-SDR: b7PekptKU9opSHAE7ndPq9Ydm4Yi/8jx0GQeLugmr8zV8SBp/IcdPJWAdXafHkHHe9cfBowk03
 ufn/g9XN/rfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,205,1610438400"; d="scan'208";a="433954679"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2021 04:54:53 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lFGAM-0002ir-Qx; Thu, 25 Feb 2021 12:54:50 +0000
Date: Thu, 25 Feb 2021 20:54:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60379df1.eaO7LgZnHroPseoe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 045cf476dfdf9cae79a59523d513f3d9bf0699a6
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
branch HEAD: 045cf476dfdf9cae79a59523d513f3d9bf0699a6  i40e: Fix NULL ptr dereference on VSI filter sync

elapsed time: 722m

configs tested: 95
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nios2                            allyesconfig
arc                        nsim_700_defconfig
powerpc                     stx_gp3_defconfig
um                            kunit_defconfig
powerpc                 mpc836x_rdk_defconfig
powerpc                    ge_imp3a_defconfig
mips                           ip27_defconfig
mips                        omega2p_defconfig
s390                             allmodconfig
powerpc                     akebono_defconfig
h8300                       h8s-sim_defconfig
sh                          rsk7264_defconfig
mips                            e55_defconfig
powerpc                     kilauea_defconfig
mips                         tb0219_defconfig
powerpc                 mpc832x_rdb_defconfig
i386                                defconfig
arm                  colibri_pxa270_defconfig
sh                     sh7710voipgw_defconfig
arm                           sama5_defconfig
riscv                            allyesconfig
mips                           xway_defconfig
powerpc                       holly_defconfig
sh                      rts7751r2d1_defconfig
mips                           gcw0_defconfig
arm                         vf610m4_defconfig
arm                             ezx_defconfig
arm                        oxnas_v6_defconfig
mips                      maltaaprp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
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
i386                               tinyconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210223
i386                 randconfig-a006-20210223
i386                 randconfig-a004-20210223
i386                 randconfig-a003-20210223
i386                 randconfig-a001-20210223
i386                 randconfig-a002-20210223
x86_64               randconfig-a015-20210223
x86_64               randconfig-a011-20210223
x86_64               randconfig-a012-20210223
x86_64               randconfig-a016-20210223
x86_64               randconfig-a014-20210223
x86_64               randconfig-a013-20210223
i386                 randconfig-a013-20210223
i386                 randconfig-a012-20210223
i386                 randconfig-a011-20210223
i386                 randconfig-a014-20210223
i386                 randconfig-a016-20210223
i386                 randconfig-a015-20210223
riscv                    nommu_k210_defconfig
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

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
