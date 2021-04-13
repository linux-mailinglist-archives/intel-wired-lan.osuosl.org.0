Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB7335DFFE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Apr 2021 15:26:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3712A40624;
	Tue, 13 Apr 2021 13:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lMQir3YqHFwh; Tue, 13 Apr 2021 13:26:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FC074061F;
	Tue, 13 Apr 2021 13:26:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C31E31BF841
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 13:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB7A782741
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 13:26:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UCcL5smKk5ij for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Apr 2021 13:26:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E09F481C44
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Apr 2021 13:26:14 +0000 (UTC)
IronPort-SDR: RfvDQe7tKhVM6R6JVQeKf+YNEr3AcemD+EQ5tdtxZTaBLsPwf6Dov5F2sW3IjqwS/8cF5vkcPU
 +EkLnjT4vSAQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="191224388"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="191224388"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 06:26:05 -0700
IronPort-SDR: 64b7TcK3E/vRCDwL7iYFWCwGy/jWvuWrBvS107U/2/DnbnP+lShHMaj+GuKYPPQocFLB3fNmN2
 KdzMJB5OIcYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; d="scan'208";a="381967834"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 13 Apr 2021 06:26:03 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lWJ3K-00014L-NX; Tue, 13 Apr 2021 13:26:02 +0000
Date: Tue, 13 Apr 2021 21:25:57 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60759be5.NGgOj1g/wmkODTva%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 9dbdeb060426ab4d7bd02fa31271c523fa804c1d
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
branch HEAD: 9dbdeb060426ab4d7bd02fa31271c523fa804c1d  i40e: Fix use-after-free in i40e_client_subtask()

elapsed time: 723m

configs tested: 104
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
powerpc                       ebony_defconfig
powerpc                     ep8248e_defconfig
mips                        omega2p_defconfig
mips                     loongson1c_defconfig
arm                           stm32_defconfig
arm                        neponset_defconfig
powerpc                     mpc5200_defconfig
h8300                     edosk2674_defconfig
powerpc                      bamboo_defconfig
xtensa                  nommu_kc705_defconfig
sh                           se7780_defconfig
sh                        edosk7760_defconfig
powerpc                    klondike_defconfig
powerpc                 mpc8560_ads_defconfig
sh                   sh7770_generic_defconfig
arc                          axs103_defconfig
arm                            qcom_defconfig
arm                            xcep_defconfig
mips                         mpc30x_defconfig
mips                          ath79_defconfig
mips                        workpad_defconfig
m68k                          amiga_defconfig
powerpc                     pseries_defconfig
mips                          ath25_defconfig
sh                           sh2007_defconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210413
x86_64               randconfig-a002-20210413
x86_64               randconfig-a001-20210413
x86_64               randconfig-a005-20210413
x86_64               randconfig-a006-20210413
x86_64               randconfig-a004-20210413
i386                 randconfig-a003-20210413
i386                 randconfig-a001-20210413
i386                 randconfig-a006-20210413
i386                 randconfig-a005-20210413
i386                 randconfig-a004-20210413
i386                 randconfig-a002-20210413
i386                 randconfig-a015-20210413
i386                 randconfig-a014-20210413
i386                 randconfig-a013-20210413
i386                 randconfig-a012-20210413
i386                 randconfig-a016-20210413
i386                 randconfig-a011-20210413
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210413
x86_64               randconfig-a015-20210413
x86_64               randconfig-a011-20210413
x86_64               randconfig-a013-20210413
x86_64               randconfig-a012-20210413
x86_64               randconfig-a016-20210413

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
