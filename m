Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFBA3AB51A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 15:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 86B6C60AB9;
	Thu, 17 Jun 2021 13:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CF6-SyUtB2R; Thu, 17 Jun 2021 13:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A8560620;
	Thu, 17 Jun 2021 13:45:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E08FB1BF309
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 13:45:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DC7D6605AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 13:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZHAdRD4R4wmS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 13:45:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF2E660620
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 13:45:50 +0000 (UTC)
IronPort-SDR: tDnuPHYJ0Q1Sd51phLU9qb93EjhPF41Ejk2wmOeUtGWbHVlUXK7XG2SOasn0JMQU4mEMiq6KUN
 fRlVgpVENHYg==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="204541844"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="204541844"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 06:45:50 -0700
IronPort-SDR: gDgPQnH4R1NvtlQ3moxBcjhD8Rz6Mo0NQrygm4oPaKZ/xrHvk4tI65Ua1ROgRTMay4fdiiVFUe
 io/8ZapyireQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="485296605"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 17 Jun 2021 06:45:48 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ltsL5-00024w-Iy; Thu, 17 Jun 2021 13:45:47 +0000
Date: Thu, 17 Jun 2021 21:45:37 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60cb5201.Tnzcozs2B/lShSpf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3a99bf3cea7b8d186755211b86437acc7e44e90b
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
branch HEAD: 3a99bf3cea7b8d186755211b86437acc7e44e90b  iavf: Fix an error handling path in 'iavf_probe()'

elapsed time: 726m

configs tested: 135
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                   motionpro_defconfig
powerpc                      pcm030_defconfig
nios2                         10m50_defconfig
mips                            e55_defconfig
arm                          pxa910_defconfig
mips                         tb0219_defconfig
mips                      pistachio_defconfig
um                               alldefconfig
powerpc                 mpc836x_mds_defconfig
arc                          axs103_defconfig
powerpc64                           defconfig
parisc                generic-64bit_defconfig
m68k                       bvme6000_defconfig
arm                            hisi_defconfig
sh                        sh7785lcr_defconfig
sh                   rts7751r2dplus_defconfig
x86_64                           alldefconfig
arm                     am200epdkit_defconfig
powerpc                        cell_defconfig
arm                         orion5x_defconfig
mips                           ci20_defconfig
parisc                generic-32bit_defconfig
arm                   milbeaut_m10v_defconfig
mips                    maltaup_xpa_defconfig
h8300                    h8300h-sim_defconfig
arm                            dove_defconfig
powerpc                    mvme5100_defconfig
arm                      pxa255-idp_defconfig
mips                        bcm47xx_defconfig
sh                           se7705_defconfig
arm                           corgi_defconfig
sh                             sh03_defconfig
xtensa                              defconfig
sparc                       sparc64_defconfig
xtensa                          iss_defconfig
mips                         cobalt_defconfig
mips                           ip22_defconfig
arm                       omap2plus_defconfig
h8300                     edosk2674_defconfig
powerpc                      ep88xc_defconfig
sh                         ecovec24_defconfig
arm                        multi_v7_defconfig
arm                          imote2_defconfig
arm                            qcom_defconfig
ia64                            zx1_defconfig
mips                 decstation_r4k_defconfig
powerpc                      makalu_defconfig
sh                   secureedge5410_defconfig
arm                           tegra_defconfig
mips                            gpr_defconfig
arm                          simpad_defconfig
s390                       zfcpdump_defconfig
openrisc                  or1klitex_defconfig
sh                           se7724_defconfig
mips                          rm200_defconfig
arm                         nhk8815_defconfig
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
x86_64               randconfig-a004-20210617
x86_64               randconfig-a001-20210617
x86_64               randconfig-a002-20210617
x86_64               randconfig-a003-20210617
x86_64               randconfig-a006-20210617
x86_64               randconfig-a005-20210617
i386                 randconfig-a002-20210617
i386                 randconfig-a006-20210617
i386                 randconfig-a001-20210617
i386                 randconfig-a004-20210617
i386                 randconfig-a005-20210617
i386                 randconfig-a003-20210617
i386                 randconfig-a015-20210617
i386                 randconfig-a013-20210617
i386                 randconfig-a016-20210617
i386                 randconfig-a012-20210617
i386                 randconfig-a014-20210617
i386                 randconfig-a011-20210617
riscv                    nommu_k210_defconfig
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
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210617
x86_64               randconfig-a015-20210617
x86_64               randconfig-a011-20210617
x86_64               randconfig-a014-20210617
x86_64               randconfig-a012-20210617
x86_64               randconfig-a013-20210617
x86_64               randconfig-a016-20210617

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
