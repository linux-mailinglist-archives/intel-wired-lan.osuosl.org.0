Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3622A26C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 May 2019 04:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 842CE3195B;
	Sat, 25 May 2019 02:54:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MFcHGWITlbhT; Sat, 25 May 2019 02:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F48D3195F;
	Sat, 25 May 2019 02:54:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C64C1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 May 2019 02:54:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6831288C6A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 May 2019 02:54:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F76wLQWHHNI5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 May 2019 02:54:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85AC588C64
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 May 2019 02:54:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 19:54:44 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 24 May 2019 19:54:43 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hUMpX-0009nr-3Q; Sat, 25 May 2019 10:54:43 +0800
Date: Sat, 25 May 2019 10:54:17 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ce8ae59.JGvmg9ZvCb0s6kHE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 c60f8c790e68f19e2ee2d65e8961eeb1f0818c70
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
branch HEAD: c60f8c790e68f19e2ee2d65e8961eeb1f0818c70  i40e: Do not check VF state in i40e_ndo_get_vf_config

elapsed time: 113m

configs tested: 167

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm64                            allmodconfig
x86_64                 randconfig-k0-05231733
x86_64                 randconfig-k1-05231733
x86_64                 randconfig-k2-05231733
x86_64                 randconfig-k3-05231733
i386                   randconfig-k0-05231733
i386                   randconfig-k1-05231733
i386                   randconfig-k2-05231733
i386                   randconfig-k3-05231733
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
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                          debug_defconfig
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
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                    lkp
x86_64                                nfsroot
x86_64                                   rhel
x86_64                               rhel-7.6
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
x86_64                 randconfig-m0-05231733
x86_64                 randconfig-m1-05231733
x86_64                 randconfig-m2-05231733
x86_64                 randconfig-m3-05231733
i386                   randconfig-m0-05231733
i386                   randconfig-m1-05231733
i386                   randconfig-m2-05231733
i386                   randconfig-m3-05231733
riscv                             allnoconfig
riscv                               defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
x86_64                 randconfig-l0-05241656
x86_64                 randconfig-l1-05241656
x86_64                 randconfig-l2-05241656
x86_64                 randconfig-l3-05241656
i386                   randconfig-l0-05241656
i386                   randconfig-l1-05241656
i386                   randconfig-l2-05241656
i386                   randconfig-l3-05241656
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
sh                               allyesconfig
i386                             allmodconfig
i386                                defconfig
x86_64                 randconfig-h0-05250801
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
x86_64                 randconfig-g0-05231808
x86_64                 randconfig-g1-05231808
x86_64                 randconfig-g2-05231808
x86_64                 randconfig-g3-05231808
i386                              allnoconfig
i386                             alldefconfig
x86_64                           allmodconfig
x86_64                           allyesconfig
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
x86_64                 randconfig-x019-201920
x86_64                 randconfig-x015-201920
x86_64                 randconfig-x010-201920
x86_64                 randconfig-x012-201920
x86_64                 randconfig-x014-201920
x86_64                 randconfig-x017-201920
x86_64                 randconfig-x016-201920
x86_64                 randconfig-x018-201920
x86_64                 randconfig-x011-201920
x86_64                 randconfig-x013-201920
riscv                              tinyconfig
i386                               tinyconfig
riscv                            allmodconfig
i386                   randconfig-x011-201920
i386                   randconfig-x013-201920
i386                   randconfig-x018-201920
i386                   randconfig-x012-201920
i386                   randconfig-x016-201920
i386                   randconfig-x017-201920
i386                   randconfig-x010-201920
i386                   randconfig-x014-201920
i386                   randconfig-x015-201920
i386                   randconfig-x019-201920
x86_64                              fedora-25
x86_64                                  kexec
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
i386                   randconfig-n0-05232030
i386                   randconfig-n1-05232030
i386                   randconfig-n2-05232030
i386                   randconfig-n3-05232030
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
i386                   randconfig-i0-05232029
i386                   randconfig-i1-05232029
i386                   randconfig-i2-05232029
i386                   randconfig-i3-05232029
i386                   randconfig-x073-201920
i386                   randconfig-x071-201920
i386                   randconfig-x070-201920
i386                   randconfig-x074-201920
i386                   randconfig-x078-201920
i386                   randconfig-x075-201920
i386                   randconfig-x072-201920
i386                   randconfig-x076-201920
i386                   randconfig-x077-201920
i386                   randconfig-x079-201920

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
