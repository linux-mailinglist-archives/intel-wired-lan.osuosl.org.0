Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D19AF34EE87
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Mar 2021 18:54:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F42382E71;
	Tue, 30 Mar 2021 16:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id euOIuzcsHXsv; Tue, 30 Mar 2021 16:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D78182E33;
	Tue, 30 Mar 2021 16:54:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D11F01BF86C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 16:54:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8D4E606FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 16:54:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttjwyVKbKjP0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Mar 2021 16:54:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B040A6069B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Mar 2021 16:54:06 +0000 (UTC)
IronPort-SDR: DY9s9zF9Oa50tUKmeevCNo+Atjhn6KSnbAqgGEHgKE99ml0wi4C7wlyw8oKOdwpDVBGf6l5UcN
 jTSl9mgabbtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="179348582"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="179348582"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 09:53:56 -0700
IronPort-SDR: eN+wqZDeAsegHkLpYSpt/fp9FsbIPoIKbymKVaCI3efAywlFXCVk6R5FdNKjL2VtaWvVnCSkjW
 ZIjOs+CVmWUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="516504376"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Mar 2021 09:53:55 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lRHco-0005Ns-G9; Tue, 30 Mar 2021 16:53:54 +0000
Date: Wed, 31 Mar 2021 00:53:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <6063577d.HS5+7TeJiXK6XCsI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 148327fca93837928fe47c94a3e18d007a90f631
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
branch HEAD: 148327fca93837928fe47c94a3e18d007a90f631  i40e: Fix sparse warning: missing error code 'err'

elapsed time: 970m

configs tested: 130
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
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                        qi_lb60_defconfig
arc                        nsim_700_defconfig
powerpc                     taishan_defconfig
mips                       bmips_be_defconfig
mips                            gpr_defconfig
xtensa                  cadence_csp_defconfig
powerpc                         ps3_defconfig
mips                          ath25_defconfig
m68k                        m5272c3_defconfig
sh                          urquell_defconfig
arc                      axs103_smp_defconfig
mips                           ip22_defconfig
powerpc                    klondike_defconfig
mips                             allyesconfig
powerpc                 mpc832x_mds_defconfig
mips                      loongson3_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                      chrp32_defconfig
sh                                  defconfig
arm                            qcom_defconfig
arm                           sama5_defconfig
arm                           corgi_defconfig
powerpc                     pq2fads_defconfig
ia64                        generic_defconfig
powerpc                  iss476-smp_defconfig
arm                             pxa_defconfig
s390                          debug_defconfig
arc                              alldefconfig
arm                       mainstone_defconfig
sh                          landisk_defconfig
arm                   milbeaut_m10v_defconfig
i386                                defconfig
m68k                           sun3_defconfig
arm                  colibri_pxa300_defconfig
arm                         hackkit_defconfig
mips                           jazz_defconfig
arc                         haps_hs_defconfig
mips                      bmips_stb_defconfig
sh                               alldefconfig
sh                          r7780mp_defconfig
arm                        spear6xx_defconfig
mips                          malta_defconfig
arm                         cm_x300_defconfig
arm                      footbridge_defconfig
arm                          iop32x_defconfig
mips                      pistachio_defconfig
arm                         orion5x_defconfig
powerpc                    mvme5100_defconfig
m68k                         amcore_defconfig
arm                       versatile_defconfig
powerpc                     akebono_defconfig
m68k                       m5249evb_defconfig
mips                        maltaup_defconfig
xtensa                  audio_kc705_defconfig
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
i386                 randconfig-a006-20210330
i386                 randconfig-a003-20210330
i386                 randconfig-a002-20210330
i386                 randconfig-a001-20210330
i386                 randconfig-a005-20210330
i386                 randconfig-a004-20210330
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
