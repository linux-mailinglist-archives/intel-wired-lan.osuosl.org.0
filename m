Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D425F2C98AC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 08:50:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68681874F5;
	Tue,  1 Dec 2020 07:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HGWyHpnY57wi; Tue,  1 Dec 2020 07:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1CFA874FF;
	Tue,  1 Dec 2020 07:50:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B64EC1BF336
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 07:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AF21F88179
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 07:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RaBRyxH05erf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 07:50:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A797D880D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 07:50:25 +0000 (UTC)
IronPort-SDR: 5qid0Cr5WsHFkYp82+Sbcvq03gF79rWgXEL6rQFi71glF1jP6GoKt6iwEiWRU0YZ2tSslpXqS5
 /4ePCBnMQJIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190978223"
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; d="scan'208";a="190978223"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 23:50:25 -0800
IronPort-SDR: psFCWI3caZjyeS88sXQY9p33Ltem+vTkDPWKoL8ZzXodyLQGyM/NYIgmsweDj+aOPby+4CQlpD
 zRK6F9fOSjYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; d="scan'208";a="367433149"
Received: from lkp-server01.sh.intel.com (HELO 70b44b587200) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2020 23:50:24 -0800
Received: from kbuild by 70b44b587200 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kk0QZ-0000BL-K7; Tue, 01 Dec 2020 07:50:23 +0000
Date: Tue, 01 Dec 2020 15:49:29 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fc5f589./X7mQiJnxCytgsJ9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 91c03970feaacc96d992da2d409446dd9f1952dd
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
branch HEAD: 91c03970feaacc96d992da2d409446dd9f1952dd  i40e: acquire VSI pointer only after VF is initialized

elapsed time: 725m

configs tested: 140
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
h8300                     edosk2674_defconfig
sh                          rsk7203_defconfig
arm                       imx_v6_v7_defconfig
arc                            hsdk_defconfig
ia64                            zx1_defconfig
sh                              ul2_defconfig
powerpc                    sam440ep_defconfig
nds32                            alldefconfig
arm                            qcom_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                           xway_defconfig
arm                           sama5_defconfig
arm                       aspeed_g5_defconfig
sh                             espt_defconfig
sh                        edosk7705_defconfig
arm                      jornada720_defconfig
s390                       zfcpdump_defconfig
mips                           gcw0_defconfig
arm                      pxa255-idp_defconfig
arm                        multi_v7_defconfig
mips                         tb0287_defconfig
arm                        mvebu_v7_defconfig
powerpc                 canyonlands_defconfig
mips                            gpr_defconfig
arc                        nsimosci_defconfig
arm                        clps711x_defconfig
arm                           corgi_defconfig
sh                          r7785rp_defconfig
mips                        workpad_defconfig
arm                          gemini_defconfig
mips                     cu1000-neo_defconfig
ia64                        generic_defconfig
powerpc                     kilauea_defconfig
powerpc                    adder875_defconfig
sh                               j2_defconfig
sh                   secureedge5410_defconfig
powerpc                      katmai_defconfig
arc                           tb10x_defconfig
powerpc                     mpc5200_defconfig
nios2                         10m50_defconfig
um                           x86_64_defconfig
powerpc                     skiroot_defconfig
powerpc                 mpc836x_mds_defconfig
xtensa                           allyesconfig
powerpc                        fsp2_defconfig
mips                       capcella_defconfig
powerpc                      ppc44x_defconfig
arm                          imote2_defconfig
h8300                       h8s-sim_defconfig
powerpc                   bluestone_defconfig
powerpc                   lite5200b_defconfig
m68k                        m5272c3_defconfig
powerpc                       ebony_defconfig
powerpc               mpc834x_itxgp_defconfig
mips                      malta_kvm_defconfig
arm                       netwinder_defconfig
powerpc                     tqm8555_defconfig
mips                        nlm_xlp_defconfig
mips                     cu1830-neo_defconfig
c6x                        evmc6678_defconfig
powerpc                      walnut_defconfig
mips                      loongson3_defconfig
arm                              zx_defconfig
arm                        realview_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     kmeter1_defconfig
mips                      maltasmvp_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
i386                 randconfig-a004-20201130
i386                 randconfig-a002-20201130
i386                 randconfig-a003-20201130
i386                 randconfig-a005-20201130
i386                 randconfig-a006-20201130
i386                 randconfig-a001-20201130
x86_64               randconfig-a014-20201130
x86_64               randconfig-a015-20201130
x86_64               randconfig-a016-20201130
x86_64               randconfig-a011-20201130
x86_64               randconfig-a012-20201130
x86_64               randconfig-a013-20201130
i386                 randconfig-a013-20201130
i386                 randconfig-a012-20201130
i386                 randconfig-a011-20201130
i386                 randconfig-a016-20201130
i386                 randconfig-a015-20201130
i386                 randconfig-a014-20201130
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a002-20201130
x86_64               randconfig-a006-20201130
x86_64               randconfig-a005-20201130
x86_64               randconfig-a004-20201130
x86_64               randconfig-a001-20201130
x86_64               randconfig-a003-20201130

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
