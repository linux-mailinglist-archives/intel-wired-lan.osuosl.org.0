Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8585623EE89
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Aug 2020 16:03:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87093887F5;
	Fri,  7 Aug 2020 14:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uBWrgzadLpNN; Fri,  7 Aug 2020 14:03:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B5142887E9;
	Fri,  7 Aug 2020 14:03:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA15D1BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 14:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2452887E0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 14:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bGvVqow3694D for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Aug 2020 14:03:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A645A887BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Aug 2020 14:03:49 +0000 (UTC)
IronPort-SDR: qmAY6DwBqZFdkAVinE5kza0IZB7CEaWGoS6QKT2HHZWI9squShd8IXr7QYbFfXA3rqOOw0NGUq
 X6/7PJxEZaUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="140679081"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="140679081"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 07:03:48 -0700
IronPort-SDR: niMAbQw8JUoj+ZL52mrvZqd3ngwb20KhwWQBIcXR7D4r20FJO/2D/Ih5td/VApqUGUjtwyrBJe
 NlAy2+1IDePg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="397587638"
Received: from lkp-server02.sh.intel.com (HELO 090e49ab5480) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2020 07:03:47 -0700
Received: from kbuild by 090e49ab5480 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k42yI-0000JK-Vs; Fri, 07 Aug 2020 14:03:46 +0000
Date: Fri, 07 Aug 2020 22:03:11 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f2d5f1f.N7hPKZRQETpt4/Uh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 5cf0cbb14925b7131baa959b35a2267d6bbb6651
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
branch HEAD: 5cf0cbb14925b7131baa959b35a2267d6bbb6651  i40e: Set RX_ONLY mode for unicast promiscuous on VLAN

elapsed time: 721m

configs tested: 124
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          polaris_defconfig
microblaze                      mmu_defconfig
sh                          rsk7201_defconfig
powerpc64                           defconfig
arm                         shannon_defconfig
arm                       imx_v4_v5_defconfig
powerpc                      pasemi_defconfig
mips                     loongson1b_defconfig
sh                           se7619_defconfig
sh                           se7206_defconfig
arm                         lpc32xx_defconfig
arm                          ixp4xx_defconfig
sh                         apsh4a3a_defconfig
m68k                       m5249evb_defconfig
sh                            hp6xx_defconfig
mips                           jazz_defconfig
sh                        sh7763rdp_defconfig
sh                           se7712_defconfig
arm                             ezx_defconfig
mips                       rbtx49xx_defconfig
sh                          lboxre2_defconfig
arm                         bcm2835_defconfig
c6x                        evmc6678_defconfig
sh                         microdev_defconfig
s390                          debug_defconfig
sh                           se7722_defconfig
ia64                            zx1_defconfig
mips                 decstation_r4k_defconfig
openrisc                    or1ksim_defconfig
mips                        workpad_defconfig
arm                         axm55xx_defconfig
xtensa                generic_kc705_defconfig
arm                          gemini_defconfig
arm                           h3600_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200807
i386                 randconfig-a004-20200807
i386                 randconfig-a001-20200807
i386                 randconfig-a002-20200807
i386                 randconfig-a003-20200807
i386                 randconfig-a006-20200807
i386                 randconfig-a005-20200806
i386                 randconfig-a004-20200806
i386                 randconfig-a001-20200806
i386                 randconfig-a002-20200806
i386                 randconfig-a003-20200806
i386                 randconfig-a006-20200806
i386                 randconfig-a005-20200805
i386                 randconfig-a004-20200805
i386                 randconfig-a001-20200805
i386                 randconfig-a003-20200805
i386                 randconfig-a002-20200805
i386                 randconfig-a006-20200805
x86_64               randconfig-a013-20200807
x86_64               randconfig-a011-20200807
x86_64               randconfig-a012-20200807
x86_64               randconfig-a016-20200807
x86_64               randconfig-a015-20200807
x86_64               randconfig-a014-20200807
i386                 randconfig-a011-20200807
i386                 randconfig-a012-20200807
i386                 randconfig-a013-20200807
i386                 randconfig-a015-20200807
i386                 randconfig-a014-20200807
i386                 randconfig-a016-20200807
i386                 randconfig-a011-20200805
i386                 randconfig-a012-20200805
i386                 randconfig-a013-20200805
i386                 randconfig-a014-20200805
i386                 randconfig-a015-20200805
i386                 randconfig-a016-20200805
x86_64               randconfig-a006-20200806
x86_64               randconfig-a001-20200806
x86_64               randconfig-a004-20200806
x86_64               randconfig-a005-20200806
x86_64               randconfig-a003-20200806
x86_64               randconfig-a002-20200806
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
