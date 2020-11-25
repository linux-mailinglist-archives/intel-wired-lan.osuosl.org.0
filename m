Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BEA2C3A42
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Nov 2020 08:45:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4340A87405;
	Wed, 25 Nov 2020 07:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O8woR+lXmd2o; Wed, 25 Nov 2020 07:45:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5705873E8;
	Wed, 25 Nov 2020 07:45:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 413711BF2CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 07:45:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3E22786D41
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 07:45:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id woYKg5Ch1Cg9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Nov 2020 07:45:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75DED86D42
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Nov 2020 07:45:37 +0000 (UTC)
IronPort-SDR: D0EvcplQHDZZPJHh1cwB35XejcF0N4sYbKh52wTujHv6Xauw8HflilU9MzC0PafmkcQ7SECCmn
 5jIuR+cqiL+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="159852043"
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="159852043"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 23:45:36 -0800
IronPort-SDR: HS2cqKaJv6PU0VRubuMGokGiFlV5qhAmMwG29gGcg8CqSzz2ZHJVxZmmae/h92Q5hyV2KjMZ8R
 Kpk5Hpn+9aTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,368,1599548400"; d="scan'208";a="313548655"
Received: from lkp-server01.sh.intel.com (HELO 9276051a5e67) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 24 Nov 2020 23:45:34 -0800
Received: from kbuild by 9276051a5e67 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1khpUc-00001Z-A0; Wed, 25 Nov 2020 07:45:34 +0000
Date: Wed, 25 Nov 2020 15:45:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fbe0b7e.GPYxodzFLMvdoKNH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 1198f2f4eb68a42696ff48b3d113a5a77d499a36
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git  dev-queue
branch HEAD: 1198f2f4eb68a42696ff48b3d113a5a77d499a36  i40e: Add zero-initialization of AQ command structures

elapsed time: 720m

configs tested: 197
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      tqm8xx_defconfig
m68k                       m5475evb_defconfig
mips                           jazz_defconfig
c6x                        evmc6474_defconfig
powerpc                      makalu_defconfig
sh                         ap325rxa_defconfig
arm                         at91_dt_defconfig
m68k                        mvme147_defconfig
sh                        dreamcast_defconfig
powerpc                     kmeter1_defconfig
m68k                       m5249evb_defconfig
sparc                            alldefconfig
arm                  colibri_pxa270_defconfig
arm                          ixp4xx_defconfig
arm                           corgi_defconfig
powerpc               mpc834x_itxgp_defconfig
sh                               allmodconfig
powerpc                     ep8248e_defconfig
powerpc                   lite5200b_defconfig
ia64                          tiger_defconfig
arc                     haps_hs_smp_defconfig
mips                            ar7_defconfig
arm                         lubbock_defconfig
parisc                           allyesconfig
sh                        sh7757lcr_defconfig
nios2                         3c120_defconfig
powerpc                      pasemi_defconfig
arm                           sama5_defconfig
mips                          rm200_defconfig
powerpc                  iss476-smp_defconfig
sh                                  defconfig
arm                          gemini_defconfig
csky                             alldefconfig
arm                          tango4_defconfig
xtensa                       common_defconfig
m68k                           sun3_defconfig
arc                        vdk_hs38_defconfig
mips                         db1xxx_defconfig
arm                          prima2_defconfig
powerpc                  storcenter_defconfig
arm                             ezx_defconfig
arm                       aspeed_g4_defconfig
powerpc                    ge_imp3a_defconfig
mips                           ip27_defconfig
powerpc                    socrates_defconfig
sh                           se7724_defconfig
powerpc                 mpc8313_rdb_defconfig
s390                             alldefconfig
sh                     sh7710voipgw_defconfig
sh                         microdev_defconfig
ia64                         bigsur_defconfig
nios2                               defconfig
m68k                         apollo_defconfig
mips                           rs90_defconfig
riscv                               defconfig
arm                            pleb_defconfig
x86_64                           alldefconfig
arm                        neponset_defconfig
sh                            migor_defconfig
mips                      maltaaprp_defconfig
s390                                defconfig
mips                      fuloong2e_defconfig
mips                    maltaup_xpa_defconfig
mips                          rb532_defconfig
arc                     nsimosci_hs_defconfig
sh                          rsk7203_defconfig
arm                        mvebu_v7_defconfig
mips                 decstation_r4k_defconfig
parisc                           alldefconfig
sh                   sh7770_generic_defconfig
powerpc                    gamecube_defconfig
arm                        trizeps4_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                 mpc834x_itx_defconfig
arm                            qcom_defconfig
arc                            hsdk_defconfig
m68k                       m5275evb_defconfig
arm                        multi_v5_defconfig
sh                           se7780_defconfig
arm                       imx_v4_v5_defconfig
arm                         ebsa110_defconfig
powerpc                        fsp2_defconfig
mips                malta_kvm_guest_defconfig
powerpc                      ep88xc_defconfig
mips                          ath25_defconfig
microblaze                          defconfig
powerpc                 mpc834x_mds_defconfig
arc                        nsimosci_defconfig
mips                        jmr3927_defconfig
arc                        nsim_700_defconfig
h8300                            alldefconfig
powerpc                      walnut_defconfig
powerpc                     sbc8548_defconfig
sh                          rsk7264_defconfig
powerpc                     tqm8548_defconfig
ia64                             alldefconfig
microblaze                    nommu_defconfig
mips                     cu1000-neo_defconfig
arm                   milbeaut_m10v_defconfig
arm                        shmobile_defconfig
sh                               j2_defconfig
parisc                generic-64bit_defconfig
ia64                            zx1_defconfig
sh                              ul2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
parisc                              defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20201124
i386                 randconfig-a003-20201124
i386                 randconfig-a002-20201124
i386                 randconfig-a005-20201124
i386                 randconfig-a001-20201124
i386                 randconfig-a006-20201124
i386                 randconfig-a004-20201125
i386                 randconfig-a003-20201125
i386                 randconfig-a002-20201125
i386                 randconfig-a005-20201125
i386                 randconfig-a001-20201125
i386                 randconfig-a006-20201125
x86_64               randconfig-a015-20201125
x86_64               randconfig-a011-20201125
x86_64               randconfig-a014-20201125
x86_64               randconfig-a016-20201125
x86_64               randconfig-a012-20201125
x86_64               randconfig-a013-20201125
i386                 randconfig-a012-20201125
i386                 randconfig-a013-20201125
i386                 randconfig-a011-20201125
i386                 randconfig-a016-20201125
i386                 randconfig-a014-20201125
i386                 randconfig-a015-20201125
i386                 randconfig-a012-20201124
i386                 randconfig-a013-20201124
i386                 randconfig-a011-20201124
i386                 randconfig-a016-20201124
i386                 randconfig-a014-20201124
i386                 randconfig-a015-20201124
x86_64               randconfig-a006-20201124
x86_64               randconfig-a003-20201124
x86_64               randconfig-a004-20201124
x86_64               randconfig-a005-20201124
x86_64               randconfig-a001-20201124
x86_64               randconfig-a002-20201124
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20201125
x86_64               randconfig-a003-20201125
x86_64               randconfig-a004-20201125
x86_64               randconfig-a005-20201125
x86_64               randconfig-a002-20201125
x86_64               randconfig-a001-20201125
x86_64               randconfig-a015-20201124
x86_64               randconfig-a011-20201124
x86_64               randconfig-a014-20201124
x86_64               randconfig-a016-20201124
x86_64               randconfig-a012-20201124
x86_64               randconfig-a013-20201124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
