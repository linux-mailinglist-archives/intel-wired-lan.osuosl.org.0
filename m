Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDDEED0CB
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Nov 2019 23:09:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA9238476B;
	Sat,  2 Nov 2019 22:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RXzAH9m8o0jk; Sat,  2 Nov 2019 22:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84FB689E62;
	Sat,  2 Nov 2019 22:08:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D8FE51BF30E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2019 22:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D59788A9FD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2019 22:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lWTkxQf-rRIR for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Nov 2019 22:08:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8FA78A9FC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Nov 2019 22:08:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Nov 2019 15:08:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,261,1569308400"; d="scan'208";a="195056185"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 02 Nov 2019 15:08:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iR1Zm-0007Ws-LN; Sun, 03 Nov 2019 06:08:54 +0800
Date: Sun, 03 Nov 2019 06:08:52 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5dbdfe74.8DJPvNfa7LSG0H3A%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD INCOMPLETE
 0617966b940462e8cc4f846527080fa8e83967f3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git  dev-queue
branch HEAD: 0617966b940462e8cc4f846527080fa8e83967f3  checkpatch.pl: seed camelcase from the provided kernel tree root

TIMEOUT after 1447m


Sorry we cannot finish the testset for your branch within a reasonable time.
It's our fault -- either some build server is down or some build worker is busy
doing bisects for _other_ trees. The branch will get more complete coverage and
possible error reports when our build infrastructure is restored or catches up.
There will be no more build success notification for this branch head, but you
can expect reasonably good test coverage after waiting for 1 day.

configs timed out: 18

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
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
x86_64                           allmodconfig

configs tested: 119

arm                              allmodconfig
arm64                            allmodconfig
i386                   randconfig-b001-201943
x86_64                 randconfig-b002-201943
x86_64                 randconfig-b003-201943
i386                   randconfig-b003-201943
i386                   randconfig-b004-201943
x86_64                 randconfig-b004-201943
x86_64                 randconfig-b001-201943
i386                   randconfig-b002-201943
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
i386                   randconfig-d002-201943
x86_64                 randconfig-d002-201943
i386                   randconfig-d004-201943
x86_64                 randconfig-d004-201943
x86_64                 randconfig-d003-201943
i386                   randconfig-d003-201943
x86_64                 randconfig-d001-201943
i386                   randconfig-d001-201943
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
x86_64                 randconfig-e004-201943
x86_64                 randconfig-e001-201943
x86_64                 randconfig-e003-201943
x86_64                 randconfig-e002-201943
i386                   randconfig-e003-201943
i386                   randconfig-e004-201943
i386                   randconfig-e001-201943
i386                   randconfig-e002-201943
x86_64                 randconfig-a004-201943
x86_64                 randconfig-a001-201943
i386                   randconfig-a002-201943
x86_64                 randconfig-a002-201943
i386                   randconfig-a001-201943
i386                   randconfig-a003-201943
i386                   randconfig-a004-201943
x86_64                 randconfig-a003-201943
arc                              allyesconfig
powerpc                             defconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig
x86_64                 randconfig-c001-201943
i386                   randconfig-c001-201943
x86_64                 randconfig-c002-201943
i386                   randconfig-c004-201943
i386                   randconfig-c003-201943
x86_64                 randconfig-c004-201943
i386                   randconfig-c002-201943
x86_64                 randconfig-c003-201943
x86_64                           allyesconfig
i386                             allmodconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                                defconfig
ia64                             alldefconfig
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
x86_64                 randconfig-g002-201943
i386                   randconfig-g004-201943
x86_64                 randconfig-g001-201943
i386                   randconfig-g002-201943
x86_64                 randconfig-g004-201943
x86_64                 randconfig-g003-201943
i386                   randconfig-g003-201943
i386                   randconfig-g001-201943
i386                   randconfig-f002-201943
i386                   randconfig-f001-201943
x86_64                 randconfig-f003-201943
x86_64                 randconfig-f004-201943
x86_64                 randconfig-f002-201943
i386                   randconfig-f003-201943
x86_64                 randconfig-f001-201943
i386                   randconfig-f004-201943

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
