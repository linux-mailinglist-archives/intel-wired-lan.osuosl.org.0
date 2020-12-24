Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9040F2E2526
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Dec 2020 08:11:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C141086945;
	Thu, 24 Dec 2020 07:11:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGHtCj+y+CHu; Thu, 24 Dec 2020 07:11:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7523868D8;
	Thu, 24 Dec 2020 07:11:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80D841BF59B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Dec 2020 07:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A3138667B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Dec 2020 07:11:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yMc0J9oiQ9Tc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Dec 2020 07:11:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFC5386727
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Dec 2020 07:11:23 +0000 (UTC)
IronPort-SDR: wCxR9m1AZ9pnT+WXXNt4kv1yJTf4VFfbdgWdQqJNzBnNoNnjJ6Nsx0xuBdQ7+mxrbmmSytUwy4
 hh/cbjphh0dA==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="194576483"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="194576483"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 23:11:20 -0800
IronPort-SDR: RiF9qp337WAMXnrDg4CgylPjdcPpq3ucb3pJzXCJFBEo3UEPZqmSi7FVf/63OHt9aZnKIYGwTd
 6yhDLmtyS3cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; d="scan'208";a="393696898"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2020 23:11:19 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ksKmM-0000oD-VT; Thu, 24 Dec 2020 07:11:18 +0000
Date: Thu, 24 Dec 2020 15:10:56 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5fe43f00.qePpD7K6iciG6RJE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue] BUILD SUCCESS
 d2a64a382e7ca8a8b1f984baadbeebf992416db0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git  dev-queue
branch HEAD: d2a64a382e7ca8a8b1f984baadbeebf992416db0  igc: Expose the gPHY firmware version

elapsed time: 723m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                            zeus_defconfig
nds32                               defconfig
sh                          landisk_defconfig
arc                    vdk_hs38_smp_defconfig
ia64                             allyesconfig
arm                        neponset_defconfig
parisc                              defconfig
c6x                                 defconfig
sh                             shx3_defconfig
mips                      loongson3_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                          prima2_defconfig
sparc                            alldefconfig
mips                       bmips_be_defconfig
powerpc                mpc7448_hpc2_defconfig
microblaze                      mmu_defconfig
sh                  sh7785lcr_32bit_defconfig
m68k                            q40_defconfig
sh                             sh03_defconfig
m68k                         amcore_defconfig
arc                        nsim_700_defconfig
m68k                            mac_defconfig
mips                malta_kvm_guest_defconfig
s390                          debug_defconfig
mips                           mtx1_defconfig
sparc64                          alldefconfig
arm                        clps711x_defconfig
sh                         ap325rxa_defconfig
xtensa                       common_defconfig
arm                       multi_v4t_defconfig
xtensa                           alldefconfig
mips                        nlm_xlp_defconfig
arm                             pxa_defconfig
mips                     loongson1b_defconfig
sparc64                             defconfig
alpha                               defconfig
arm                           tegra_defconfig
mips                  decstation_64_defconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20201223
i386                 randconfig-a005-20201223
i386                 randconfig-a006-20201223
i386                 randconfig-a004-20201223
i386                 randconfig-a003-20201223
i386                 randconfig-a001-20201223
i386                 randconfig-a011-20201223
i386                 randconfig-a016-20201223
i386                 randconfig-a014-20201223
i386                 randconfig-a012-20201223
i386                 randconfig-a015-20201223
i386                 randconfig-a013-20201223
x86_64               randconfig-a001-20201223
x86_64               randconfig-a006-20201223
x86_64               randconfig-a002-20201223
x86_64               randconfig-a004-20201223
x86_64               randconfig-a003-20201223
x86_64               randconfig-a005-20201223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20201223
x86_64               randconfig-a014-20201223
x86_64               randconfig-a016-20201223
x86_64               randconfig-a012-20201223
x86_64               randconfig-a013-20201223
x86_64               randconfig-a011-20201223

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
