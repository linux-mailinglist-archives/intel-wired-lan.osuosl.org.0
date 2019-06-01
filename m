Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7A4320A9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  1 Jun 2019 22:11:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0D80A86274;
	Sat,  1 Jun 2019 20:11:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59vmw4769jqm; Sat,  1 Jun 2019 20:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 039F486224;
	Sat,  1 Jun 2019 20:11:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B5C911BF357
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2019 20:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADD5785F82
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2019 20:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9MiOwsloUWs3 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  1 Jun 2019 20:11:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D1FF985B97
 for <intel-wired-lan@lists.osuosl.org>; Sat,  1 Jun 2019 20:11:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jun 2019 13:11:23 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 01 Jun 2019 13:11:22 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hXALa-000FDX-5V; Sun, 02 Jun 2019 04:11:22 +0800
Date: Sun, 02 Jun 2019 04:10:53 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cf2dbcd.58TyKAdmX2/xAr77%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 64931d9702ee8ca57ada00d95ec1153e08b2614b
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
branch HEAD: 64931d9702ee8ca57ada00d95ec1153e08b2614b  i40e: update copyright string

elapsed time: 288m

configs tested: 120

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm64                            allmodconfig
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
s390                          debug_defconfig
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
um                                  defconfig
m68k                           sun3_defconfig
mips                             allmodconfig
parisc                         b180_defconfig
mips                      malta_kvm_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
i386                              allnoconfig
i386                                defconfig
x86_64                           allyesconfig
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
alpha                               defconfig
parisc                            allnoconfig
parisc                        c3000_defconfig
parisc                              defconfig
i386                   randconfig-x010-201922
i386                   randconfig-x011-201922
i386                   randconfig-x012-201922
i386                   randconfig-x013-201922
i386                   randconfig-x014-201922
i386                   randconfig-x015-201922
i386                   randconfig-x016-201922
i386                   randconfig-x017-201922
i386                   randconfig-x018-201922
i386                   randconfig-x019-201922
x86_64                 randconfig-x006-201921
x86_64                 randconfig-x003-201921
x86_64                 randconfig-x001-201921
x86_64                 randconfig-x007-201921
x86_64                 randconfig-x004-201921
x86_64                 randconfig-x005-201921
x86_64                 randconfig-x002-201921
x86_64                 randconfig-x009-201921
x86_64                 randconfig-x008-201921
x86_64                 randconfig-x000-201921
x86_64                                  kexec
x86_64                              fedora-25
i386                             allmodconfig
x86_64                 randconfig-x019-201922
x86_64                 randconfig-x010-201922
x86_64                 randconfig-x015-201922
x86_64                 randconfig-x014-201922
x86_64                 randconfig-x012-201922
x86_64                 randconfig-x017-201922
x86_64                 randconfig-x018-201922
x86_64                 randconfig-x016-201922
x86_64                 randconfig-x011-201922
x86_64                 randconfig-x013-201922
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

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
