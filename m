Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9602926863
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2019 18:35:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4F13687E36;
	Wed, 22 May 2019 16:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e4I2+mfUCyWh; Wed, 22 May 2019 16:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07E3E87E40;
	Wed, 22 May 2019 16:35:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 831891BF3EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 16:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F81F87E38
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 16:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oHyEZ6d-nrBC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2019 16:35:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0944D87E36
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 16:35:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 09:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,499,1549958400"; d="scan'208";a="174451673"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2019 09:35:18 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hTUCz-0003hk-HB; Thu, 23 May 2019 00:35:17 +0800
Date: Thu, 23 May 2019 00:34:47 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ce57a27.KTT+JLDgPFDaN3Fx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 eab7befee6ae3227684fb12511957c12cc56a155
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
branch HEAD: eab7befee6ae3227684fb12511957c12cc56a155  iavf: allow null RX descriptors

elapsed time: 103m

configs tested: 148

The following configs have been built successfully.
More configs may be tested in the coming days.

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
c6x                        evmc6678_defconfig
h8300                    h8300h-sim_defconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
i386                     randconfig-m3-201920
x86_64                   randconfig-m3-201920
x86_64                   randconfig-m2-201920
x86_64                   randconfig-m1-201920
x86_64                   randconfig-m0-201920
i386                     randconfig-m0-201920
i386                     randconfig-m1-201920
i386                     randconfig-m2-201920
riscv                             allnoconfig
riscv                               defconfig
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
i386                   randconfig-l1-05220501
i386                   randconfig-l2-05220501
i386                   randconfig-l3-05220501
x86_64                 randconfig-l2-05220501
x86_64                 randconfig-l1-05220501
x86_64                 randconfig-l3-05220501
x86_64                 randconfig-l0-05220501
i386                   randconfig-l0-05220501
x86_64                           allyesconfig
i386                             allmodconfig
nds32                               defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
i386                              allnoconfig
i386                                defconfig
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
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
x86_64               randconfig-x010-05222102
x86_64               randconfig-x011-05222102
x86_64               randconfig-x018-05222102
x86_64               randconfig-x012-05222102
x86_64               randconfig-x017-05222102
x86_64               randconfig-x013-05222102
x86_64               randconfig-x015-05222102
x86_64               randconfig-x016-05222102
x86_64               randconfig-x019-05222102
x86_64               randconfig-x014-05222102
i386                   randconfig-a3-05222102
i386                   randconfig-a2-05222102
i386                   randconfig-a0-05222102
i386                   randconfig-a1-05222102
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
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
nds32                             allnoconfig
i386                     randconfig-i0-201920
i386                     randconfig-i2-201920
i386                     randconfig-i1-201920
i386                     randconfig-i3-201920
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
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
alpha                               defconfig
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
um                                  defconfig
riscv                              tinyconfig
i386                               tinyconfig
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
