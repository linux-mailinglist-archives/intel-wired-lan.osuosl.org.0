Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57531474633
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 16:18:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1A91814B7;
	Tue, 14 Dec 2021 15:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1frJ4zw5NYsr; Tue, 14 Dec 2021 15:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2D3681384;
	Tue, 14 Dec 2021 15:18:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 536771BF30D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 15:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4194540289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 15:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V-aooDwWkf1G for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Dec 2021 15:18:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69CB64022F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Dec 2021 15:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639495097; x=1671031097;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=N0S6Du4fjQFSXXbI6Z/pFBI9ePizeUE4LNkC4oDb/Fg=;
 b=JPUg+RD6ShQ7RfkuIcRaurexapE1ga9sf2yHdDd4LTqEnZNmx1EL4KDO
 GmGlZX3BGdwVCokfyX8A1+5VEmeN1SCidzauyi1DG5DU3KzGm8Ql4Z5Ir
 0hpUuJRlJw4ad494Iv8rSDPyEyZEKB0Udgm6gJepYOXzv4up6gL/6DjaL
 l0fJg3pb2EGg2TKyu7CtNjx0viWwhM6M7sa8dm8Y2xZGIpwW3lm4rsqHE
 AKv81cglK6HYU4FG8HI7KomqPnhH3mOf4BebH+UDNqt8lZyE+IpuWNbV0
 uYuyW9eqsoUPC0i3z+aAyo7EmmrKuzGWptEU5wLYQ3npCmUb3/vc9/vCM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="237734466"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="237734466"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 07:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="518282928"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 14 Dec 2021 07:18:11 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mx9ZC-0000Rz-MY; Tue, 14 Dec 2021 15:18:10 +0000
Date: Tue, 14 Dec 2021 23:18:02 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61b8b5aa.+N8nKGQfp/UVIIPy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 a7bf7f4b09f16a142fdbd1d9c1a7a4d93358773b
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
branch HEAD: a7bf7f4b09f16a142fdbd1d9c1a7a4d93358773b  i40e: Fix for displaying message regarding NVM version

elapsed time: 980m

configs tested: 106
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20211213
mips                     loongson1c_defconfig
arm                        mini2440_defconfig
arm                         orion5x_defconfig
mips                  maltasmvp_eva_defconfig
xtensa                  audio_kc705_defconfig
mips                            e55_defconfig
sh                         ecovec24_defconfig
sh                     magicpanelr2_defconfig
sh                          r7780mp_defconfig
mips                         mpc30x_defconfig
sh                        dreamcast_defconfig
powerpc                     tqm8540_defconfig
powerpc64                        alldefconfig
sh                           se7712_defconfig
arm                  randconfig-c002-20211213
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211214
x86_64               randconfig-a002-20211214
x86_64               randconfig-a003-20211214
x86_64               randconfig-a004-20211214
x86_64               randconfig-a006-20211214
x86_64               randconfig-a005-20211214
i386                 randconfig-a001-20211214
i386                 randconfig-a002-20211214
i386                 randconfig-a005-20211214
i386                 randconfig-a003-20211214
i386                 randconfig-a006-20211214
i386                 randconfig-a004-20211214
x86_64               randconfig-a011-20211213
x86_64               randconfig-a012-20211213
x86_64               randconfig-a014-20211213
x86_64               randconfig-a013-20211213
x86_64               randconfig-a016-20211213
x86_64               randconfig-a015-20211213
i386                 randconfig-a013-20211213
i386                 randconfig-a011-20211213
i386                 randconfig-a016-20211213
i386                 randconfig-a014-20211213
i386                 randconfig-a015-20211213
i386                 randconfig-a012-20211213
arc                  randconfig-r043-20211213
s390                 randconfig-r044-20211213
riscv                randconfig-r042-20211213
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
i386                 randconfig-a001-20211213
i386                 randconfig-a002-20211213
i386                 randconfig-a003-20211213
hexagon              randconfig-r045-20211214
s390                 randconfig-r044-20211214
riscv                randconfig-r042-20211214
hexagon              randconfig-r041-20211214
hexagon              randconfig-r041-20211213
hexagon              randconfig-r045-20211213

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
