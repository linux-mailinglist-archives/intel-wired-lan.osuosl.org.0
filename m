Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC48A18E247
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Mar 2020 16:08:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53EA9883B0;
	Sat, 21 Mar 2020 15:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vxAPinE11w0i; Sat, 21 Mar 2020 15:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C44F688454;
	Sat, 21 Mar 2020 15:07:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A72891BF616
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2020 15:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A2D18876EB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2020 15:07:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYrc71QHctlm for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Mar 2020 15:07:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B07AC876E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Mar 2020 15:07:55 +0000 (UTC)
IronPort-SDR: 8DapePWbm9ObTtrM/W0ds3Eurwr1vWiwo4ubt30nHdM7/d111fRBQXMkszIMYC/4x9+WpP+bXL
 dFAZgj7MxMcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2020 08:07:54 -0700
IronPort-SDR: WgrCJJsYaRAIE7PJQ+poi9ZM1HBhpbChDc4hueGHE1saB4fDTsWDwKdt+DPlWMaixOmQ4+DiqF
 j4XS+G0vxuiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,289,1580803200"; d="scan'208";a="249173643"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 21 Mar 2020 08:07:53 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jFfj7-000HMk-51; Sat, 21 Mar 2020 23:07:53 +0800
Date: Sat, 21 Mar 2020 23:06:58 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e762d92.Uh7AeDC4dKTRBRp9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 0a7c179da494e48df1930ff91dc8f0093b32affc
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 0a7c179da494e48df1930ff91dc8f0093b32affc  e1000e: Disable s0ix flow for X1 Carbon 7th

elapsed time: 528m

configs tested: 162
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
h8300                    h8300h-sim_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
arm64                            allmodconfig
arm                              allmodconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
i386                 randconfig-a002-20200321
x86_64               randconfig-a002-20200321
i386                 randconfig-a001-20200321
x86_64               randconfig-a001-20200321
i386                 randconfig-a003-20200321
x86_64               randconfig-a003-20200321
mips                 randconfig-a001-20200321
nds32                randconfig-a001-20200321
m68k                 randconfig-a001-20200321
parisc               randconfig-a001-20200321
alpha                randconfig-a001-20200321
riscv                randconfig-a001-20200321
h8300                randconfig-a001-20200321
microblaze           randconfig-a001-20200321
nios2                randconfig-a001-20200321
c6x                  randconfig-a001-20200321
sparc64              randconfig-a001-20200321
s390                 randconfig-a001-20200321
xtensa               randconfig-a001-20200321
csky                 randconfig-a001-20200321
openrisc             randconfig-a001-20200321
sh                   randconfig-a001-20200321
i386                 randconfig-b003-20200321
i386                 randconfig-b001-20200321
x86_64               randconfig-b003-20200321
i386                 randconfig-b002-20200321
x86_64               randconfig-b002-20200321
x86_64               randconfig-b001-20200321
x86_64               randconfig-c003-20200321
i386                 randconfig-c002-20200321
x86_64               randconfig-c001-20200321
x86_64               randconfig-c002-20200321
i386                 randconfig-c003-20200321
i386                 randconfig-c001-20200321
i386                 randconfig-d003-20200321
i386                 randconfig-d001-20200321
x86_64               randconfig-d002-20200321
i386                 randconfig-d002-20200321
x86_64               randconfig-d001-20200321
x86_64               randconfig-d003-20200321
x86_64               randconfig-e001-20200321
i386                 randconfig-e002-20200321
x86_64               randconfig-e003-20200321
i386                 randconfig-e003-20200321
x86_64               randconfig-e002-20200321
i386                 randconfig-e001-20200321
i386                 randconfig-f001-20200321
i386                 randconfig-f003-20200321
i386                 randconfig-f002-20200321
x86_64               randconfig-f002-20200321
x86_64               randconfig-f003-20200321
x86_64               randconfig-f001-20200321
i386                 randconfig-g003-20200321
x86_64               randconfig-g002-20200321
i386                 randconfig-g001-20200321
i386                 randconfig-g002-20200321
x86_64               randconfig-g001-20200321
x86_64               randconfig-g003-20200321
x86_64               randconfig-h003-20200321
i386                 randconfig-h003-20200321
x86_64               randconfig-h001-20200321
i386                 randconfig-h001-20200321
i386                 randconfig-h002-20200321
arm                  randconfig-a001-20200321
arm64                randconfig-a001-20200321
ia64                 randconfig-a001-20200321
sparc                randconfig-a001-20200321
arc                  randconfig-a001-20200321
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
