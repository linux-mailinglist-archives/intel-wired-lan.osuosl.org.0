Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB11136FA11
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Apr 2021 14:22:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BD27402BA;
	Fri, 30 Apr 2021 12:22:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 77Hmw7YER4q8; Fri, 30 Apr 2021 12:22:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CCEB4022A;
	Fri, 30 Apr 2021 12:22:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97B841BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 861BF83EDB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L_sf7ijvb3yC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Apr 2021 12:22:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7295783E5C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:22:22 +0000 (UTC)
IronPort-SDR: YYTa8oZN8uDhnKd4MOXq4mSxVhwbXoqroVrrNfBn1oPf/SHRtwJXHhOS3/EVqAqoLMskRVQS1x
 EdwNVXlhGBpQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="184735368"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="184735368"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:22:21 -0700
IronPort-SDR: exOnBq2e1BSMBkU5trFxaP8b5t1ub7T8SbHzQcVGqMYUAin+gQ5Kpu34HW7ghZB7OuYLTyAenm
 JQulIK1nA1uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="404580001"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 30 Apr 2021 05:22:20 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcS9z-000897-Ss; Fri, 30 Apr 2021 12:22:19 +0000
Date: Fri, 30 Apr 2021 20:22:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <608bf670.JvUYKCiHFosrr7Zz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS WITH
 WARNING 94aa53f0c7a1a823b7f579e3f9f1cb5d12dabce5
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
branch HEAD: 94aa53f0c7a1a823b7f579e3f9f1cb5d12dabce5  ice: track AF_XDP ZC enabled queues in bitmap

Warning in current branch:

drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c:654:14: warning: variable 'reg_c1' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm64-defconfig
    `-- drivers-net-ethernet-mellanox-mlx5-core-en-rep-tc.c:warning:variable-reg_c1-set-but-not-used

elapsed time: 724m

configs tested: 113
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                 mpc836x_rdk_defconfig
xtensa                    xip_kc705_defconfig
m68k                       m5208evb_defconfig
powerpc                 linkstation_defconfig
arm                       aspeed_g5_defconfig
um                                allnoconfig
ia64                                defconfig
arm                             mxs_defconfig
arm                      pxa255-idp_defconfig
sh                        edosk7705_defconfig
s390                          debug_defconfig
sh                          polaris_defconfig
sh                          sdk7786_defconfig
m68k                         amcore_defconfig
sh                   rts7751r2dplus_defconfig
mips                         rt305x_defconfig
powerpc                   motionpro_defconfig
arm                     eseries_pxa_defconfig
sh                           se7619_defconfig
arm                          collie_defconfig
arm                       omap2plus_defconfig
sh                   sh7724_generic_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                        maltaup_defconfig
mips                        qi_lb60_defconfig
arm                           sunxi_defconfig
powerpc                  mpc885_ads_defconfig
openrisc                         alldefconfig
arc                     haps_hs_smp_defconfig
arm                         at91_dt_defconfig
arm                        vexpress_defconfig
m68k                            q40_defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
openrisc                 simple_smp_defconfig
powerpc                     ppa8548_defconfig
arc                          axs103_defconfig
ia64                             allmodconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20210429
x86_64               randconfig-a002-20210429
x86_64               randconfig-a005-20210429
x86_64               randconfig-a006-20210429
x86_64               randconfig-a001-20210429
x86_64               randconfig-a003-20210429
i386                 randconfig-a005-20210429
i386                 randconfig-a002-20210429
i386                 randconfig-a001-20210429
i386                 randconfig-a006-20210429
i386                 randconfig-a003-20210429
i386                 randconfig-a004-20210429
i386                 randconfig-a012-20210429
i386                 randconfig-a014-20210429
i386                 randconfig-a013-20210429
i386                 randconfig-a011-20210429
i386                 randconfig-a015-20210429
i386                 randconfig-a016-20210429
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210429
x86_64               randconfig-a016-20210429
x86_64               randconfig-a011-20210429
x86_64               randconfig-a014-20210429
x86_64               randconfig-a013-20210429
x86_64               randconfig-a012-20210429

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
