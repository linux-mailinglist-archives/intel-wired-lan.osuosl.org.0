Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5FA1FE00
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2019 05:21:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F308B85F87;
	Thu, 16 May 2019 03:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yrBsDua795WY; Thu, 16 May 2019 03:21:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC1A7865A9;
	Thu, 16 May 2019 03:21:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8795D1BF999
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 03:21:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 841F885F87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 03:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ktzbihjVxIkB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2019 03:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA9A085F43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2019 03:21:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 20:21:23 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2019 20:21:22 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hR6xN-000J4l-Rz; Thu, 16 May 2019 11:21:21 +0800
Date: Thu, 16 May 2019 11:20:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cdcd6fd.ij0TLvmUBnjlyPMk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 e84bb5bc8dba4f77c50509dc3d1ca9feb8cf4c2f
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
branch HEAD: e84bb5bc8dba4f77c50509dc3d1ca9feb8cf4c2f  iavf: Fix the math for valid length for ADq enable

elapsed time: 316m

configs tested: 182

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm64                            allmodconfig
x86_64                 randconfig-k0-05131404
x86_64                 randconfig-k1-05131404
x86_64                 randconfig-k2-05131404
x86_64                 randconfig-k3-05131404
i386                   randconfig-k0-05131404
i386                   randconfig-k1-05131404
i386                   randconfig-k2-05131404
i386                   randconfig-k3-05131404
arm                               allnoconfig
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
openrisc                    or1ksim_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
nds32                             allnoconfig
nds32                               defconfig
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                     randconfig-m3-201919
x86_64                   randconfig-m2-201919
i386                     randconfig-m0-201919
x86_64                   randconfig-m1-201919
i386                     randconfig-m2-201919
i386                     randconfig-m1-201919
x86_64                   randconfig-m3-201919
x86_64                   randconfig-m0-201919
riscv                             allnoconfig
riscv                               defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-l0-05152308
x86_64                 randconfig-l1-05152308
x86_64                 randconfig-l2-05152308
x86_64                 randconfig-l3-05152308
i386                   randconfig-l0-05152308
i386                   randconfig-l1-05152308
i386                   randconfig-l2-05152308
i386                   randconfig-l3-05152308
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
x86_64                           allmodconfig
i386                             alldefconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                   randconfig-i0-201919
x86_64                   randconfig-i1-201919
x86_64                   randconfig-i2-201919
x86_64                   randconfig-i3-201919
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                   randconfig-h0-201919
x86_64                   randconfig-h1-201919
x86_64                   randconfig-h2-201919
x86_64                   randconfig-h3-201919
x86_64                 randconfig-h0-05160907
x86_64                   randconfig-g0-201919
x86_64                   randconfig-g1-201919
x86_64                   randconfig-g2-201919
x86_64                   randconfig-g3-201919
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
nds32                            allmodconfig
i386                   randconfig-x070-201919
i386                   randconfig-x071-201919
i386                   randconfig-x072-201919
i386                   randconfig-x073-201919
i386                   randconfig-x074-201919
i386                   randconfig-x075-201919
i386                   randconfig-x076-201919
i386                   randconfig-x077-201919
i386                   randconfig-x078-201919
i386                   randconfig-x079-201919
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                   randconfig-e0-201919
x86_64                   randconfig-e1-201919
x86_64                   randconfig-e2-201919
x86_64                   randconfig-e3-201919
i386                   randconfig-x005-201919
i386                   randconfig-x001-201919
i386                   randconfig-x002-201919
i386                   randconfig-x007-201919
i386                   randconfig-x008-201919
i386                   randconfig-x004-201919
i386                   randconfig-x000-201919
i386                   randconfig-x003-201919
i386                   randconfig-x006-201919
i386                   randconfig-x009-201919
x86_64                 randconfig-x016-201919
x86_64                 randconfig-x015-201919
x86_64                 randconfig-x018-201919
x86_64                 randconfig-x013-201919
x86_64                 randconfig-x012-201919
x86_64                 randconfig-x017-201919
x86_64                 randconfig-x014-201919
x86_64                 randconfig-x010-201919
x86_64                 randconfig-x011-201919
x86_64                 randconfig-x019-201919
i386                     randconfig-a0-201919
i386                     randconfig-a1-201919
i386                     randconfig-a2-201919
i386                     randconfig-a3-201919
mips                             allmodconfig
mips                      fuloong2e_defconfig
i386                   randconfig-x018-201919
i386                   randconfig-x010-201919
i386                   randconfig-x013-201919
i386                   randconfig-x017-201919
i386                   randconfig-x014-201919
i386                   randconfig-x011-201919
i386                   randconfig-x012-201919
i386                   randconfig-x016-201919
i386                   randconfig-x015-201919
i386                   randconfig-x019-201919
i386                     randconfig-n0-201919
i386                     randconfig-n1-201919
i386                     randconfig-n2-201919
i386                     randconfig-n3-201919
x86_64                 randconfig-x000-201919
x86_64                 randconfig-x001-201919
x86_64                 randconfig-x004-201919
x86_64                 randconfig-x007-201919
x86_64                 randconfig-x008-201919
x86_64                 randconfig-x003-201919
x86_64                 randconfig-x002-201919
x86_64                 randconfig-x005-201919
x86_64                 randconfig-x009-201919
x86_64                 randconfig-x006-201919
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
i386                     randconfig-i0-201919
i386                     randconfig-i1-201919
i386                     randconfig-i2-201919
i386                     randconfig-i3-201919
i386                              allnoconfig
i386                                defconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
