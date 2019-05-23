Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA7B28B7D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2019 22:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C881386CB8;
	Thu, 23 May 2019 20:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OGeIww27wV8p; Thu, 23 May 2019 20:29:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85F4386CE4;
	Thu, 23 May 2019 20:29:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E50BA1BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 20:29:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1249870FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 20:29:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oWREVJHAQCuk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2019 20:29:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 20965870B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2019 20:29:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 13:29:31 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 23 May 2019 13:29:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hTuLB-000IzQ-JN; Fri, 24 May 2019 04:29:29 +0800
Date: Fri, 24 May 2019 04:28:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ce7026d.AidkB3pAOrbRBrxO%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 09c61f7bc823365b92485114f4d0630491fb21b4
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
branch HEAD: 09c61f7bc823365b92485114f4d0630491fb21b4  iavf: allow null RX descriptors

elapsed time: 180m

configs tested: 154

The following configs have been built successfully.
More configs may be tested in the coming days.

m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
riscv                              tinyconfig
i386                               tinyconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
x86_64                           allmodconfig
i386                             alldefconfig
openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
nds32                             allnoconfig
nds32                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
i386                   randconfig-m2-05231733
x86_64                 randconfig-m1-05231733
x86_64                 randconfig-m0-05231733
x86_64                 randconfig-m3-05231733
i386                   randconfig-m3-05231733
i386                   randconfig-m0-05231733
x86_64                 randconfig-m2-05231733
i386                   randconfig-m1-05231733
riscv                             allnoconfig
riscv                               defconfig
i386                   randconfig-l2-05231733
i386                   randconfig-l1-05231733
x86_64                 randconfig-l1-05231733
i386                   randconfig-l0-05231733
i386                   randconfig-l3-05231733
x86_64                 randconfig-l2-05231733
x86_64                 randconfig-l3-05231733
x86_64                 randconfig-l0-05231733
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
s390                             allmodconfig
x86_64                           allyesconfig
i386                             allmodconfig
arm                              allmodconfig
arm                               allnoconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
i386                                defconfig
i386                              allnoconfig
x86_64                 randconfig-x006-201920
x86_64                 randconfig-x003-201920
x86_64                 randconfig-x001-201920
x86_64                 randconfig-x007-201920
x86_64                 randconfig-x004-201920
x86_64                 randconfig-x005-201920
x86_64                 randconfig-x009-201920
x86_64                 randconfig-x002-201920
x86_64                 randconfig-x008-201920
x86_64                 randconfig-x000-201920
x86_64                              fedora-25
x86_64                                  kexec
x86_64               randconfig-x011-05232035
x86_64               randconfig-x013-05232035
x86_64               randconfig-x012-05232035
x86_64               randconfig-x015-05232035
x86_64               randconfig-x010-05232035
x86_64               randconfig-x018-05232035
x86_64               randconfig-x014-05232035
x86_64               randconfig-x016-05232035
x86_64               randconfig-x019-05232035
x86_64               randconfig-x017-05232035
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
i386                 randconfig-x017-05232030
i386                 randconfig-x014-05232030
i386                 randconfig-x015-05232030
i386                 randconfig-x018-05232030
i386                 randconfig-x016-05232030
i386                 randconfig-x019-05232030
i386                 randconfig-x013-05232030
i386                 randconfig-x011-05232030
i386                 randconfig-x010-05232030
i386                 randconfig-x012-05232030
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64               randconfig-x000-05232029
x86_64               randconfig-x001-05232029
x86_64               randconfig-x002-05232029
x86_64               randconfig-x003-05232029
x86_64               randconfig-x004-05232029
x86_64               randconfig-x005-05232029
x86_64               randconfig-x006-05232029
x86_64               randconfig-x007-05232029
x86_64               randconfig-x008-05232029
x86_64               randconfig-x009-05232029
i386                   randconfig-x009-201920
i386                   randconfig-x008-201920
i386                   randconfig-x006-201920
i386                   randconfig-x004-201920
i386                   randconfig-x005-201920
i386                   randconfig-x001-201920
i386                   randconfig-x000-201920
i386                   randconfig-x007-201920
i386                   randconfig-x003-201920
i386                   randconfig-x002-201920
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
i386                   randconfig-x070-201920
i386                   randconfig-x071-201920
i386                   randconfig-x072-201920
i386                   randconfig-x073-201920
i386                   randconfig-x074-201920
i386                   randconfig-x075-201920
i386                   randconfig-x076-201920
i386                   randconfig-x077-201920
i386                   randconfig-x078-201920
i386                   randconfig-x079-201920
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
