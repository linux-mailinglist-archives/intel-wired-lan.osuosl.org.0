Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CE9AB1A7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 06:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74EFA87E74;
	Fri,  6 Sep 2019 04:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eW48J-RUnP0s; Fri,  6 Sep 2019 04:26:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 039598818F;
	Fri,  6 Sep 2019 04:26:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C26C01BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 04:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B710C86BF9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 04:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LTOpz3YMtsW8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 04:26:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 502DC86A10
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 04:26:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 21:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="383134484"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 05 Sep 2019 21:26:49 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i65pg-0002Hz-KA; Fri, 06 Sep 2019 12:26:48 +0800
Date: Fri, 06 Sep 2019 12:26:38 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5d71dffe.xgqexWS8b+ODPDgy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue] BUILD SUCCESS
 3ba12aa598a6b30df8da54d89de35163d40f09fc
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

tree/branch: https://kernel.googlesource.com/pub/scm/linux/kernel/git/jkirsher/next-queue.git  dev-queue
branch HEAD: 3ba12aa598a6b30df8da54d89de35163d40f09fc  ixgbe: use skb_get_queue_mapping in Tx path

elapsed time: 547m

configs tested: 143

The following configs have been built successfully.
More configs may be tested in the coming days.

i386                   randconfig-d002-201935
i386                   randconfig-d004-201935
x86_64                 randconfig-d004-201935
x86_64                 randconfig-d002-201935
x86_64                 randconfig-d001-201935
x86_64                 randconfig-d003-201935
i386                   randconfig-d001-201935
i386                   randconfig-d003-201935
i386                              allnoconfig
i386                                defconfig
i386                             alldefconfig
x86_64                 randconfig-c003-201935
x86_64                 randconfig-c002-201935
i386                   randconfig-c004-201935
x86_64                 randconfig-c004-201935
i386                   randconfig-c003-201935
x86_64                 randconfig-c001-201935
i386                   randconfig-c002-201935
i386                   randconfig-c001-201935
m68k                          multi_defconfig
m68k                       m5475evb_defconfig
h8300                    h8300h-sim_defconfig
h8300                     edosk2674_defconfig
m68k                           sun3_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nios2                         3c120_defconfig
xtensa                          iss_defconfig
c6x                        evmc6678_defconfig
c6x                              allyesconfig
nios2                         10m50_defconfig
openrisc                 simple_smp_defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             alldefconfig
arc                              allyesconfig
microblaze                    nommu_defconfig
powerpc                       ppc64_defconfig
microblaze                      mmu_defconfig
arc                                 defconfig
powerpc                           allnoconfig
x86_64                 randconfig-g003-201935
i386                   randconfig-g004-201935
x86_64                 randconfig-g002-201935
x86_64                 randconfig-g001-201935
i386                   randconfig-g001-201935
x86_64                 randconfig-g004-201935
i386                   randconfig-g002-201935
i386                   randconfig-g003-201935
arm                         at91_dt_defconfig
arm64                               defconfig
arm                        multi_v5_defconfig
arm64                            allyesconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                           sunxi_defconfig
arm64                             allnoconfig
arm                          exynos_defconfig
arm                        shmobile_defconfig
arm                        multi_v7_defconfig
x86_64                 randconfig-b002-201935
i386                   randconfig-b003-201935
i386                   randconfig-b004-201935
i386                   randconfig-b001-201935
x86_64                 randconfig-b001-201935
i386                   randconfig-b002-201935
x86_64                 randconfig-b004-201935
x86_64                 randconfig-b003-201935
s390                              allnoconfig
s390                          debug_defconfig
s390                             allmodconfig
s390                                defconfig
x86_64                 randconfig-e004-201935
i386                   randconfig-e004-201935
x86_64                 randconfig-e002-201935
x86_64                 randconfig-e003-201935
i386                   randconfig-e003-201935
x86_64                 randconfig-e001-201935
i386                   randconfig-e001-201935
i386                   randconfig-e002-201935
powerpc                             defconfig
ia64                                defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sh                            titan_defconfig
x86_64                                    lkp
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                              fedora-25
x86_64                                  kexec
x86_64                           allmodconfig
arm                              allmodconfig
arm64                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
i386                   randconfig-f004-201935
x86_64                 randconfig-f004-201935
x86_64                 randconfig-f002-201935
i386                   randconfig-f001-201935
i386                   randconfig-f003-201935
i386                   randconfig-f002-201935
x86_64                 randconfig-f001-201935
x86_64                 randconfig-f003-201935
mips                             allmodconfig
mips                      malta_kvm_defconfig
mips                              allnoconfig
mips                      fuloong2e_defconfig
parisc                        c3000_defconfig
parisc                         b180_defconfig
parisc                              defconfig
parisc                            allnoconfig
x86_64                 randconfig-h002-201935
x86_64                 randconfig-h003-201935
i386                   randconfig-h002-201935
i386                   randconfig-h001-201935
i386                   randconfig-h004-201935
x86_64                 randconfig-h004-201935
x86_64                 randconfig-h001-201935
i386                   randconfig-h003-201935
x86_64                           allyesconfig
i386                             allmodconfig
x86_64                 randconfig-a004-201935
i386                   randconfig-a003-201935
x86_64                 randconfig-a002-201935
i386                   randconfig-a004-201935
i386                   randconfig-a002-201935
i386                   randconfig-a001-201935
x86_64                 randconfig-a001-201935
x86_64                 randconfig-a003-201935
sparc64                          allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                             defconfig
riscv                             allnoconfig
riscv                               defconfig
nds32                               defconfig
alpha                               defconfig
nds32                             allnoconfig

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
