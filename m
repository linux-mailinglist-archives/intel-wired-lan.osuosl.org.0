Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C17291EF0EE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jun 2020 07:39:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A62A86EC7;
	Fri,  5 Jun 2020 05:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mX8GGE_oKG7; Fri,  5 Jun 2020 05:39:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5E0F86E76;
	Fri,  5 Jun 2020 05:39:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7324A1BF82D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 05:39:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6EBA086C5E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 05:39:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjK_zzZG_thO for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2020 05:39:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFB0F86C5A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 05:39:25 +0000 (UTC)
IronPort-SDR: n3zReXdOpFUDhJqmESmuOX/wCYC/Pt6+1JLXdVWMvC3leZf+HnUjUPD20QV1VD5GeBvrYhn/FP
 xVcaLYxyYrtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 22:39:25 -0700
IronPort-SDR: ASIpTx/WVVQvBa8cik/7Vh6LCtRcmIhKq886LxEQQ2iKceX2P3iziuHzldsYgWwByylQW4K2v5
 dXOC4Omte8vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,475,1583222400"; d="scan'208";a="257935537"
Received: from lkp-server02.sh.intel.com (HELO 85fa322b0eb2) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jun 2020 22:39:24 -0700
Received: from kbuild by 85fa322b0eb2 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jh54d-00005m-C3; Fri, 05 Jun 2020 05:39:23 +0000
Date: Fri, 05 Jun 2020 13:39:08 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <5ed9da7c.DMyHAJkkly2bCliw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [jkirsher-net-queue:dev-queue] BUILD SUCCESS
 5c1a37888973bd6d7fc5290944c49f1442d62527
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
branch HEAD: 5c1a37888973bd6d7fc5290944c49f1442d62527  ice: Fix a couple off by one bugs

elapsed time: 482m

configs tested: 99
configs skipped: 6

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
mips                            ar7_defconfig
csky                             alldefconfig
sh                             shx3_defconfig
mips                  cavium_octeon_defconfig
um                           x86_64_defconfig
ia64                          tiger_defconfig
arc                             nps_defconfig
arc                           tb10x_defconfig
arm                       spear13xx_defconfig
nios2                               defconfig
mips                        jmr3927_defconfig
alpha                               defconfig
powerpc                  mpc866_ads_defconfig
mips                        workpad_defconfig
s390                             alldefconfig
sh                        sh7757lcr_defconfig
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
m68k                             allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
x86_64               randconfig-a002-20200605
x86_64               randconfig-a001-20200605
x86_64               randconfig-a006-20200605
x86_64               randconfig-a003-20200605
x86_64               randconfig-a004-20200605
x86_64               randconfig-a005-20200605
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
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
