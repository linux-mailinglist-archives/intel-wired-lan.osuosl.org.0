Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215852F7D6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2019 09:19:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8371D8821D;
	Thu, 30 May 2019 07:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guzTmLiBrzg3; Thu, 30 May 2019 07:19:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A6FD8823F;
	Thu, 30 May 2019 07:19:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B90C21BF997
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 07:19:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B52148821D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 07:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ErGjC-oNnGL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2019 07:19:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8EA9D8818F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2019 07:19:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 May 2019 00:19:26 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 30 May 2019 00:19:25 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hWFLR-0009Uw-3r; Thu, 30 May 2019 15:19:25 +0800
Date: Thu, 30 May 2019 15:18:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cef83c3.dTlL1X0bB34HFW0J%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 3991dfb9b4f393abfa1f45460c368acc51674a97
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
branch HEAD: 3991dfb9b4f393abfa1f45460c368acc51674a97  i40e: update copyright string

elapsed time: 525m

configs tested: 200

The following configs have been built successfully.
More configs may be tested in the coming days.

x86_64                                  kexec
x86_64                              fedora-25
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
i386                   randconfig-n005-201921
x86_64                 randconfig-n022-201921
i386                   randconfig-n025-201921
x86_64                 randconfig-n006-201921
i386                   randconfig-n004-201921
x86_64                 randconfig-n023-201921
x86_64                 randconfig-n013-201921
x86_64                 randconfig-n032-201921
i386                   randconfig-n008-201921
x86_64                 randconfig-n016-201921
x86_64                 randconfig-n014-201921
x86_64                 randconfig-n012-201921
i386                   randconfig-n030-201921
x86_64                 randconfig-n031-201921
i386                   randconfig-n024-201921
x86_64                 randconfig-n007-201921
x86_64                 randconfig-n028-201921
x86_64                 randconfig-n011-201921
i386                   randconfig-n013-201921
x86_64                 randconfig-n009-201921
i386                   randconfig-n023-201921
i386                   randconfig-n028-201921
i386                   randconfig-n011-201921
i386                   randconfig-n029-201921
i386                   randconfig-n010-201921
i386                   randconfig-n031-201921
x86_64                 randconfig-n030-201921
i386                   randconfig-n014-201921
i386                   randconfig-n021-201921
i386                   randconfig-n018-201921
x86_64                 randconfig-n002-201921
x86_64                 randconfig-n029-201921
x86_64                 randconfig-n010-201921
x86_64                 randconfig-n027-201921
i386                   randconfig-n009-201921
x86_64                 randconfig-n017-201921
i386                   randconfig-n002-201921
x86_64                 randconfig-n025-201921
i386                   randconfig-n003-201921
x86_64                 randconfig-n024-201921
i386                   randconfig-n015-201921
i386                   randconfig-n007-201921
x86_64                 randconfig-n020-201921
x86_64                 randconfig-n019-201921
i386                   randconfig-n012-201921
x86_64                 randconfig-n008-201921
x86_64                 randconfig-n015-201921
i386                   randconfig-n016-201921
i386                   randconfig-n017-201921
i386                   randconfig-n027-201921
x86_64                 randconfig-n004-201921
i386                   randconfig-n006-201921
x86_64                 randconfig-n021-201921
x86_64                 randconfig-n018-201921
i386                   randconfig-n032-201921
i386                   randconfig-n022-201921
x86_64                 randconfig-n001-201921
i386                   randconfig-n001-201921
x86_64                 randconfig-n026-201921
i386                   randconfig-n020-201921
i386                   randconfig-n019-201921
x86_64                 randconfig-n003-201921
i386                   randconfig-n026-201921
x86_64                 randconfig-n005-201921
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
riscv                              tinyconfig
i386                               tinyconfig
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
c6x                        evmc6678_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nios2                         10m50_defconfig
h8300                    h8300h-sim_defconfig
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
i386                                defconfig
i386                              allnoconfig
ia64                             alldefconfig
ia64                                defconfig
microblaze                    nommu_defconfig
alpha                            allyesconfig
x86_64                           allmodconfig
ia64                              allnoconfig
i386                             alldefconfig
x86_64                           allyesconfig
i386                             allmodconfig
ia64                             allmodconfig
sparc64                          allyesconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
ia64                             allyesconfig
riscv                             allnoconfig
i386                   randconfig-x011-201921
i386                   randconfig-x018-201921
i386                   randconfig-x013-201921
i386                   randconfig-x012-201921
i386                   randconfig-x016-201921
i386                   randconfig-x017-201921
i386                   randconfig-x010-201921
i386                   randconfig-x014-201921
i386                   randconfig-x015-201921
i386                   randconfig-x019-201921
microblaze                      mmu_defconfig
x86_64                 randconfig-x000-201921
x86_64                 randconfig-x001-201921
x86_64                 randconfig-x002-201921
x86_64                 randconfig-x003-201921
x86_64                 randconfig-x004-201921
x86_64                 randconfig-x005-201921
x86_64                 randconfig-x006-201921
x86_64                 randconfig-x007-201921
x86_64                 randconfig-x008-201921
x86_64                 randconfig-x009-201921
i386                   randconfig-x009-201921
i386                   randconfig-x008-201921
i386                   randconfig-x006-201921
i386                   randconfig-x004-201921
i386                   randconfig-x005-201921
i386                   randconfig-x001-201921
i386                   randconfig-x000-201921
i386                   randconfig-x007-201921
i386                   randconfig-x003-201921
i386                   randconfig-x002-201921
x86_64                 randconfig-x019-201921
x86_64                 randconfig-x015-201921
x86_64                 randconfig-x010-201921
x86_64                 randconfig-x012-201921
x86_64                 randconfig-x014-201921
x86_64                 randconfig-x017-201921
x86_64                 randconfig-x016-201921
x86_64                 randconfig-x018-201921
x86_64                 randconfig-x011-201921
x86_64                 randconfig-x013-201921
x86_64                  randconfig-x007201921
x86_64                  randconfig-x006201921
x86_64                  randconfig-x009201921
x86_64                  randconfig-x003201921
x86_64                  randconfig-x008201921
x86_64                  randconfig-x002201921
x86_64                  randconfig-x001201921
x86_64                  randconfig-x005201921
x86_64                  randconfig-x004201921
x86_64                  randconfig-x000201921
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9
riscv                               defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                   randconfig-x073-201921
i386                   randconfig-x071-201921
i386                   randconfig-x070-201921
i386                   randconfig-x074-201921
i386                   randconfig-x078-201921
i386                   randconfig-x075-201921
i386                   randconfig-x072-201921
i386                   randconfig-x076-201921
i386                   randconfig-x077-201921
i386                   randconfig-x079-201921

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
