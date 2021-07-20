Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF13CF4A8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jul 2021 08:40:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 59063839BC;
	Tue, 20 Jul 2021 06:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLOAGxeLK6_O; Tue, 20 Jul 2021 06:40:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5A0B8839C0;
	Tue, 20 Jul 2021 06:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8163D1BF321
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 06:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F80F607F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 06:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gl0zrm1PsD5Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 06:40:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8487C60793
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 06:40:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="198457897"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="198457897"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 23:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="494557333"
Received: from lkp-server02.sh.intel.com (HELO 1b5a72ed9419) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jul 2021 23:40:33 -0700
Received: from kbuild by 1b5a72ed9419 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m5jQe-00005u-Fk; Tue, 20 Jul 2021 06:40:32 +0000
Date: Tue, 20 Jul 2021 14:39:59 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60f66fbf.7MLelAPVZekDKuLJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 51393387d059c3579131ce39d859a744b4969404
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
branch HEAD: 51393387d059c3579131ce39d859a744b4969404  i40e: Fix pre-set max number of queues for VF

elapsed time: 723m

configs tested: 111
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                  colibri_pxa300_defconfig
arm                       netwinder_defconfig
powerpc                    gamecube_defconfig
riscv                               defconfig
m68k                           sun3_defconfig
sh                            hp6xx_defconfig
arm                        shmobile_defconfig
mips                     loongson1c_defconfig
powerpc                      bamboo_defconfig
powerpc                      katmai_defconfig
sh                           se7780_defconfig
arm                        mvebu_v5_defconfig
arm                         lubbock_defconfig
arm                   milbeaut_m10v_defconfig
um                               alldefconfig
powerpc                  iss476-smp_defconfig
sh                          urquell_defconfig
sh                          r7780mp_defconfig
powerpc                     rainier_defconfig
powerpc                         wii_defconfig
sh                          rsk7201_defconfig
arm                    vt8500_v6_v7_defconfig
nds32                             allnoconfig
arm                            mmp2_defconfig
mips                           ci20_defconfig
arm                        trizeps4_defconfig
h8300                            allyesconfig
h8300                     edosk2674_defconfig
powerpc                     tqm8548_defconfig
sh                   rts7751r2dplus_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210720
i386                 randconfig-a003-20210720
i386                 randconfig-a004-20210720
i386                 randconfig-a002-20210720
i386                 randconfig-a001-20210720
i386                 randconfig-a006-20210720
x86_64               randconfig-a013-20210719
x86_64               randconfig-a012-20210719
x86_64               randconfig-a015-20210719
x86_64               randconfig-a014-20210719
x86_64               randconfig-a011-20210719
x86_64               randconfig-a016-20210719
i386                 randconfig-a016-20210720
i386                 randconfig-a013-20210720
i386                 randconfig-a012-20210720
i386                 randconfig-a014-20210720
i386                 randconfig-a011-20210720
i386                 randconfig-a015-20210720
x86_64               randconfig-a005-20210718
x86_64               randconfig-a004-20210718
x86_64               randconfig-a002-20210718
x86_64               randconfig-a003-20210718
x86_64               randconfig-a006-20210718
x86_64               randconfig-a001-20210718
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210720
x86_64               randconfig-a011-20210720
x86_64               randconfig-a016-20210720
x86_64               randconfig-a013-20210720
x86_64               randconfig-a014-20210720
x86_64               randconfig-a012-20210720
x86_64               randconfig-a015-20210720

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
