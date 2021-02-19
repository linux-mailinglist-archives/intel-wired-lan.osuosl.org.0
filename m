Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB4F31F775
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 11:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC03487483;
	Fri, 19 Feb 2021 10:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9G9EC5LHF0Uh; Fri, 19 Feb 2021 10:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 079AD87480;
	Fri, 19 Feb 2021 10:41:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2F51BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 10:40:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 178958704C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 10:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tB3dwIG01NF5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 10:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 09A9C87038
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 10:40:56 +0000 (UTC)
IronPort-SDR: Zhgn82dK9tOuhih8azysF2cWUM7GqdchrqwE+PW8T7fMzx9YXZjDVwS6s7vIS7w9IyY9Xs5eno
 JUbPe2E1zwmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="171479314"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="171479314"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 02:40:55 -0800
IronPort-SDR: lgmCHm3qBusg/i58C016MZj7JBq2ew4QP8Fr7SrPkKLrXYU+EVHUQpc4tt9E1/uu3J8Ql593Bh
 WldlIcLuww7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="513633514"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 19 Feb 2021 02:40:54 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lD3DR-000AIv-T7; Fri, 19 Feb 2021 10:40:53 +0000
Date: Fri, 19 Feb 2021 18:40:50 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <602f95b2.jQwcbUV/mOLcsbp8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 48fb4d20552fa8fbc970601bf08470d66a49c4c4
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
branch HEAD: 48fb4d20552fa8fbc970601bf08470d66a49c4c4  i40e: Fix inconsistent indenting

elapsed time: 726m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     akebono_defconfig
m68k                            q40_defconfig
um                           x86_64_defconfig
powerpc64                           defconfig
sparc                            alldefconfig
powerpc                      ppc44x_defconfig
mips                         tb0219_defconfig
sh                             sh03_defconfig
m68k                        m5272c3_defconfig
arm                          pxa168_defconfig
mips                       lemote2f_defconfig
arm                            zeus_defconfig
powerpc                   bluestone_defconfig
m68k                        m5407c3_defconfig
powerpc                 mpc8313_rdb_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                          collie_defconfig
s390                       zfcpdump_defconfig
powerpc                          g5_defconfig
powerpc                      ppc6xx_defconfig
sh                           sh2007_defconfig
sh                        sh7757lcr_defconfig
m68k                             allyesconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
x86_64               randconfig-a003-20210218
x86_64               randconfig-a001-20210218
x86_64               randconfig-a004-20210218
x86_64               randconfig-a002-20210218
x86_64               randconfig-a005-20210218
x86_64               randconfig-a006-20210218
i386                 randconfig-a005-20210218
i386                 randconfig-a003-20210218
i386                 randconfig-a002-20210218
i386                 randconfig-a004-20210218
i386                 randconfig-a001-20210218
i386                 randconfig-a006-20210218
i386                 randconfig-a016-20210218
i386                 randconfig-a012-20210218
i386                 randconfig-a014-20210218
i386                 randconfig-a013-20210218
i386                 randconfig-a011-20210218
i386                 randconfig-a015-20210218
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
x86_64               randconfig-a012-20210218
x86_64               randconfig-a016-20210218
x86_64               randconfig-a013-20210218
x86_64               randconfig-a015-20210218
x86_64               randconfig-a011-20210218
x86_64               randconfig-a014-20210218

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
