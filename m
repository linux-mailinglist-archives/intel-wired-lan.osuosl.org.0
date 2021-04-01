Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F793512D2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Apr 2021 11:55:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0CAC40F68;
	Thu,  1 Apr 2021 09:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MUrPgKpL0zgY; Thu,  1 Apr 2021 09:55:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A92D40F53;
	Thu,  1 Apr 2021 09:55:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0067D1BF85D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 09:55:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1F1440F53
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 09:55:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Ta709G7Tl3x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Apr 2021 09:55:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CEA540F3F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Apr 2021 09:55:41 +0000 (UTC)
IronPort-SDR: doQKfV/w7j3xWa/aSXFTorcfgOv/UnEFdXllI5yaXIS7a1ZgqKNDWI1JFq7LbiQ05mkl+F2nJu
 5yUc4pp6yegg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="179741775"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="179741775"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 02:55:38 -0700
IronPort-SDR: 7lSo01adTShUFLVk/9UllwefDBitFe0aed6uHSd0JX2cxoQkWGBnfxRgCNIOFdLhYe4Fs/2oum
 Fl7Ebz4Mri7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="394454157"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 01 Apr 2021 02:55:37 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lRu36-0006Qb-ME; Thu, 01 Apr 2021 09:55:36 +0000
Date: Thu, 01 Apr 2021 17:55:30 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <60659892.2tbLhs34Br2D9Vsp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 7be4e40d9936a3ceedd29a92d867ade2724b4f18
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
branch HEAD: 7be4e40d9936a3ceedd29a92d867ade2724b4f18  i40e: Fix sparse warning: missing error code 'err'

elapsed time: 721m

configs tested: 125
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
m68k                             alldefconfig
powerpc                 mpc8560_ads_defconfig
sh                          r7785rp_defconfig
xtensa                  audio_kc705_defconfig
arm                        vexpress_defconfig
um                            kunit_defconfig
mips                malta_kvm_guest_defconfig
sh                        edosk7760_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                         apollo_defconfig
arc                           tb10x_defconfig
arm                            dove_defconfig
arm                        multi_v7_defconfig
m68k                        mvme16x_defconfig
arm                       multi_v4t_defconfig
mips                          ath79_defconfig
sh                          landisk_defconfig
mips                     cu1000-neo_defconfig
xtensa                       common_defconfig
arm                      integrator_defconfig
powerpc                      mgcoge_defconfig
arm64                            alldefconfig
riscv             nommu_k210_sdcard_defconfig
arm                          simpad_defconfig
m68k                        stmark2_defconfig
mips                  maltasmvp_eva_defconfig
mips                           rs90_defconfig
powerpc                     mpc512x_defconfig
mips                        nlm_xlp_defconfig
arm                       mainstone_defconfig
mips                           gcw0_defconfig
powerpc                        fsp2_defconfig
mips                         tb0219_defconfig
mips                    maltaup_xpa_defconfig
sh                     magicpanelr2_defconfig
xtensa                generic_kc705_defconfig
arm                       cns3420vb_defconfig
arm                     am200epdkit_defconfig
m68k                        mvme147_defconfig
mips                 decstation_r4k_defconfig
arm                              alldefconfig
sh                          rsk7203_defconfig
mips                           mtx1_defconfig
riscv                            alldefconfig
arm                            pleb_defconfig
mips                       lemote2f_defconfig
xtensa                  cadence_csp_defconfig
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
s390                                defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
i386                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210330
x86_64               randconfig-a003-20210330
x86_64               randconfig-a002-20210330
x86_64               randconfig-a001-20210330
x86_64               randconfig-a005-20210330
x86_64               randconfig-a006-20210330
i386                 randconfig-a004-20210330
i386                 randconfig-a006-20210330
i386                 randconfig-a003-20210330
i386                 randconfig-a002-20210330
i386                 randconfig-a001-20210330
i386                 randconfig-a005-20210330
i386                 randconfig-a015-20210330
i386                 randconfig-a011-20210330
i386                 randconfig-a014-20210330
i386                 randconfig-a013-20210330
i386                 randconfig-a016-20210330
i386                 randconfig-a012-20210330
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
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
