Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEF13927F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 May 2021 08:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94604825E6;
	Thu, 27 May 2021 06:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlVv0CInsBBP; Thu, 27 May 2021 06:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AD198266A;
	Thu, 27 May 2021 06:44:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 644241BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 06:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52D1440370
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 06:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cp7R_Srk0bTX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 May 2021 06:44:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CF5340354
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 May 2021 06:44:37 +0000 (UTC)
IronPort-SDR: hCDRQUBm2ZnxwoPH9FgHVvsfvQeOuQ82apb5OyjCtTRdA1mPjD4EEFl0Vc8RVPbq7ZxDpSFfrM
 hsx/N/htgpKA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="182316994"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="182316994"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 23:44:36 -0700
IronPort-SDR: xey0wM2MXWp3IltEhPh5B848cdVpCUGwVae6yESSHy/YheVGEp/8L9jMQmGxSzDujpivSnl3o9
 f5UtFpwRg7zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="414771187"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 26 May 2021 23:44:34 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lm9ku-0002cT-NS; Thu, 27 May 2021 06:44:32 +0000
Date: Thu, 27 May 2021 14:44:14 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60af3fbe.QNYwXW0c7ghjOML2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 841fde65f412c240b04d9a9081cf69a83b1decc5
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
branch HEAD: 841fde65f412c240b04d9a9081cf69a83b1decc5  ixgbe: Fix packet corruption due to missing DMA sync

elapsed time: 724m

configs tested: 113
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                         amcore_defconfig
mips                        jmr3927_defconfig
powerpc                      ppc44x_defconfig
mips                        nlm_xlp_defconfig
powerpc                  iss476-smp_defconfig
arc                        vdk_hs38_defconfig
arc                      axs103_smp_defconfig
parisc                generic-32bit_defconfig
um                            kunit_defconfig
arm                          imote2_defconfig
powerpc                    sam440ep_defconfig
arm                     davinci_all_defconfig
sparc64                          alldefconfig
arm                          pxa910_defconfig
powerpc                    amigaone_defconfig
mips                    maltaup_xpa_defconfig
mips                            ar7_defconfig
arm                           u8500_defconfig
arm                             ezx_defconfig
arm                         s3c2410_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                          rm200_defconfig
riscv                    nommu_virt_defconfig
arm                          ep93xx_defconfig
sh                           se7343_defconfig
arm                       omap2plus_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                     mpc83xx_defconfig
arm                          ixp4xx_defconfig
microblaze                          defconfig
mips                         rt305x_defconfig
arm                        mvebu_v5_defconfig
powerpc                      bamboo_defconfig
mips                      maltaaprp_defconfig
x86_64                            allnoconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a005-20210526
x86_64               randconfig-a001-20210526
x86_64               randconfig-a006-20210526
x86_64               randconfig-a003-20210526
x86_64               randconfig-a004-20210526
x86_64               randconfig-a002-20210526
i386                 randconfig-a001-20210526
i386                 randconfig-a002-20210526
i386                 randconfig-a005-20210526
i386                 randconfig-a004-20210526
i386                 randconfig-a003-20210526
i386                 randconfig-a006-20210526
i386                 randconfig-a011-20210526
i386                 randconfig-a016-20210526
i386                 randconfig-a015-20210526
i386                 randconfig-a012-20210526
i386                 randconfig-a014-20210526
i386                 randconfig-a013-20210526
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210526
x86_64               randconfig-a013-20210526
x86_64               randconfig-a012-20210526
x86_64               randconfig-a014-20210526
x86_64               randconfig-a016-20210526
x86_64               randconfig-a015-20210526
x86_64               randconfig-a011-20210526

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
