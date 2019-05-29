Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3262D355
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 03:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6BCF02344A;
	Wed, 29 May 2019 01:31:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFPgl06aF0Px; Wed, 29 May 2019 01:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AC792314E;
	Wed, 29 May 2019 01:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 188591BF2BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 01:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1380C86761
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 01:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z+EhMeRIk-ZZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2019 01:31:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4069C86759
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2019 01:31:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 18:31:07 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 May 2019 18:31:06 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hVnQn-000AGH-Oe; Wed, 29 May 2019 09:31:05 +0800
Date: Wed, 29 May 2019 09:30:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5cede0a8.yaf6576muFn/eIs4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 c4c1eb497caa18d7f8dc5c2dfdfa736dce742f1b
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
branch HEAD: c4c1eb497caa18d7f8dc5c2dfdfa736dce742f1b  i40e: Do not check VF state in i40e_ndo_get_vf_config

elapsed time: 237m

configs tested: 116

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm64                            allmodconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                             acpi-redef
x86_64                           allyesdebian
x86_64                                nfsroot
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
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
riscv                              tinyconfig
i386                               tinyconfig
arm64                             allnoconfig
sparc                            allmodconfig
x86_64                           allyesconfig
i386                             allmodconfig
m68k                           sun3_defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
arm                               allnoconfig
x86_64                           allmodconfig
i386                             alldefconfig
ia64                             allmodconfig
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
i386                              allnoconfig
i386                                defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
arm                         at91_dt_defconfig
mips                      fuloong2e_defconfig
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
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                                   jz4740
mips                      malta_kvm_defconfig
mips                                     txx9

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
