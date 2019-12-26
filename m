Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5045B12AEC0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Dec 2019 22:13:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02AA386CD3;
	Thu, 26 Dec 2019 21:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sfMC8XaZQC+9; Thu, 26 Dec 2019 21:13:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E5FD86D92;
	Thu, 26 Dec 2019 21:13:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 967E71BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2019 21:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92A4E851AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2019 21:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxi8pJBXA0u1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Dec 2019 21:13:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 86C3185193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Dec 2019 21:13:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 13:13:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,360,1571727600"; d="scan'208";a="215038698"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 Dec 2019 13:13:24 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ikaRg-000GOg-7X; Fri, 27 Dec 2019 05:13:24 +0800
Date: Fri, 27 Dec 2019 05:12:38 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5e052246.k34Z+deUmFxINvfY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 32b012f30a39b27e0b8fc215fb8b527644b2eb22
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
branch HEAD: 32b012f30a39b27e0b8fc215fb8b527644b2eb22  ice: remove redundant assignment to variable xmit_done

elapsed time: 284m

configs tested: 147

The following configs have been built successfully.
More configs may be tested in the coming days.

arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                 randconfig-d003-20191225
x86_64               randconfig-d001-20191225
x86_64               randconfig-d002-20191225
i386                 randconfig-d002-20191225
i386                 randconfig-d001-20191225
x86_64               randconfig-d003-20191225
x86_64               randconfig-a002-20191225
x86_64               randconfig-a001-20191225
x86_64               randconfig-a003-20191225
i386                 randconfig-a001-20191225
i386                 randconfig-a003-20191225
i386                 randconfig-a002-20191225
i386                 randconfig-e002-20191225
x86_64               randconfig-e001-20191225
x86_64               randconfig-e002-20191225
i386                 randconfig-e003-20191225
i386                 randconfig-e001-20191225
x86_64               randconfig-e003-20191225
mips                 randconfig-a001-20191226
m68k                 randconfig-a001-20191226
riscv                randconfig-a001-20191226
nds32                randconfig-a001-20191226
parisc               randconfig-a001-20191226
alpha                randconfig-a001-20191226
alpha                               defconfig
csky                                defconfig
nds32                             allnoconfig
nds32                               defconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
ia64                             alldefconfig
x86_64               randconfig-f003-20191225
i386                 randconfig-f001-20191225
i386                 randconfig-f003-20191225
i386                 randconfig-f002-20191225
x86_64               randconfig-f001-20191225
x86_64               randconfig-f002-20191225
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
arm                              allmodconfig
arm64                            allmodconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64               randconfig-c001-20191226
x86_64               randconfig-c002-20191226
x86_64               randconfig-c003-20191226
i386                 randconfig-c001-20191226
i386                 randconfig-c002-20191226
i386                 randconfig-c003-20191226
i386                              allnoconfig
i386                                defconfig
i386                             allyesconfig
i386                             alldefconfig
arc                  randconfig-a001-20191226
arm                  randconfig-a001-20191226
arm64                randconfig-a001-20191226
ia64                 randconfig-a001-20191226
powerpc              randconfig-a001-20191226
sparc                randconfig-a001-20191226
i386                 randconfig-h002-20191226
i386                 randconfig-h003-20191226
x86_64               randconfig-h001-20191226
x86_64               randconfig-h003-20191226
i386                 randconfig-h001-20191226
x86_64               randconfig-h002-20191226
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
sparc64              randconfig-a001-20191226
microblaze           randconfig-a001-20191226
nios2                randconfig-a001-20191226
c6x                  randconfig-a001-20191226
h8300                randconfig-a001-20191226
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
sparc64                          allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
parisc                            allnoconfig
parisc                            allyesonfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
