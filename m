Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 82600ECF4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Apr 2019 00:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0659E85AE9;
	Mon, 29 Apr 2019 22:52:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5O0YvLiZNvNZ; Mon, 29 Apr 2019 22:52:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C600785D2B;
	Mon, 29 Apr 2019 22:52:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 31FAC1BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 22:52:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2DFA1816F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 22:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l8Rajne4BwPn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2019 22:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 63EBC816CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2019 22:52:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 15:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,411,1549958400"; d="scan'208";a="135478176"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 29 Apr 2019 15:52:23 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hLF8J-0006jC-2F; Tue, 30 Apr 2019 06:52:23 +0800
Date: Tue, 30 Apr 2019 06:51:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cc77ff4.To6cSqOsj0DcQBX0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 a5f8a9c98960a59e350475d3d6d15df9b6f837f1
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
branch HEAD: a5f8a9c98960a59e350475d3d6d15df9b6f837f1  i40e: Use signed variable

elapsed time: 321m

configs tested: 195

The following configs have been built successfully.
More configs may be tested in the coming days.

openrisc                    or1ksim_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                     randconfig-n0-201917
i386                     randconfig-n1-201917
i386                     randconfig-n2-201917
i386                     randconfig-n3-201917
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
i386                     randconfig-i1-201917
i386                     randconfig-i0-201917
i386                     randconfig-i3-201917
i386                     randconfig-i2-201917
arm                              allmodconfig
arm64                            allmodconfig
x86_64                   randconfig-k0-201917
x86_64                   randconfig-k1-201917
x86_64                   randconfig-k2-201917
x86_64                   randconfig-k3-201917
i386                     randconfig-k0-201917
i386                     randconfig-k1-201917
i386                     randconfig-k2-201917
i386                     randconfig-k3-201917
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
riscv                              tinyconfig
i386                               tinyconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
nds32                             allnoconfig
nds32                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                   randconfig-m0-201917
x86_64                   randconfig-m1-201917
x86_64                   randconfig-m2-201917
x86_64                   randconfig-m3-201917
i386                     randconfig-m0-201917
i386                     randconfig-m1-201917
i386                     randconfig-m2-201917
i386                     randconfig-m3-201917
riscv                             allnoconfig
riscv                               defconfig
x86_64                 randconfig-l0-04290834
x86_64                 randconfig-l1-04290834
x86_64                 randconfig-l2-04290834
x86_64                 randconfig-l3-04290834
i386                   randconfig-l0-04290834
i386                   randconfig-l1-04290834
i386                   randconfig-l2-04290834
i386                   randconfig-l3-04290834
x86_64                 randconfig-l0-04291943
x86_64                 randconfig-l1-04291943
x86_64                 randconfig-l2-04291943
x86_64                 randconfig-l3-04291943
i386                   randconfig-l0-04291943
i386                   randconfig-l1-04291943
i386                   randconfig-l2-04291943
i386                   randconfig-l3-04291943
x86_64                 randconfig-j0-04290140
x86_64                 randconfig-j1-04290140
x86_64                 randconfig-j2-04290140
x86_64                 randconfig-j3-04290140
i386                   randconfig-j0-04290140
i386                   randconfig-j1-04290140
i386                   randconfig-j2-04290140
i386                   randconfig-j3-04290140
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
i386                              allnoconfig
mips                             allmodconfig
x86_64                           allyesconfig
i386                             allmodconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                 randconfig-i0-04281410
x86_64                 randconfig-i1-04281410
x86_64                 randconfig-i2-04281410
x86_64                 randconfig-i3-04281410
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
x86_64                 randconfig-h0-04281410
x86_64                 randconfig-h1-04281410
x86_64                 randconfig-h2-04281410
x86_64                 randconfig-h3-04281410
um                             i386_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                   randconfig-g0-201917
x86_64                   randconfig-g1-201917
x86_64                   randconfig-g2-201917
x86_64                   randconfig-g3-201917
x86_64                           allmodconfig
i386                             alldefconfig
arm                         at91_dt_defconfig
ia64                             allyesconfig
i386                                defconfig
x86_64                 randconfig-f0-04290026
x86_64                 randconfig-f1-04290026
x86_64                 randconfig-f2-04290026
x86_64                 randconfig-f3-04290026
i386                   randconfig-f0-04290026
i386                   randconfig-f1-04290026
i386                   randconfig-f2-04290026
i386                   randconfig-f3-04290026
i386                   randconfig-x010-201917
i386                   randconfig-x018-201917
i386                   randconfig-x017-201917
i386                   randconfig-x013-201917
i386                   randconfig-x011-201917
i386                   randconfig-x014-201917
i386                   randconfig-x019-201917
i386                   randconfig-x015-201917
i386                   randconfig-x016-201917
i386                   randconfig-x012-201917
x86_64                 randconfig-x004-201917
x86_64                 randconfig-x001-201917
x86_64                 randconfig-x000-201917
x86_64                 randconfig-x003-201917
x86_64                 randconfig-x007-201917
x86_64                 randconfig-x008-201917
x86_64                 randconfig-x002-201917
x86_64                 randconfig-x006-201917
x86_64                 randconfig-x009-201917
x86_64                 randconfig-x005-201917
x86_64                   randconfig-e0-201917
x86_64                   randconfig-e1-201917
x86_64                   randconfig-e2-201917
x86_64                   randconfig-e3-201917
i386                   randconfig-x002-201917
i386                   randconfig-x001-201917
i386                   randconfig-x005-201917
i386                   randconfig-x007-201917
i386                   randconfig-x000-201917
i386                   randconfig-x004-201917
i386                   randconfig-x008-201917
i386                   randconfig-x009-201917
i386                   randconfig-x006-201917
i386                   randconfig-x003-201917
x86_64                 randconfig-x015-201917
x86_64                 randconfig-x016-201917
x86_64                 randconfig-x017-201917
x86_64                 randconfig-x012-201917
x86_64                 randconfig-x013-201917
x86_64                 randconfig-x018-201917
x86_64                 randconfig-x010-201917
x86_64                 randconfig-x014-201917
x86_64                 randconfig-x019-201917
x86_64                 randconfig-x011-201917
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
i386                     randconfig-a0-201917
i386                     randconfig-a1-201917
i386                     randconfig-a2-201917
i386                     randconfig-a3-201917
um                           x86_64_defconfig
i386                   randconfig-x077-201917
i386                   randconfig-x074-201917
i386                   randconfig-x070-201917
i386                   randconfig-x072-201917
i386                   randconfig-x075-201917
i386                   randconfig-x071-201917
i386                   randconfig-x079-201917
i386                   randconfig-x078-201917
i386                   randconfig-x073-201917
i386                   randconfig-x076-201917

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
