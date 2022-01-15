Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D6048F7C5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 15 Jan 2022 17:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E9F5403B8;
	Sat, 15 Jan 2022 16:27:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKTiOhHYdIa0; Sat, 15 Jan 2022 16:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4392240347;
	Sat, 15 Jan 2022 16:27:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 184281BF424
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jan 2022 16:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1389481B7B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jan 2022 16:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJQpIaI9nqMW for <intel-wired-lan@lists.osuosl.org>;
 Sat, 15 Jan 2022 16:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5194581B72
 for <intel-wired-lan@lists.osuosl.org>; Sat, 15 Jan 2022 16:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642264031; x=1673800031;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5+Hl2Uk44TVTHgAQKZjpwgOmBn7P6gMoJSgLhnqplhY=;
 b=N1hJyC7NXv25tYEFEBUSO6Y8ImOJ6Hord894HCND3sePWnExh8tQADlM
 IV4JHkuiLXQwypOrhr099G9BmJESd6qLrR1L67L3R/OtGPCM7v5B3O9Pc
 SC8zs970G/IOEbyiZqEaQUmdRDLRTZ5ogQsDL82Z3ZwIVwx00KIc3foDA
 xdNp/YHaR/2CBaMoOD+9nL9kQMKKGd2Nh5YlHRNsxoCXflyBtMrKBhFU8
 LbmW0MtQW7dacgcHEoagl7CQxrx7Vc1LMgvWZC82MloUtdPX4K4LfTvf2
 haLv22bKf81QrwQEcQHuzEY2RDZQH/5DqcdziRRDHHqoeMegUuKBmK60G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="330772833"
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="330772833"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2022 08:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,290,1635231600"; d="scan'208";a="473985188"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 15 Jan 2022 08:27:09 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n8ltU-000A48-KT; Sat, 15 Jan 2022 16:27:08 +0000
Date: Sun, 16 Jan 2022 00:26:17 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61e2f5a9.LytHCTJgHAfm3dmo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 3a1a2fd50c1ae77d43a1e98f379c9e7b98bf1a44
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
branch HEAD: 3a1a2fd50c1ae77d43a1e98f379c9e7b98bf1a44  i40e: Fix reset path while removing the driver

elapsed time: 878m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                          randconfig-c001
h8300                               defconfig
mips                           jazz_defconfig
powerpc                        cell_defconfig
xtensa                generic_kc705_defconfig
xtensa                    xip_kc705_defconfig
nds32                             allnoconfig
ia64                                defconfig
sh                   secureedge5410_defconfig
powerpc                     tqm8541_defconfig
ia64                         bigsur_defconfig
mips                            ar7_defconfig
arm                      footbridge_defconfig
sh                     magicpanelr2_defconfig
arm                  randconfig-c002-20220113
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
sparc                               defconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
riscv                randconfig-r042-20220113
arc                  randconfig-r043-20220114
arc                  randconfig-r043-20220113
s390                 randconfig-r044-20220113
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
arm                       spear13xx_defconfig
powerpc                      acadia_defconfig
arm                     davinci_all_defconfig
mips                         tb0219_defconfig
powerpc                    socrates_defconfig
powerpc                        icon_defconfig
powerpc                   lite5200b_defconfig
arm                          collie_defconfig
powerpc                     ppa8548_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220113
hexagon              randconfig-r041-20220113
hexagon              randconfig-r045-20220114
riscv                randconfig-r042-20220114
hexagon              randconfig-r041-20220114
s390                 randconfig-r044-20220114

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
