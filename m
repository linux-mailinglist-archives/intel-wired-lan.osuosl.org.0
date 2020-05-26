Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D28B1E3029
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C92F87C4E;
	Tue, 26 May 2020 20:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2-JU7z+FOMrp; Tue, 26 May 2020 20:42:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F217D87CB6;
	Tue, 26 May 2020 20:42:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 930251BF371
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 817FD20446
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yenLohBUu+a5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:42:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CBD62038A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:42:04 +0000 (UTC)
IronPort-SDR: qQ64VvuoqPuGElc+4XaUBuOIUX6H4QUT4C92LCH7/+1HCtLrrlYJ1LA9MAuVMjEiY+vOK8guaX
 AkliU2NZvtlQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:42:03 -0700
IronPort-SDR: AitDnpG7cstQ43BP0MMPubPawDUQsUkfH7edZsp2tjpLH19iu9GeXWt+Pq7rkqXhUrm4Vat10o
 K36/Uh9CqY1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="256571908"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 May 2020 13:42:02 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jdgOg-000HkJ-7U; Wed, 27 May 2020 04:42:02 +0800
Date: Wed, 27 May 2020 04:41:45 +0800
From: kbuild test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ecd7f09.c/FdcWKHAeAKtS0U%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-next-queue:100GbE] BUILD SUCCESS
 c1e0883012a75a04180a6ebf23a869172187c506
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git  100GbE
branch HEAD: c1e0883012a75a04180a6ebf23a869172187c506  ice: cleanup unsigned loops

elapsed time: 5190m

configs tested: 123
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
mips                             allyesconfig
m68k                             allyesconfig
sh                          landisk_defconfig
arc                              allyesconfig
c6x                        evmc6472_defconfig
mips                          ath25_defconfig
arm                         s3c2410_defconfig
sh                           se7722_defconfig
arc                        vdk_hs38_defconfig
arm                          gemini_defconfig
sh                          sdk7786_defconfig
powerpc                      ppc64e_defconfig
h8300                               defconfig
h8300                       h8s-sim_defconfig
arm                         ebsa110_defconfig
mips                          lasat_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200524
i386                 randconfig-a004-20200524
i386                 randconfig-a006-20200524
i386                 randconfig-a003-20200524
i386                 randconfig-a002-20200524
i386                 randconfig-a005-20200524
i386                 randconfig-a001-20200526
i386                 randconfig-a004-20200526
i386                 randconfig-a003-20200526
i386                 randconfig-a006-20200526
i386                 randconfig-a002-20200526
i386                 randconfig-a005-20200526
x86_64               randconfig-a015-20200526
x86_64               randconfig-a013-20200526
x86_64               randconfig-a016-20200526
x86_64               randconfig-a012-20200526
x86_64               randconfig-a014-20200526
x86_64               randconfig-a011-20200526
i386                 randconfig-a013-20200524
i386                 randconfig-a015-20200524
i386                 randconfig-a012-20200524
i386                 randconfig-a011-20200524
i386                 randconfig-a016-20200524
i386                 randconfig-a014-20200524
i386                 randconfig-a013-20200526
i386                 randconfig-a015-20200526
i386                 randconfig-a012-20200526
i386                 randconfig-a011-20200526
i386                 randconfig-a016-20200526
i386                 randconfig-a014-20200526
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
