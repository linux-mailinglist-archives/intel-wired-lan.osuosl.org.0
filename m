Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A973C1EBF
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jul 2021 07:04:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A9AC883CDA;
	Fri,  9 Jul 2021 05:04:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sUayO9PgCZKq; Fri,  9 Jul 2021 05:04:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AB4983AC5;
	Fri,  9 Jul 2021 05:04:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C04821BF287
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 05:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA9D7415A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 05:04:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oSzSGP2WmPTv for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jul 2021 05:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 883A14158C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jul 2021 05:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="207823516"
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="207823516"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 22:04:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="487921197"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2021 22:04:09 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m1igK-000Eh8-FT; Fri, 09 Jul 2021 05:04:08 +0000
Date: Fri, 09 Jul 2021 13:03:09 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60e7d88d.0O8pBmxb3l2myEQM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 a6c5ae02c186fae2cd3040f328feba345b81a278
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
branch HEAD: a6c5ae02c186fae2cd3040f328feba345b81a278  ice: support crosstimestamping on E822 devices if supported

elapsed time: 722m

configs tested: 156
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                      malta_kvm_defconfig
m68k                       bvme6000_defconfig
arm                         palmz72_defconfig
mips                          rb532_defconfig
sh                           se7721_defconfig
m68k                         apollo_defconfig
powerpc                     asp8347_defconfig
arm                           u8500_defconfig
arm                            hisi_defconfig
sh                 kfr2r09-romimage_defconfig
x86_64                              defconfig
ia64                            zx1_defconfig
m68k                          multi_defconfig
powerpc                       maple_defconfig
powerpc                   lite5200b_defconfig
arm                         s5pv210_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      chrp32_defconfig
powerpc                   bluestone_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                     ep8248e_defconfig
arm                        oxnas_v6_defconfig
arm                         axm55xx_defconfig
arm                        clps711x_defconfig
sparc                       sparc64_defconfig
mips                        vocore2_defconfig
powerpc                         ps3_defconfig
powerpc                    sam440ep_defconfig
arm                           corgi_defconfig
arm                  colibri_pxa270_defconfig
mips                         cobalt_defconfig
sh                               alldefconfig
mips                    maltaup_xpa_defconfig
s390                       zfcpdump_defconfig
powerpc                    amigaone_defconfig
sh                               j2_defconfig
xtensa                           alldefconfig
arc                          axs103_defconfig
mips                  cavium_octeon_defconfig
arm                     eseries_pxa_defconfig
powerpc                      pasemi_defconfig
arm                             mxs_defconfig
sh                           se7712_defconfig
sh                        edosk7705_defconfig
mips                     loongson2k_defconfig
arc                        nsim_700_defconfig
sparc64                          alldefconfig
sh                        sh7757lcr_defconfig
arm                          imote2_defconfig
arm                           h3600_defconfig
arm                        mvebu_v7_defconfig
sh                            hp6xx_defconfig
arm                       cns3420vb_defconfig
powerpc                     sbc8548_defconfig
sh                     magicpanelr2_defconfig
h8300                       h8s-sim_defconfig
riscv                            alldefconfig
xtensa                    smp_lx200_defconfig
arm                           h5000_defconfig
sparc                       sparc32_defconfig
powerpc                  mpc885_ads_defconfig
arm                     davinci_all_defconfig
riscv                    nommu_k210_defconfig
mips                     loongson1c_defconfig
mips                            gpr_defconfig
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
x86_64               randconfig-a004-20210707
x86_64               randconfig-a002-20210707
x86_64               randconfig-a005-20210707
x86_64               randconfig-a006-20210707
x86_64               randconfig-a003-20210707
x86_64               randconfig-a001-20210707
i386                 randconfig-a006-20210708
i386                 randconfig-a004-20210708
i386                 randconfig-a001-20210708
i386                 randconfig-a003-20210708
i386                 randconfig-a005-20210708
i386                 randconfig-a002-20210708
i386                 randconfig-a004-20210707
i386                 randconfig-a006-20210707
i386                 randconfig-a001-20210707
i386                 randconfig-a003-20210707
i386                 randconfig-a005-20210707
i386                 randconfig-a002-20210707
i386                 randconfig-a006-20210709
i386                 randconfig-a004-20210709
i386                 randconfig-a001-20210709
i386                 randconfig-a003-20210709
i386                 randconfig-a005-20210709
i386                 randconfig-a002-20210709
i386                 randconfig-a015-20210707
i386                 randconfig-a016-20210707
i386                 randconfig-a012-20210707
i386                 randconfig-a011-20210707
i386                 randconfig-a014-20210707
i386                 randconfig-a013-20210707
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210707
x86_64               randconfig-b001-20210709
x86_64               randconfig-a015-20210707
x86_64               randconfig-a014-20210707
x86_64               randconfig-a012-20210707
x86_64               randconfig-a011-20210707
x86_64               randconfig-a016-20210707
x86_64               randconfig-a013-20210707

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
