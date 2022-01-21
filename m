Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301A94959E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 07:25:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44D42404B5;
	Fri, 21 Jan 2022 06:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ujT57VbUE9qN; Fri, 21 Jan 2022 06:25:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D239F4049A;
	Fri, 21 Jan 2022 06:25:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E0C2C1BF321
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 06:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCEA4833AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 06:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eDw6YcW_sLlT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 06:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6DD9D833A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 06:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642746294; x=1674282294;
 h=date:from:to:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=r8HYgZ0407wlwejtqd5AEvaLhtSWp/fb76wBjB7tJI4=;
 b=ZJSFzoYthXYSeVk64vWmEPRalkEMDhx6H0i1/zajxEkRPUEgGIYx+szP
 0WR+LV5V+OcC0/LKhRYJYTQRqJbQwC6kPzEuyXeooUK9anAUrK/6wjbao
 afDUOXZzEh+lFsca37aEJExpxndxVffiY4qq4S0hR4xe/vBbk5wGXb6WG
 ANv12AnxUgSQGXUtH4GHkpsKSMENgrpDhZTTcn4CBKA1QkiorHleoxCxv
 gRfpUIdGj3wGaxhdOatNUDLfh3gxONjB6FvYeRHbtEzzP45Evl30nFnfb
 L76rtZpQzdF6PnX6FndiwG7D5bFgebs8q0Worx/RdWkQBvwpqeHlZpbCN g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245528013"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245528013"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 22:24:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="475831500"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 20 Jan 2022 22:24:34 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nAnLd-000Ezr-MT; Fri, 21 Jan 2022 06:24:33 +0000
Date: Fri, 21 Jan 2022 14:24:12 +0800
From: kernel test robot <lkp@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Message-ID: <61ea518c.sdDdpROZOy4H/ipo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
 99b0fd11dd7651865c581688bf13861038e04ea7
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
branch HEAD: 99b0fd11dd7651865c581688bf13861038e04ea7  ice: Fix KASAN error in LAG NETDEV_UNREGISTER handler

elapsed time: 721m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                 randconfig-c004-20220120
i386                          randconfig-c001
sh                               j2_defconfig
arm                           stm32_defconfig
sh                          urquell_defconfig
sh                          sdk7780_defconfig
sh                          landisk_defconfig
arm                           corgi_defconfig
powerpc                       eiger_defconfig
xtensa                       common_defconfig
ia64                      gensparse_defconfig
m68k                       m5208evb_defconfig
powerpc                     rainier_defconfig
arm                           h5000_defconfig
xtensa                generic_kc705_defconfig
sh                          polaris_defconfig
arm                       imx_v6_v7_defconfig
m68k                       m5475evb_defconfig
powerpc                         wii_defconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220119
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a015-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a016-20220117
riscv                randconfig-r042-20220119
s390                 randconfig-r044-20220119
arc                  randconfig-r043-20220119
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
x86_64                        randconfig-c007
arm                  randconfig-c002-20220121
riscv                randconfig-c006-20220121
powerpc              randconfig-c003-20220121
mips                 randconfig-c004-20220121
i386                          randconfig-c001
arm                  randconfig-c002-20220120
riscv                randconfig-c006-20220120
powerpc              randconfig-c003-20220120
mips                 randconfig-c004-20220120
mips                     cu1000-neo_defconfig
mips                      bmips_stb_defconfig
powerpc                       ebony_defconfig
mips                        omega2p_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                     kmeter1_defconfig
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
x86_64               randconfig-a005-20220117
x86_64               randconfig-a006-20220117
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20220120
hexagon              randconfig-r045-20220120
hexagon              randconfig-r041-20220120

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
