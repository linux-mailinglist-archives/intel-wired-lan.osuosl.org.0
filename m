Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5756048848E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jan 2022 17:43:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D38BF813E8;
	Sat,  8 Jan 2022 16:43:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QpVDp1dC8cL0; Sat,  8 Jan 2022 16:43:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C03D1813CE;
	Sat,  8 Jan 2022 16:43:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 36B551BF599
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 16:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31844813CE
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 16:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0r2EM68djoKO for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jan 2022 16:43:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 24DEF813CC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jan 2022 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641660186; x=1673196186;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IrwHHQJp1oDERyAa320QnuywH3+UpwnFLMmdEcO3sR0=;
 b=DcuDEeVc+UPTvZBRBx9xqanZ629eLZGWt6dXtYKhG6tr+gjrbzqm2ClH
 Wuwo/cIt7/L9E1FgOXaxeh/EWJggJTDlC/cZreAgGSpl32XX4AEgLqKPy
 eiQosyOnKPb58Y8nE3v/rexqegVjw9mTvvBbI5wwlTvvQaaKxdmDf4bpa
 hCF1ou2Q+pcIqpYizJnBcs4ZQ7JiANnTW+8veXMtYBEEoB/foEUKKPmP5
 +ywoUBjSBYqjHPMSSBDacqx8894VYp7bfp4F4YSsZfetqq6Re4kR3P/ka
 lM/zZCmbC6YjHu6vdhlk3/snjusTtzUyBT838LuVpl6Q8dMHKKSI/mTjJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="223724713"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="223724713"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2022 08:43:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="669075368"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jan 2022 08:43:01 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n6Eo0-0000pC-KO; Sat, 08 Jan 2022 16:43:00 +0000
Date: Sun, 09 Jan 2022 00:42:22 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61d9beee.7vkjZDD53i3/Hgy9%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-next-queue:40GbE] BUILD SUCCESS
 5322c68e588dd018365fe59f9a9930ef11813337
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git 40GbE
branch HEAD: 5322c68e588dd018365fe59f9a9930ef11813337  iavf: remove an unneeded variable

elapsed time: 1096m

configs tested: 91
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
powerpc                    sam440ep_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                  randconfig-c002-20220107
arm                  randconfig-c002-20220108
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a003-20220107
i386                 randconfig-a005-20220107
i386                 randconfig-a004-20220107
i386                 randconfig-a006-20220107
i386                 randconfig-a002-20220107
i386                 randconfig-a001-20220107
x86_64               randconfig-a015-20220108
x86_64               randconfig-a012-20220108
x86_64               randconfig-a014-20220108
x86_64               randconfig-a013-20220108
x86_64               randconfig-a011-20220108
x86_64               randconfig-a016-20220108
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a012-20220107
x86_64               randconfig-a015-20220107
x86_64               randconfig-a014-20220107
x86_64               randconfig-a013-20220107
x86_64               randconfig-a011-20220107
x86_64               randconfig-a016-20220107
i386                 randconfig-a012-20220107
i386                 randconfig-a011-20220107
i386                 randconfig-a013-20220107
i386                 randconfig-a014-20220107
i386                 randconfig-a015-20220107
i386                 randconfig-a016-20220107
x86_64               randconfig-a005-20220108
x86_64               randconfig-a001-20220108
x86_64               randconfig-a004-20220108
x86_64               randconfig-a006-20220108
x86_64               randconfig-a003-20220108
x86_64               randconfig-a002-20220108
hexagon              randconfig-r041-20220107
hexagon              randconfig-r045-20220107
riscv                randconfig-r042-20220107

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
