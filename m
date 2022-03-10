Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B19E94D4CCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Mar 2022 16:37:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A3BD41914;
	Thu, 10 Mar 2022 15:37:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qKHeO9bvHsif; Thu, 10 Mar 2022 15:37:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47180418FF;
	Thu, 10 Mar 2022 15:37:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDF461BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 15:37:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A823F611C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 15:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RoQtAUOZgbur for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Mar 2022 15:37:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ABE1F611A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Mar 2022 15:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646926648; x=1678462648;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DeeyXWQ010XLMkHpO2DYmw8zOzsC2CWh/QoOqThnJa8=;
 b=eKHIZt3N00dlHwQkLcKyQk/Kw+PoBMpD6RGeNmVupMYGYerHPWMeIyVP
 IvpoPfzsj4lCbhHCm1GmADkVdhDJIWwQZIWdIY6gFBYMxlgxryTvaZhYk
 XJt8aarqu1iQP5Z9nb8SEiNeLXRMAp5Z6lzvUMAUv9tlXAwNMTUFoHcZh
 PbAsr+BjEGrexU1ts7+3OTFJN+BZmFnj0WK6Os+03zv0EdUGnyxxuAO7P
 aDKjJZy/KVUH1XGe0DLYy5oOJQs2u9jv3vrr7D9/BlZ1ITXChnr94xQbX
 17V9KtfBK+xJI4LAcpokF2CR7J1sCurZFHxd/r6buOTcSNlfMD2sOS37P g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315999217"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="315999217"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 07:37:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="596697143"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by fmsmga008.fm.intel.com with ESMTP; 10 Mar 2022 07:37:26 -0800
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nSKr0-000559-74; Thu, 10 Mar 2022 15:37:26 +0000
Date: Thu, 10 Mar 2022 23:36:27 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <622a1afb.vMFr0t9DysWS7rhO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d5f9c30f862e2437e3f88c17bcf299f9b282586e
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
branch HEAD: d5f9c30f862e2437e3f88c17bcf299f9b282586e  iavf: Fix double free in iavf_reset_task

Unverified Warning (likely false positive, please contact us if interested):

net/ipv6/addrconf.c:4316 if6_get_next() warn: ignoring unreachable code.

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-m021
|   `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.
`-- x86_64-randconfig-m001
    `-- net-ipv6-addrconf.c-if6_get_next()-warn:ignoring-unreachable-code.

elapsed time: 727m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220310
sh                 kfr2r09-romimage_defconfig
alpha                            alldefconfig
m68k                          atari_defconfig
ia64                      gensparse_defconfig
powerpc                      makalu_defconfig
powerpc                    sam440ep_defconfig
arm                     eseries_pxa_defconfig
h8300                       h8s-sim_defconfig
mips                 decstation_r4k_defconfig
mips                            gpr_defconfig
sh                     magicpanelr2_defconfig
xtensa                    xip_kc705_defconfig
m68k                                defconfig
h8300                               defconfig
riscv                            allmodconfig
ia64                         bigsur_defconfig
arm                        oxnas_v6_defconfig
powerpc                        warp_defconfig
csky                                defconfig
arm                  randconfig-c002-20220310
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
alpha                            allyesconfig
alpha                               defconfig
nds32                               defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
h8300                            allyesconfig
parisc                              defconfig
s390                                defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
sparc                            allyesconfig
sparc                               defconfig
i386                             allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a016
arc                  randconfig-r043-20220310
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                          ixp4xx_defconfig
arm                        vexpress_defconfig
mips                        maltaup_defconfig
arm                         socfpga_defconfig
arm                          imote2_defconfig
mips                     loongson2k_defconfig
arm                         shannon_defconfig
powerpc                     kmeter1_defconfig
powerpc                        fsp2_defconfig
mips                        qi_lb60_defconfig
arm                      tct_hammer_defconfig
powerpc                     mpc5200_defconfig
powerpc               mpc834x_itxgp_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220310
hexagon              randconfig-r041-20220310
riscv                randconfig-r042-20220310
s390                 randconfig-r044-20220310
x86_64                        randconfig-a001

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
