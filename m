Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16078CEFD6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 02:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CAAAA20005;
	Tue,  8 Oct 2019 00:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACBtVCHQaVrR; Tue,  8 Oct 2019 00:16:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0CAF2202E;
	Tue,  8 Oct 2019 00:16:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7CF91BF2FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 00:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C40F287CE1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 00:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAW8L3FMD1pz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 00:16:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 26D8887B69
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 00:16:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 17:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="394511827"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 07 Oct 2019 17:16:30 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iHdB0-000G0Y-9c; Tue, 08 Oct 2019 08:16:30 +0800
Date: Tue, 08 Oct 2019 08:15:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d9bd531.Y7ufKjM0m+lbZ4Mg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 c2c78e2a1a4fc839cb36cf45101361d0ffcd0428
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
branch HEAD: c2c78e2a1a4fc839cb36cf45101361d0ffcd0428  i40e: Fix receive buffer starvation for AF_XDP

elapsed time: 96m

configs tested: 88

The following configs have been built successfully.
More configs may be tested in the coming days.

i386                             alldefconfig
i386                              allnoconfig
i386                                defconfig
nios2                         10m50_defconfig
sh                               allmodconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                             defconfig
i386                   randconfig-b001-201940
x86_64                 randconfig-b002-201940
x86_64                 randconfig-b003-201940
i386                   randconfig-b003-201940
i386                   randconfig-b004-201940
x86_64                 randconfig-b004-201940
x86_64                 randconfig-b001-201940
i386                   randconfig-b002-201940
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                             defconfig
powerpc                       ppc64_defconfig
um                                  defconfig
um                             i386_defconfig
um                           x86_64_defconfig
alpha                               defconfig
nds32                             allnoconfig
nds32                               defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                           allyesconfig
i386                             allmodconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
s390                             allmodconfig
s390                              allnoconfig
s390                          debug_defconfig
s390                                defconfig
x86_64                 randconfig-h002-201940
x86_64                 randconfig-h001-201940
i386                   randconfig-h004-201940
i386                   randconfig-h003-201940
x86_64                 randconfig-h003-201940
i386                   randconfig-h002-201940
i386                   randconfig-h001-201940
x86_64                 randconfig-h004-201940
parisc                            allnoconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64                 randconfig-e001-201940
x86_64                 randconfig-e002-201940
x86_64                 randconfig-e003-201940
x86_64                 randconfig-e004-201940
i386                   randconfig-e001-201940
i386                   randconfig-e002-201940
i386                   randconfig-e003-201940
i386                   randconfig-e004-201940
x86_64                           allmodconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
