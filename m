Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21D03512D7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Apr 2021 11:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 626C840544;
	Thu,  1 Apr 2021 09:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VYd6n6Iau_Zy; Thu,  1 Apr 2021 09:56:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FEE240528;
	Thu,  1 Apr 2021 09:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 587891BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 09:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43BC740F53
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 09:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HWmgBKEJXXPc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Apr 2021 09:56:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34DB940F3F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 09:56:39 +0000 (UTC)
IronPort-SDR: s7MsmNjd+F4+1F+u+IpnJh4Eto5MVsBvDbPMRCgA4sfwBg9w8gjheHJGDzqZ4BL6CRoEhg3XBF
 qQVvgbS+J0vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="189977108"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="189977108"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 02:56:39 -0700
IronPort-SDR: rrcJw7Jj5JmtKYNEHhydtCD+4en6wG7wnTI36KiWQCjAcgchrDf5cYm5hXFZS5Il3jitbeS/ze
 3uJkn4Evrn+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="416611081"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 01 Apr 2021 02:56:37 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lRu44-0006Qk-P8; Thu, 01 Apr 2021 09:56:36 +0000
Date: Thu, 01 Apr 2021 17:55:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60659899.ioiWQ7i/Cn4hTDXv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:100GbE] BUILD SUCCESS
 a07cc1786dab69b896af226cf58163237837ee72
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 100GbE
branch HEAD: a07cc1786dab69b896af226cf58163237837ee72  ice: Correct comment block style

elapsed time: 722m

configs tested: 144
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
m68k                         amcore_defconfig
arm                       spear13xx_defconfig
arm                           viper_defconfig
um                            kunit_defconfig
xtensa                  cadence_csp_defconfig
arm                  colibri_pxa300_defconfig
nios2                         3c120_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                          simpad_defconfig
powerpc                     akebono_defconfig
arm                           corgi_defconfig
sh                             sh03_defconfig
sh                              ul2_defconfig
powerpc                 mpc836x_mds_defconfig
arm                            qcom_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                           mtx1_defconfig
arm                         s5pv210_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                        bcm63xx_defconfig
arm                         shannon_defconfig
mips                           ip28_defconfig
i386                             alldefconfig
mips                        nlm_xlp_defconfig
sh                         apsh4a3a_defconfig
mips                        jmr3927_defconfig
arm                       versatile_defconfig
powerpc                 mpc837x_mds_defconfig
sh                           se7722_defconfig
arm                           sama5_defconfig
mips                            gpr_defconfig
parisc                           allyesconfig
s390                       zfcpdump_defconfig
arm                       aspeed_g4_defconfig
sh                           se7724_defconfig
sh                   sh7770_generic_defconfig
arm                           spitz_defconfig
h8300                       h8s-sim_defconfig
arm                         cm_x300_defconfig
powerpc                  storcenter_defconfig
mips                    maltaup_xpa_defconfig
alpha                            allyesconfig
sh                          rsk7203_defconfig
riscv                            alldefconfig
arm                            pleb_defconfig
mips                       lemote2f_defconfig
openrisc                            defconfig
powerpc                     sequoia_defconfig
mips                      loongson3_defconfig
arm                        trizeps4_defconfig
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
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210401
i386                 randconfig-a003-20210401
i386                 randconfig-a001-20210401
i386                 randconfig-a004-20210401
i386                 randconfig-a002-20210401
i386                 randconfig-a005-20210401
x86_64               randconfig-a014-20210401
x86_64               randconfig-a015-20210401
x86_64               randconfig-a011-20210401
x86_64               randconfig-a013-20210401
x86_64               randconfig-a012-20210401
x86_64               randconfig-a016-20210401
i386                 randconfig-a015-20210330
i386                 randconfig-a011-20210330
i386                 randconfig-a014-20210330
i386                 randconfig-a013-20210330
i386                 randconfig-a016-20210330
i386                 randconfig-a012-20210330
i386                 randconfig-a015-20210331
i386                 randconfig-a011-20210331
i386                 randconfig-a014-20210331
i386                 randconfig-a013-20210331
i386                 randconfig-a016-20210331
i386                 randconfig-a012-20210331
x86_64               randconfig-a004-20210330
x86_64               randconfig-a003-20210330
x86_64               randconfig-a002-20210330
x86_64               randconfig-a001-20210330
x86_64               randconfig-a005-20210330
x86_64               randconfig-a006-20210330
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
x86_64               randconfig-a004-20210401
x86_64               randconfig-a005-20210401
x86_64               randconfig-a003-20210401
x86_64               randconfig-a001-20210401
x86_64               randconfig-a002-20210401
x86_64               randconfig-a006-20210401
x86_64               randconfig-a012-20210330
x86_64               randconfig-a015-20210330
x86_64               randconfig-a014-20210330
x86_64               randconfig-a016-20210330
x86_64               randconfig-a013-20210330
x86_64               randconfig-a011-20210330

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
