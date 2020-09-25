Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33873277FF7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Sep 2020 07:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9748E86CE2;
	Fri, 25 Sep 2020 05:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V5NYlJbxdgci; Fri, 25 Sep 2020 05:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB25A86D24;
	Fri, 25 Sep 2020 05:35:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 266841BF84C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 05:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C05D86CE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 05:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o491m1tQsWf5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Sep 2020 05:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 31A1986CE0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Sep 2020 05:35:30 +0000 (UTC)
IronPort-SDR: DvZjF4vOR4nVhwJvHuICoLljZ2cxJnW+VObGBPHl4ubW3Qb+t/VCktGd/DX8EOsikO/UuhctSc
 +1sw96FPqjSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="158794292"
X-IronPort-AV: E=Sophos;i="5.77,300,1596524400"; d="scan'208";a="158794292"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 22:35:29 -0700
IronPort-SDR: 7t/OgQJpH1GQ2uYf6q5xtiJcnzrRzxhIvpkJmHwIaBafemmAipRqCO9bM5Q3I1eQk9re7HF0Gv
 iJm4pP0fhkog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,300,1596524400"; d="scan'208";a="310681723"
Received: from lkp-server01.sh.intel.com (HELO bb5857c652c6) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 24 Sep 2020 22:35:28 -0700
Received: from kbuild by bb5857c652c6 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kLgOF-00002m-Jg; Fri, 25 Sep 2020 05:35:27 +0000
Date: Fri, 25 Sep 2020 13:34:31 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5f6d8167.rXAneI9Zn04IaZYu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:1GbE] BUILD SUCCESS
 92465620e2348c33293eba028d1785e50ce0a922
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  1GbE
branch HEAD: 92465620e2348c33293eba028d1785e50ce0a922  e1000e: Add support for Meteor Lake

elapsed time: 723m

configs tested: 193
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                  maltasmvp_eva_defconfig
mips                    maltaup_xpa_defconfig
xtensa                  audio_kc705_defconfig
arm                        vexpress_defconfig
powerpc                    gamecube_defconfig
arm                        multi_v7_defconfig
i386                             allyesconfig
sh                          rsk7269_defconfig
ia64                                defconfig
microblaze                    nommu_defconfig
arm                       omap2plus_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                               j2_defconfig
arm                       multi_v4t_defconfig
powerpc                      tqm8xx_defconfig
arm                         bcm2835_defconfig
arm                           stm32_defconfig
arm                          collie_defconfig
mips                         cobalt_defconfig
arm                     davinci_all_defconfig
m68k                       m5275evb_defconfig
powerpc                     tqm8548_defconfig
arm                         nhk8815_defconfig
arm                        clps711x_defconfig
powerpc                      ppc64e_defconfig
h8300                            alldefconfig
arm                        trizeps4_defconfig
powerpc                 mpc85xx_cds_defconfig
mips                         rt305x_defconfig
arm                       mainstone_defconfig
powerpc64                           defconfig
xtensa                              defconfig
m68k                        stmark2_defconfig
arm                            qcom_defconfig
sh                          r7780mp_defconfig
powerpc                       ebony_defconfig
xtensa                    smp_lx200_defconfig
m68k                        m5272c3_defconfig
powerpc                   motionpro_defconfig
sh                          kfr2r09_defconfig
powerpc                 linkstation_defconfig
m68k                        mvme16x_defconfig
powerpc                     sbc8548_defconfig
sh                             shx3_defconfig
arm                           efm32_defconfig
powerpc                     akebono_defconfig
sh                         apsh4a3a_defconfig
sh                           se7712_defconfig
sh                        sh7757lcr_defconfig
powerpc                    adder875_defconfig
arc                      axs103_smp_defconfig
m68k                          amiga_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                     tqm8540_defconfig
sh                      rts7751r2d1_defconfig
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
mips                        bcm47xx_defconfig
mips                         tb0226_defconfig
m68k                          hp300_defconfig
sparc                            allyesconfig
sparc                       sparc32_defconfig
powerpc                 mpc837x_mds_defconfig
arm                         hackkit_defconfig
um                           x86_64_defconfig
arm                       netwinder_defconfig
arm                        keystone_defconfig
arc                              alldefconfig
mips                           ci20_defconfig
xtensa                         virt_defconfig
arc                        nsim_700_defconfig
m68k                       bvme6000_defconfig
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                     tqm8541_defconfig
powerpc                    socrates_defconfig
arm                         s3c6400_defconfig
mips                        omega2p_defconfig
h8300                               defconfig
powerpc                      pcm030_defconfig
h8300                    h8300h-sim_defconfig
sh                   rts7751r2dplus_defconfig
mips                        bcm63xx_defconfig
arm                         axm55xx_defconfig
sh                          polaris_defconfig
sh                ecovec24-romimage_defconfig
sh                          lboxre2_defconfig
nds32                             allnoconfig
csky                                defconfig
xtensa                           allyesconfig
mips                         bigsur_defconfig
mips                     loongson1c_defconfig
mips                        workpad_defconfig
powerpc                     ep8248e_defconfig
mips                       capcella_defconfig
riscv                          rv32_defconfig
powerpc                     ppa8548_defconfig
x86_64                              defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20200924
i386                 randconfig-a006-20200924
i386                 randconfig-a003-20200924
i386                 randconfig-a004-20200924
i386                 randconfig-a005-20200924
i386                 randconfig-a001-20200924
i386                 randconfig-a002-20200923
i386                 randconfig-a006-20200923
i386                 randconfig-a003-20200923
i386                 randconfig-a004-20200923
i386                 randconfig-a005-20200923
i386                 randconfig-a001-20200923
x86_64               randconfig-a011-20200925
x86_64               randconfig-a013-20200925
x86_64               randconfig-a014-20200925
x86_64               randconfig-a015-20200925
x86_64               randconfig-a012-20200925
x86_64               randconfig-a016-20200925
x86_64               randconfig-a011-20200923
x86_64               randconfig-a013-20200923
x86_64               randconfig-a014-20200923
x86_64               randconfig-a015-20200923
x86_64               randconfig-a012-20200923
x86_64               randconfig-a016-20200923
i386                 randconfig-a012-20200925
i386                 randconfig-a014-20200925
i386                 randconfig-a016-20200925
i386                 randconfig-a013-20200925
i386                 randconfig-a011-20200925
i386                 randconfig-a015-20200925
i386                 randconfig-a012-20200923
i386                 randconfig-a014-20200923
i386                 randconfig-a016-20200923
i386                 randconfig-a013-20200923
i386                 randconfig-a011-20200923
i386                 randconfig-a015-20200923
i386                 randconfig-a012-20200924
i386                 randconfig-a014-20200924
i386                 randconfig-a016-20200924
i386                 randconfig-a013-20200924
i386                 randconfig-a011-20200924
i386                 randconfig-a015-20200924
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20200923
x86_64               randconfig-a003-20200923
x86_64               randconfig-a004-20200923
x86_64               randconfig-a002-20200923
x86_64               randconfig-a006-20200923
x86_64               randconfig-a001-20200923
x86_64               randconfig-a005-20200925
x86_64               randconfig-a003-20200925
x86_64               randconfig-a004-20200925
x86_64               randconfig-a002-20200925
x86_64               randconfig-a006-20200925
x86_64               randconfig-a001-20200925

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
