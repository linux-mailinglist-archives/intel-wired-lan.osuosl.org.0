Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C627EE09E5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2019 18:59:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2704B87FBF;
	Tue, 22 Oct 2019 16:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BBfPmaL810za; Tue, 22 Oct 2019 16:59:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8808A87FC9;
	Tue, 22 Oct 2019 16:59:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFAE71BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 16:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CBB1B87FBF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 16:59:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EExYThOXbADu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2019 16:59:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F95887FB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2019 16:59:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 09:59:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,216,1569308400"; d="scan'208";a="203698483"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Oct 2019 09:59:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iMxVQ-000GXo-K3; Wed, 23 Oct 2019 00:59:36 +0800
Date: Wed, 23 Oct 2019 00:59:23 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5daf356b.u7pY9yV+fokneigz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD INCOMPLETE
 92d44e8c738bac39315dc0e3109660915b9452fb
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
branch HEAD: 92d44e8c738bac39315dc0e3109660915b9452fb  e1000e: Add support for Tiger Lake

TIMEOUT after 1445m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 5

x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6

configs tested: 140

riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
i386                   randconfig-d002-201942
x86_64                 randconfig-d002-201942
i386                   randconfig-d004-201942
x86_64                 randconfig-d004-201942
x86_64                 randconfig-d003-201942
i386                   randconfig-d003-201942
x86_64                 randconfig-d001-201942
i386                   randconfig-d001-201942
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                 randconfig-h002-201942
x86_64                 randconfig-h001-201942
i386                   randconfig-h004-201942
i386                   randconfig-h003-201942
x86_64                 randconfig-h003-201942
i386                   randconfig-h002-201942
i386                   randconfig-h001-201942
x86_64                 randconfig-h004-201942
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
x86_64                 randconfig-c001-201942
i386                   randconfig-c001-201942
x86_64                 randconfig-c002-201942
i386                   randconfig-c004-201942
i386                   randconfig-c003-201942
x86_64                 randconfig-c004-201942
i386                   randconfig-c002-201942
x86_64                 randconfig-c003-201942
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
x86_64                           allmodconfig
mips                             allmodconfig
mips                           32r2_defconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                 randconfig-g002-201942
i386                   randconfig-g004-201942
x86_64                 randconfig-g001-201942
i386                   randconfig-g002-201942
x86_64                 randconfig-g004-201942
x86_64                 randconfig-g003-201942
i386                   randconfig-g003-201942
i386                   randconfig-g001-201942
i386                   randconfig-b001-201942
x86_64                 randconfig-b002-201942
x86_64                 randconfig-b003-201942
i386                   randconfig-b003-201942
i386                   randconfig-b004-201942
x86_64                 randconfig-b004-201942
x86_64                 randconfig-b001-201942
i386                   randconfig-b002-201942
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
x86_64                           allyesconfig
i386                             allmodconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
i386                   randconfig-f002-201942
i386                   randconfig-f001-201942
x86_64                 randconfig-f003-201942
x86_64                 randconfig-f004-201942
x86_64                 randconfig-f002-201942
i386                   randconfig-f003-201942
x86_64                 randconfig-f001-201942
i386                   randconfig-f004-201942
x86_64                 randconfig-a004-201942
x86_64                 randconfig-a001-201942
i386                   randconfig-a002-201942
x86_64                 randconfig-a002-201942
i386                   randconfig-a001-201942
i386                   randconfig-a003-201942
i386                   randconfig-a004-201942
x86_64                 randconfig-a003-201942
arm                              allmodconfig
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm64                            allmodconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
x86_64                 randconfig-e004-201942
x86_64                 randconfig-e001-201942
x86_64                 randconfig-e003-201942
x86_64                 randconfig-e002-201942
i386                   randconfig-e003-201942
i386                   randconfig-e004-201942
i386                   randconfig-e001-201942
i386                   randconfig-e002-201942

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
