Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAE81287E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 May 2019 09:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C24F87812;
	Fri,  3 May 2019 07:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zo7cG0GKy7AJ; Fri,  3 May 2019 07:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F30F87356;
	Fri,  3 May 2019 07:12:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 631001BF3DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 07:12:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 596018456F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 07:12:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AfuaYLHkOPTL for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 May 2019 07:12:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 598C184559
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 May 2019 07:12:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 00:12:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,424,1549958400"; d="scan'208";a="167163708"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2019 00:12:40 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMSN6-00074w-2k; Fri, 03 May 2019 15:12:40 +0800
Date: Fri, 03 May 2019 15:12:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ccbe9db.eWQLs9EkxtN3DMxQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 473dc813095a0240788a5bfb5871507f800838ad
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
branch HEAD: 473dc813095a0240788a5bfb5871507f800838ad  i40e: Missing response checks in driver when starting/stopping FW LLDP

Regressions in current branch:

drivers/net/ethernet/aquantia/atlantic/aq_main.c:26:12: sparse: sparse: symbol 'aq_ndev_driver_name' was not declared. Should it be static?
drivers/net/ethernet/intel/i40e/i40e_main.c:14849:2-8: ERROR: missing iounmap; ioremap on line 14707 and execution via conditional on line 14848
drivers/net/ethernet/intel/iavf/iavf_adminq.c:554:18-26: Unneeded variable: "ret_code". Return "0" on line 562

Error ids grouped by kconfigs:

TIMEOUT after 608m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 57

alpha                            allmodconfig
alpha                            allyesconfig
i386                            randconfig-f0
i386                            randconfig-f1
i386                            randconfig-f2
i386                            randconfig-f3
i386                            randconfig-j0
i386                            randconfig-j1
i386                            randconfig-j2
i386                            randconfig-j3
i386                            randconfig-n0
i386                            randconfig-n1
i386                            randconfig-n2
i386                            randconfig-n3
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
mips                             allyesconfig
nds32                            allmodconfig
nds32                            allyesconfig
parisc                           allmodconfig
parisc                           allyesconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
s390                             allmodconfig
s390                             allyesconfig
sh                               allyesconfig
sparc                            allmodconfig
sparc                            allyesconfig
sparc64                          allyesconfig
x86_64                          randconfig-e0
x86_64                          randconfig-e1
x86_64                          randconfig-e2
x86_64                          randconfig-e3
x86_64                          randconfig-f0
x86_64                          randconfig-f1
x86_64                          randconfig-f2
x86_64                          randconfig-f3
x86_64                          randconfig-h0
x86_64                          randconfig-h1
x86_64                          randconfig-h2
x86_64                          randconfig-h3
x86_64                          randconfig-i0
x86_64                          randconfig-i1
x86_64                          randconfig-i2
x86_64                          randconfig-i3
x86_64                          randconfig-j0
x86_64                          randconfig-j1
x86_64                          randconfig-j2
x86_64                          randconfig-j3
xtensa                           allmodconfig
xtensa                           allyesconfig

configs tested: 161

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
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
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
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
s390                        default_defconfig
i386                     randconfig-i1-201917
i386                     randconfig-i0-201917
i386                     randconfig-i3-201917
i386                     randconfig-i2-201917
x86_64                   randconfig-k2-201917
i386                     randconfig-k2-201917
i386                     randconfig-k3-201917
i386                     randconfig-k0-201917
x86_64                   randconfig-k1-201917
x86_64                   randconfig-k3-201917
i386                     randconfig-k1-201917
x86_64                   randconfig-k0-201917
x86_64                                    lkp
x86_64                                   rhel
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
sh                               allmodconfig
sh                            titan_defconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
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
x86_64                                nfsroot
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
x86_64                   randconfig-m2-201917
i386                     randconfig-m0-201917
i386                     randconfig-m3-201917
i386                     randconfig-m2-201917
x86_64                   randconfig-m1-201917
x86_64                   randconfig-m0-201917
x86_64                   randconfig-m3-201917
i386                     randconfig-m1-201917
riscv                             allnoconfig
riscv                               defconfig
x86_64                   randconfig-l1-201917
i386                     randconfig-l1-201917
i386                     randconfig-l3-201917
x86_64                   randconfig-l2-201917
x86_64                   randconfig-l3-201917
x86_64                   randconfig-l0-201917
i386                     randconfig-l0-201917
i386                     randconfig-l2-201917
x86_64                           allmodconfig
i386                             alldefconfig
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                   randconfig-g0-201917
x86_64                   randconfig-g3-201917
x86_64                   randconfig-g2-201917
x86_64                   randconfig-g1-201917
i386                              allnoconfig
i386                                defconfig
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
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
x86_64                                  kexec
x86_64                              fedora-25
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
i386                     randconfig-a1-201917
i386                     randconfig-a2-201917
i386                     randconfig-a0-201917
i386         randconfig-a2-201917-CONFIG_DEBUG_INFO_REDUCED
i386                     randconfig-a3-201917
riscv                              tinyconfig
i386                               tinyconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
